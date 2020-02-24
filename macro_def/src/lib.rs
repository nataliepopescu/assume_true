/* Definition of the attribute macro we want to test */

extern crate proc_macro;

use proc_macro::TokenStream;
use proc_macro::TokenTree;
use proc_macro::Group;
use proc_macro::Delimiter;
use std::str::FromStr;

#[proc_macro_attribute]
pub fn assume_true(_attr: TokenStream, item: TokenStream) -> TokenStream {

    // Do nothing
    if _attr.is_empty() {
        return item
    }

    // Hack for potentially parsing/returning original item multiple times
    let item_clone = item.clone();
    let iter = item.into_iter();

    // TODO handle different applications of the macro

    // Get TokenTree for the function body
    let mut old_body = (None, None);
    let mut i = 0;
    for e in iter {
        let is_old_body = match e {
            TokenTree::Group(g) => 
                match g.delimiter() {
                    Delimiter::Brace => Some(g),
                    _ => None,
                },
            _ => None,
        };
        if is_old_body.is_some() {
            old_body = (Some(i), is_old_body);
            break;
        }
        i += 1;
    };

    // Currently does nothing if attribute applied to anything other than a function
    if old_body.1.is_none() {
        return item_clone
    }

    // Import and construct unreachable usage
    let unreachable_import = String::from("\n  use std::hint::unreachable_unchecked;");
    let unreachable_string = String::from("\n    unsafe { unreachable_unchecked() }\n  }");

    // Construct if case
    let mut if_case = String::from("\n  if (");
    if_case.push_str(&_attr.to_string());
    if_case.push_str(") ");
    if_case.push_str(&old_body.1.unwrap().to_string());

    // Construct else case
    let mut else_case = String::from("\n  else {");
    else_case.push_str(&unreachable_string);

    // Construct rewritten function body
    let mut new_body = unreachable_import;
    new_body.push_str(&if_case);
    new_body.push_str(&else_case);

    // Replace old body with new body
    let body_idx = old_body.0.unwrap();
    let iter_clone = item_clone.into_iter();
    i = 0;
    let mut new_func = String::new();
    for mut e in iter_clone {
        if i == body_idx {
            let result = TokenStream::from_str(&new_body);
            match result {
                Ok(res) => 
                    // Hack around lack of TokenStream -> TokenTree conversion
                    e = TokenTree::from(Group::new(Delimiter::Brace, res)),
                Err(err) => panic!("Error parsing newly constructed function body: {:?}\n", err),
            }
        }
        // Hack around borrow checker
        new_func.push_str(&e.to_string());
        new_func.push_str(" ");
        i += 1;
    }

    let result = TokenStream::from_str(&new_func);
    match result {
        Ok(res) => return res,
        Err(err) => panic!("Error parsing newly constructed function: {:?}\n", err),
    }
}
