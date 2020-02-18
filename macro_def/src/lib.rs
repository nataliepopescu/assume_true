/* Definition of the attribute macro we want to test */

extern crate proc_macro;

use proc_macro::TokenStream;

#[proc_macro_attribute]
pub fn assume_true(_attr: TokenStream, item: TokenStream) -> TokenStream {

    let str_item = item.to_string();
    let cond = _attr.to_string();

    println!("\nassumption:\t{}\n", cond);
    println!("\nold_item: \n\n{}\n", str_item);

    // Find the function body
    let mut beg_idx = 0;
    {
        let beg_opt = str_item.find('{');
        if beg_opt.is_some() { beg_idx = beg_opt.unwrap(); }
    }

    println!("beginning index == {}\n", beg_idx);

    let mut end_idx = 0;
    {
        let end_opt = str_item.rfind('}');
        if end_opt.is_some() { end_idx = end_opt.unwrap(); }
    }

    println!("end index == {}\n", end_idx);
    
    // Construct wrapped function
    if beg_idx == 0 || end_idx == 0 { println!("MALFORMED FXN\n"); }

    // Break down original string
    let (decl, remaining) = str_item.split_at(beg_idx + 1);
    let (body, brkt) = remaining.split_at(end_idx - beg_idx - 1); // FIXME find -> (82 - 8), rfind -> (110 - 36); index => 74!!: why??? other #s change loc of bracket

    let unreachable_import = String::from("\n  use std::hint::unreachable_unchecked;");
    let unreachable_string = String::from("\n    unsafe { unreachable_unchecked() }\n  }");

    // Construct if case
    let mut if_case = String::from("\n  if (");
    if_case.push_str(&cond);
    if_case.push_str(") {");

    // Construct else case
    let mut else_case = String::from("\n  } else {"); // panic!(); }");
    else_case.push_str(&unreachable_string);

    // Construct rewritten function
    let mut new_item = String::from(decl);
    new_item.push_str(&unreachable_import);
    new_item.push_str(&if_case);
    new_item.push_str(body);
    new_item.push_str(&else_case);
    new_item.push_str(brkt);

    println!("\nnew_item: \n\n{}\n", new_item);

    new_item.parse().unwrap()

}
