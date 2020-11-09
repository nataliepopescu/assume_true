; ModuleID = 'example.ceoy6l1x-cgu.0'
source_filename = "example.ceoy6l1x-cgu.0"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ""
module asm "            .section .llvmbc,\22e\22"
module asm "            .section .llvmcmd,\22e\22"
module asm "        "

%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@rustc.embedded.module = private constant [6876 x i8] c"BC\C0\DE5\14\00\00\05\00\00\00b\0C0$IY\BEf\EF\D3~-D\012\05\00\00\00\00!\0C\00\00'\06\00\00\0B\02!\00\02\00\00\00\16\00\00\00\07\81#\91A\C8\04I\06\1029\92\01\84\0C%\05\08\19\1E\04\8Bb\80\18E\02B\92\0BB\C4\102\148\08\18K\0A2b\88Hp\C4!#D\12\87\8C\10A\92\02d\C8\08\B1\14 CF\88 \C9\012b\84\18*(*\901|\B0\5C\91 \C6\C8\00\00\00\89 \00\00<\00\00\002\22\88\09 d\85\04\13#\A4\84\04\13#\E3\84\A1\90\14\12L\8C\8C\0B\84\C4L\10\94\C1\08\C0\1C\01\92\80\C4\13\01\09e\00\86\81\88\04\08\C8\98#\00\85B\00\C3\81PR\08\E0@\06ZJ\01\1C\C8\81PC\C1\1CAP\0A\E0y\10\88\A29\020H\00\84\B22\00SEV\1A 3\91A=\B8\C3=\A4\83;\90\83\1E\E8\01;\A4\838\D4\83;\DCC:\B8\039\E8\81\1E\FCB-\B8\C3=\A4\83;\90\C3/\94\02>\8CC9\C0\03=\A4\C3;\B8\03:(\84\BA(\8C\9AI\0C\EA\C1\1D\EE!\1D\DC\81\1C\F4@\0F\D8!\1D\C4\A1\1E\DC\E1\1E\D2\C1\1D\C8A\0F\F4\E0\17j\C1\1D\EE!\1D\DC\81\1C~a\14\DE\C1\1D\E8\A1\1C\F0\81\1EP`\90V\8Ci\9A\90j#n \A0\10\80\E7y\F4\11d\04\04!q\0A\00\00\00Q\18\00\006\00\00\00\1B\F4 \F8\FF\FF\FF\FF\01\90\80\07\08\03\02\1E\E4\E1\1D\C4\A1\1C\DA`\1E\E8!\1C\C6a\1D\80_\F8\05y\A8\87y\A0\87_\80\07yx\07q(\87y\A0\87p\18\87u\00\08z\08\07y8\87r\A0\876\18\07x\A8\07\00\1F\F0\C0\0E\DA\C0\0E\E8\00\D8\E0\08\01\90\00\0BP\05A\10\A4\01\08\E3\C9\06e\10\80%\08\82 \0D@\18O6$\84\00,\C0\19\04A\B0\A1)\02 \01\16\E0\0C\80*\08\82\0D\8A1\00K\10\04A\1A\800\9ElH\8E\01X\803\08\82`\83\81\FC\FF\FF\FF\FF\00\B4\01 m0\92\00X\00:\D8`(\02\B0\00\D5\06b!\00>\D8\800\FF\FF\FF\FF?\00\12@\01u\B0\E1h\02\E0\0C\82 \D8p8\02p\06A\10\00I\18\00\00\08\00\00\00\13\86@\18&\0C\81@L\18\82\C2\980\04\C51\81@\12e\99\10\04\13\02f\82\D08\00\00\130|\C0\03;\F8\05;\A0\836\A8\07wX\07wx\87{p\876`\87tp\87z\C0\8768\07w\A8\87\0DeP\0Em\D0\0EzP\0Em\90\0Ev@\07z`\07t\D0\06\E6\80\07p\A0\07q \07x\D0\06\EE\80\07z\10\07v\A0\07s \07z`\07t\D0\06\B3\10\07r\80\07\1A!L\0E\AD2>\DC\86\B3\CB\AEq\F9\9D\B7\B1c\F8\D6\F8\5Cw\C1\86T\80D\00\00\10\00\00\00\04\00\00\00\06\00H\C0\90J\C2\12\00\00\04\00\00\80\00\00\00\C0\00\00\09\18R\A9A\B6\00\000\00\00\00\04\00\00\00\06\00H\C0\90j\14\A8\06\00\00\02\00\00 \00\00\000\00@\02\86T\B7\90E@\00\14\00\00\00\00\00\00\00\00\00\120\A4\82\87\89\03\02\C0\00\00\00\08\00\00\00\00\00\90\80!\D5H8\1F\10\00\07\00\00\00\00\00\00\00\00\80\04Hl\10(:b\00\00\90\05\02\00\00\0A\00\00\002\1E\98\14\19\11L\90\8C\09&G\C6\04CB\0A\10\F1d\04\A0\04h*\87\22(\812\98\01\A0p\04\80\C6\19\00\00\B1\18\00\00\89\00\00\003\08\80\1C\C4\E1\1Cf\14\01=\88C8\84\C3\8CB\80\07yx\07s\98q\0C\E6\00\0F\ED\10\0E\F4\80\0E3\0CB\1E\C2\C1\1D\CE\A1\1Cf0\05=\88C8\84\83\1B\CC\03=\C8C=\8C\03=\CCx\8Ctp\07{\08\07yH\87pp\07zp\03vx\87p \87\19\CC\11\0E\EC\90\0E\E10\0Fn0\0F\E3\F0\0E\F0P\0E3\10\C4\1D\DE!\1C\D8!\1D\C2a\1Ef0\89;\BC\83;\D0C9\B4\03<\BC\83<\84\03;\CC\F0\14v`\07{h\077h\87rh\077\80\87p\90\87p`\07v(\07v\F8\05vx\87w\80\87_\08\87q\18\87r\98\87y\98\81,\EE\F0\0E\EE\E0\0E\F5\C0\0E\EC0\03b\C8\A1\1C\E4\A1\1C\CC\A1\1C\E4\A1\1C\DCa\1C\CA!\1C\C4\81\1D\CAa\06\D6\90C9\C8C9\98C9\C8C9\B8\C38\94C8\88\03;\94\C3/\BC\83<\FC\82;\D4\03;\B0\C3\0C\C7i\87pX\87rp\83th\07x`\87t\18\87t\A0\87\19\CES\0F\EE\00\0F\F2P\0E\E4\90\0E\E3@\0F\E1 \0E\ECP\0E3 (\1D\DC\C1\1E\C2A\1E\D2!\1C\DC\81\1E\DC\E0\1C\E4\E1\1D\EA\01\1Ef\18Q8\B0C:\9C\83;\CCP$v`\07{h\077`\87wx\07x\98QL\F4\90\0F\F0P\0E3\1Ej\1E\CAa\1C\E8!\1D\DE\C1\1D~\01\1E\E4\A1\1C\CC!\1D\F0a\06T\85\838\CC\C3;\B0C=\D0C9\FC\C2<\E4C;\88\C3;\B0\C3\8C\C5\0A\87y\98\87w\18\87t\08\07z(\07r\98\81\5C\E3\10\0E\EC\C0\0E\E5P\0E\F30#\C1\D2A\1E\E4\E1\17\D8\E1\1D\DE\01\1EfH\19;\B0\83=\B4\83\1B\84\C38\8CC9\CC\C3<\B8\C19\C8\C3;\D4\03<\CCH\B4q\08\07v`\07q\08\87qX\87\19\DB\C6\0E\EC`\0F\ED\E0\06\F0 \0F\E50\0F\E5 \0F\F6P\0En\10\0E\E30\0E\E50\0F\F3\E0\06\E9\E0\0E\E4P\0E\F8\00\00\00\00y \00\00\1B\02\00\00r\1EH C\88\0C\19\09r2H #\81\8C\91\91\D1D\A0\10(d<12B\8E\90!\A3\F8\07|p\8E\01\00\00\C9\22)cP\06`p4BT\18DB\0C\05S\14\C3\00\06\C6\10$Hb\80A\01\06\84\1B\80\C1\18 \0BM\18\0D\11\98\011\98A\1B\0C`\10\04g\00\06C!\90\03a\14PIC LevelRtLibUseGOTDebug Info Versionsrc/lib.rs/benchdata/rust/assume_true/exampleclang LLVM (rustc version 1.46.0-dev)e7ee8382cedb74b3e032db1a041f7292example&[u8; 320000]u8&mut [u8; 320000]inputoutputiter<unknown>coreopsrangeRange<usize>startusizeendIdx4be1f8843c4abc6e6b0755e50f9e3873__nextvali&mut [u8]data_ptr*const u8length7596319ecf86f60af9b48d8c05ebf9f7&[u8]585202bcfc7dfd1dd72e8befe2491ee4self/benchdata/rust/rust/src/libcore/iter/range.rscccabf57d1b2ffaf9873830757e526c9&mut core::ops::range::Range<usize>{{impl}}next<usize>_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4dbca16b0a93703cEoptionOption<usize>NoneTedae92f6aa2d4d3d8225245fd9f15299::NoneSome__0edae92f6aa2d4d3d8225245fd9f15299::Someedae92f6aa2d4d3d8225245fd9f15299_variant_partu64edae92f6aa2d4d3d8225245fd9f15299nA/benchdata/rust/rust/src/libcore/cmp.rsa4329b033234040c2caa81654f112278cmpimplslt_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h697d7385366f3475Ebool&usizeother\00\C6\96\01\00\00\00\00\000\820)#\08\D32\8201#\08S3\82\80\1C#\08c\00\8D L\CE\08\02\82\8C  \C9PS\C0\C1\82\11\00\00\10\C4\02\00\00\00\00\04\000V\11\AC\82<\F8O3\95t\DC\03\1A\A4\81<\E0\0FJ\E0\0F\C0\01 \92\0A,\01\A8\04\00L%\1D0\B1\07|\D0\12\F1\18\D0D<\06\00\07\80H*\C4\02p\13\000\C3\00\0AA(\CC0\84\82 \0A3\0C\A10\8C\C2@\05@\14\000\030P\01\10Ep\0C6\00\002\CF\01\90\81\82\00\070\CD \90\020CP\0B#EB\00\00\00@\0B H\BA\02\02\00\B6\00\00\00\00L\D4\00O\02\00\C0-\80\02(\00\00\10L\D4\00\CF\02\00\C0-\80\02(\00\00\10\0CT\00\0F\00\00\83\0D\00\00\0D6\00\BB\10\0D6\00\BC \CDs\00dP\81\02p\00\135@C\E9\02@\0E\BE\00\0A\A0\00\00\000Q\034\96.\00\E4\E0\0B\A0\00\0A\A0\00\00\C0\0C\C2/\80\C3d\03p\F9\C2\0C\818\8C\14\09\D3\A4\0B@/\00 \01\0A\00\10\0E\000\0E\180]`L'\18\C6D\0D\F0x\00\00\D0\02(\80\02\00\00\C1D\0D\D0t\BA\00\AC\C39\80\02(\00\00\00L\D4\00\CD\A7\0B\C0:\F8\02(\80\02(\00\000\83\80\0E\E90R$L\9C.\00\00\00\12\A0\00\00\EA\00\00\B1\00\06\C0t\84\01\82\04\00\0A\D3\11\06\08\12\A0\00\0A\135@\D3\E9\02\10\0F\E7\00\0A\A0\00\00\000Q\034\9F.\00\F1\E0\0B\A0\00\0A\A0\00\00\C0\0C\82;\BC\C3H\910\85\81.\00\00\00\12\A0\00\00\F0\00\00\B1 \06\C0@\05@\06@P\06\135\C0c\06\00\00\90\03(\80\02\00\00\C1p\89\B0\0Ac \0F\F83\0F\01\00\0C6\00\BB\E0\0C6\00\F5 \0D6\00\F6p\06\83\0D\C0.\A8\C1d\03\D0\06\BE0C\90\0F#E\C2\C4\06\BA\00\98\04\00\12\A0\00\00\B1\00\00\FA\E0\06\C0D\0D\D0\B0\81.\00$\B1\0F \01\0A\00p\0A\C0D\0D\D0\C0\81.\00\FF\E0\0B\A0\00\0A\A0\00\00\C0\0CA?\8C\14\09\D3\1B\E8\02`\12\00H\80\02\00\F8\03\00\E8C\1C\00\135@\F3\06\BA\00\90\C4?\80\04(\00\00*\003\08\FC\00\12\F3\1C\00\19\CC\01(\00\070Q\034\80.\00\F8 \12\A0\00\0A\00(\00\C0H\910\07\80.\00\F8\00\80\04(\00@H\00\80>\C8\C1H\CC\10\90\C4H\910\AD\81.\00\F8\00\80\04(\00@I\00\00@\07\C0\0C\82I\CC\C3L\84\00\9C\040\5C\22\A8B\1D\C8\83\FF\F8\02\00 3\08\F4\90\12\93\0D\80\1D\F8\C2\0C\C1J\0CT\00w\00\04x0\D8\00\ECB\1E\0C6\00.\A1\07\83\0D\C0K\9C\C1<\07@\06}\80\00\020Q\03<~\00\00\80/\80\02(\00\00\10\CC0\C4\84L\C8\C4L\84\00\CC\040\5C\22\B0\C2\18\B4D<\062\11\00\C0p\89\C0\0A\7F\D0\12\F1\18\C8\84\00\003\085a\13\87\0B\00\C7q\1C'\06\1C\C7\B9\04(\F8\85j\B8\81\1B\B8\81\1B@n \06\A0\80\06\9CN\C0\03<\B8\81\18\A0\01\1A\98\02?\88\04\1A\A0\01\A7\13\16\07\0F\FC \12h\A0\13z\00\0A\FC \12h\00\16z`\0F\E4\80\06h\E0\06n\E0\06\9CY\A0\04Jpf\81\12h\C0\0A\22\C1\16\1CX\A0\81\1B\90\03\1A\B8\01\A7\07n\E0\06n`\0A\F6@\07n\A0\0E\EA #\81\09\CA\88\8D\CD\AE\CD\A5\ED\8D\AC\8E\AD\CC\C5\8C-\ECln\94\81\15Z\C1\15rac\B3ks!\13;s\19\AB\1B%@\05\00\A9\18\00\00\0B\00\00\00\0B\0Ar(\87w\80\07zXp\98C=\B8\C38\B0C9\D0\C3\82\E6\1C\C6\A1\0D\E8A\1E\C2\C1\1D\E6!\1D\E8!\1D\DE\C1\1D\00\D1\10\00\00\06\00\00\00\07\CC<\A4\83;\9C\03;\94\03=\A0\83<\94C8\90\C3\01\00\00\00a \00\00y\00\00\00\13\04A,\10\00\00\00\01\00\00\00\04\8D\00\00\F10\00\00-\00\00\00\22G\C8\90Q\06\84\05\12\00\00\00c_style_size_fixed\00\00\B3\8A`'d\A1qf\15\C1N\C8B\93\CC*\02\9E\90\85\C6\99U\04=!\0BM\B1J:f\01'\00Y`~\82\010\00DR!\16\00\B3\00\80\0D\03\80\0B\B9\B0\89\10\00\9F\00\C6%BO0\B2\C0\E0B\00\00\E3\12\A1'\1AY`rA\00\80q\89\C0\13\8E,4\E4\00\00\C8\B8D\D8\89L\16\1A_\00\00d\5C\22\E8\84&\0B\8D/\00\002.\11rb\93\85\C6\17\00\00\D9`\80EX\88\C5X\90EYL\10\86h\820H\00\00\00\00#\06\07\00\82`\F09\EE\FE\FF\FF?\D4\FB\FF\FF\FF\00\F7\FF\FF\FF\C3\8CA\01\00=\01\00#\06\07\00\82`\F09\ED\FE\FF\FF?\D0\FB\FF\FF\FF\00\F7\FF\FF\FF\C3\84\010bp\00 \08\06\9F\03\FB\FF\FF\FF\C3\BC\FF\FF\FF\0Fo\FF\FF\FF?\CC\18\14\00\C0\13\00\D0\85A`\98.\0CD\D3\8C\18 \08\08\82A$\09\C13\CC\18\14N\92\13\000bp\00 \08\06\1F\14\FB\FF\FF\FF\03\BD\FF\FF\FF\0Fr\FF\FF\FF?\CC\18\14\00\B0\13\000bp\00 \08\06\1F\14\FB\FF\FF\FF\83\BC\FF\FF\FF\0Fr\FF\FF\FF?\CC\18\14\00\90\13\000bp\00 \08\06\1F\14\FB\FF\FF\FFC\BD\FF\FF\FF\0Fq\FF\FF\FF?\CC\18\14\00\C0\13\00\A03\06\05$\F4\04\00\84\03\01\00\09\00\00\00\16Q \CDCMVq \CDCMu~\00\854\01\D1d\12\86CM\0F5\19\05\E2P\D3CM5\0E\00\011\00\00\02\00\00\00[\04\80'\00\00\00\00\00\00\00\00a \00\00\84\00\00\00\13\04A,\10\00\00\00\01\00\00\00\04\8D\00\00\F10\00\00.\00\00\00\22G\C8\90Q\06\04\07\18\00\00\00c_style_input_size_fixed\B3\8A`'d\C1rf\15\C1N\C8\82\95\CC*\02\9E\90\05\CB\99U\04=!\0BV\B1J:f\01'\00Y\A8~\A2\020\00DR!\16\00\B3\00\80\0D\03\80\0B\EB\B0\89\10\00\9F\00\C6%BO0\B2P\E1B\00\00\E3\12\A1'\1AY\A8\D6A\00\80q\89\C0\13\8E,X\E4\00\00\C8\B8D\D8\89L\16,_\00\00d\5C\22\E8\84&\0B\96/\00\002.\11rb\93\05\CB\17\00\00\D9`\80EX\88\C5X\90EYL\10\86h\82pH\13\04d\02#\06\07\00\82`\F0=\EF\FE\FF\FF?\D8\FB\FF\FF\FF\10\F7\FF\FF\FF\C3\8CA\01\00=\01\00#\06\07\00\82`\F0=\EE\FE\FF\FF?\D4\FB\FF\FF\FF\A0\F6\FF\FF\FF\C3\84\010bp\00 \08\06\DF\D3\EE\FF\FF\FFC\BD\FF\FF\FF\0Fi\FF\FF\FF?L\18\00#\06\07\00\82`\F0=\B1\FF\FF\FF?\D0\FB\FF\FF\FF\00\F7\FF\FF\FF\C3\8CA\01\00<\01\00\DD\18\86\A6\E9\C2P8\CE\88\01\82\80 \18D\93\10@\C3\8CAq%9\01\00#\06\07\00\82`\F0E\B2\FF\FF\FF?\D4\FB\FF\FF\FF0\F7\FF\FF\FF\C3\8CA\01\00;\01\00#\06\07\00\82`\F0E\B2\FF\FF\FF?\CC\FB\FF\FF\FF0\F7\FF\FF\FF\C3\8CA\01\009\01\00#\06\07\00\82`\F0E\B2\FF\FF\FF?\D8\FB\FF\FF\FF \F7\FF\FF\FF\C3\8CA\01\00<\01\00:cPdBO\00@8\10\00\00\00\0C\00\00\00&\818\D4\F4P\93O[D\814\0F5\99\C5\814\0F5\D5\B9M \0E5=\D4\E4\D7\07PH\13\10MV\A18\D4\F4P\93O\D78\00\00\011\00\00\02\00\00\00[\04\80'\00\00\00\00\00\00\00\00a \00\00\A9\00\00\00\13\04C,\10\00\00\00\01\00\00\00\04\8D\00\00\F10\00\007\00\00\00\22G\C8\90Q\06D\07\19\00\00\00c_style_output_size_fixed\00\00\00\B3\8A`'d\E1\0C\9CYE\B0\13\B2p\06\C9\AC\22\E0\09Y8\03gV\11\F4\84,\9CA\B1J:f\01'\00Y0\83\B00\03\00\03@$\15b\01@\0B\00\D0y \81\0C!2d$\F4\198\E8\04\A0\F3\87A\15|\C2\86\01\88\87\5C\D8D\08\00X\00\E3\12\A1'\18Y0\83x\08\00`\5C\22\F4D#\0Bf\90\0B\02\00\8CK\04\9Epd\E1\0C\C8\01\00\90q\89\B0\13\99,\9C\81/\00\002.\11tB\93\853\F0\05\00@\C6%BNl\B2p\06\BE\00\00\C8\06C,\C6\82,\CA\C2,\CEb\82pD\13\04D\9A \0C\13\00\00\00#\06\07\00\82`\F0=\ED\FE\FF\FF?\D0\FB\FF\FF\FF\A0\F6\FF\FF\FF\C3\8CA\01\00=\01\00#\06\07\00\82`\F0=\EC\FE\FF\FF?\D0\FB\FF\FF\FF\90\F6\FF\FF\FF\C3\84\010bp\00 \08\06\DF\B3\EE\FF\FF\FF\C3\BC\FF\FF\FF\0Fq\FF\FF\FF?L\18\00#\06\07\00\82`\F0=\B1\FF\FF\FF?\C8\FB\FF\FF\FF\00\F7\FF\FF\FF\C3\8CA\01\00<\01\00#\06\07\00\82`\F0=\B1\FF\FF\FF?\88\FD\FF\FF\FF\10\F7\FF\FF\FF\C3\8CA\01\00\AB\E0\13\C0p\C3\D0\80\C1\8CA\11\8F\01\1D\B0\C2O\00\B3\0CB\10\CC\18\14\F9\93\AC\82O\00\DD\18\0A\C7\E9\C2@<\CF\88\01\82\80 \18DT \18\C4\8CA\81\06IN\00\C0\88\C1\01\80 \18|\D2\EC\FF\FF\FF\0F\F4\FE\FF\FF?\D0\FD\FF\FF\FF0cP\00\C0N\00\C0\88\C1\01\80 \18|\D2\EC\FF\FF\FF\0F\F2\FE\FF\FF?\D0\FD\FF\FF\FF0cP\00@N\00\C0\88\C1\01\80 \18|\D2\EC\FF\FF\FF\0F\F5\FE\FF\FF?\CC\FD\FF\FF\FF0cP\00\00O\00\C0\88\C1\01\80 \18|\D2\EC\FF\FF\FF\0Fe\FF\FF\FF?\D0\FD\FF\FF\FF0cP\00\C0*\F8\040K \CC\18\14j \F4\04\00\E8\84\01\10\0E\04\10\00\00\00\17\D0\04\C1\EE?\11q\10\C0@D\07PH\13\10M&q \CDCM~m\11\07\D2<\D4\E4\D36a8\D4\F4P\93Y$H\F3P\93O\D7\F9\09\0CA\90\DB\05\E2P\D3CM5\0E\00\00\011\00\00\02\00\00\00[\04\80'\00\00\00\00\00\00\00\00a \00\00\B2\00\00\00\13\04C,\10\00\00\00\01\00\00\00\04\8D\00\00\F10\00\006\00\00\00\22G\C8\90Q\06\04\06\14\00\00\00c_style_unknown_size\B3\8A`'d\01\0F\9CYE\B0\13\B2\80\07\C9\AC\22\E0\09Y\C0\03gV\11\F4\84,\E0A\B1J:f\01'\00Y\B8\83\B0\B8\03\00\03@$\15b\01@\0B\00\D0y \81\0C!2d$4\1E8\E8\04\A0\F3\87A\15|\C2\86\01\88\87u\D8D\08\00X\00\E3\12\A1'\18Y\B8\83x\08\00`\5C\22\F4D#\0Bw\B0\0E\02\00\8CK\04\9Epd\01\0F\C8\01\00\90q\89\B0\13\99,\E0\81/\00\002.\11tB\93\05<\F0\05\00@\C6%BNl\B2\80\07\BE\00\00\C8\06C,\C6\82,\CA\C2,\CEb\82pD\13\04D\9A \1C\D3\04\01\A1\00\00\00\00#\06\07\00\82`\F0A\EE\FE\FF\FF?\D4\FB\FF\FF\FF\B0\F6\FF\FF\FF\C3\8CA\01\00=\01\00#\06\07\00\82`\F0A\ED\FE\FF\FF?\D4\FB\FF\FF\FF\A0\F6\FF\FF\FF\C3\84\010bp\00 \08\06\1F\C4\EE\FF\FF\FF\03\BD\FF\FF\FF\0Fk\FF\FF\FF?L\18\00#\06\07\00\82`\F0A\EB\FE\FF\FF?\D0\FB\FF\FF\FF\A0\F6\FF\FF\FF\C3\84\010bp\00 \08\06\1F$\FB\FF\FF\FF\C3\BC\FF\FF\FF\0Fq\FF\FF\FF?\CC\18\14\00\C0\13\000bp\00 \08\06\1F$\FB\FF\FF\FF\C3\D8\FF\FF\FF\0Fr\FF\FF\FF?\CC\18\14\00\B0\0A>\01\0C7\10\0E\18\CC\18\14\F1\18\D0\01+\FC\040\CB \04\C1\8CA\91?\C9*\F8\04\D0\8D\C1x\9En\0C\05\04\8D\18 \08\08\82AT\05\C2A\CC\18\14y\90\E4\04\00\8C\18\1C\00\08\82\C17\D1\FE\FF\FF\FFP\EF\FF\FF\FFC\DD\FF\FF\FF\0F3\06\05\00\EC\04\00\8C\18\1C\00\08\82\C17\D1\FE\FF\FF\FF0\EF\FF\FF\FFC\DD\FF\FF\FF\0F3\06\05\00\E4\04\00\8C\18\1C\00\08\82\C17\D1\FE\FF\FF\FF`\EF\FF\FF\FF\03\DD\FF\FF\FF\0F3\06\05\00\F0\04\00\8C\18\1C\00\08\82\C17\D1\FE\FF\FF\FF`\F6\FF\FF\FFC\DD\FF\FF\FF\0F3\06\05\00\AC\82O\00\B3\04\C2\8CA\B1\07BO\00\80N\18\00\E1@\00\00\13\00\00\006\818\D4\F4P\93O\1B\05\E2P\D3CM~}\01M\10\EC\FE\13\11\07\01\0CDt\00\854\01\D1d\12\07\D2<\D4\E4\D7\16q \CDCM>m\17\09\D2<\D4\E4\D3u~\02C\10\E4\86\A18\D4\F4P\93O\D78\00\00\00\011\00\00\02\00\00\00[\04\80'\00\00\00\00\00\00\00\00\A1 \00\00\15\00\00\00\A3\04\C7P\01 \AA\00!2\84\88\10!B\C4\08\89\1A@\88\0C!\22D\88\101BR\0E\10\22c\84\C4\BC D\86\88\11\12\F2\80\10\19BRZ\10\22d\84\0A\00 \80\00\08\0A*\00 \80\00\08\0AJ\008\80\00\08\0Aj\008\80\00\08\0A\00\00q \00\00\05\00\00\002\0E\10\22\84\00\AC\07\18p\8A\80\02\AD\098\80\AD\00\00\8B\8A\FAUu\DC\1D\D8\F1\F7s\0FGo\F5\C5\87\FA\85yu\1D\F2\99V\D7T\00e\0C\00\00C\00\00\00\12\03\94 \02\00\00\00\02\00\00\00\91\00\00\00.\00\00\00L\00\00\00\01\00\00\00X\00\00\00\00\00\00\00X\00\00\00\07\00\00\00\00\01\00\00\00\00\00\00\BF\00\00\00\18\00\00\00\D7\00\00\00\16\00\00\00\12\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\12\00\00\00\FF\FF\FF\FF\004\00\00\12\00\00\00\18\00\00\00\12\00\00\00\18\00\00\00\FF\FF\FF\FF\004\00\00*\00\00\00\19\00\00\00*\00\00\00\19\00\00\00\FF\FF\FF\FF\004\00\00C\00\00\00\14\00\00\00C\00\00\00\14\00\00\00\FF\FF\FF\FF\004\00\00W\00\00\00\19\00\00\00W\00\00\00\19\00\00\00\FF\FF\FF\FF\08,\00\00p\00\00\00\13\00\00\00p\00\00\00\13\00\00\00\FF\FF\FF\FF\084\00\00\83\00\00\00\0E\00\00\00\83\00\00\00\0E\00\00\00\FF\FF\FF\FF\08,\00\00\00\00\00\00]\0C\00\00?\00\00\00\12\03\94\ED\01\00\00\00c_style_size_fixedc_style_input_size_fixedc_style_output_size_fixedc_style_unknown_sizellvm.memcpy.p0i8.p0i8.i64rust_eh_personalityllvm.dbg.value9.0.1 3a0b17654ab1f63b7ef1b49c8c3d4d01214c93a4x86_64-unknown-linux-gnuexample.ceoy6l1x-cgu.0\00\00\00\00\00\00\00", section ".llvmbc"
@rustc.embedded.cmdline = private global [0 x i8] zeroinitializer, section ".llvmcmd"

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_size_fixed([320000 x i8]* noalias nocapture readonly align 1 dereferenceable(320000) %input, [320000 x i8]* nocapture align 1 dereferenceable(320000) %output) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !6 {
start:
  call void @llvm.dbg.value(metadata [320000 x i8]* %input, metadata !18, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata [320000 x i8]* %output, metadata !19, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !20, metadata !DIExpression(DW_OP_deref)), !dbg !40
  %output14 = getelementptr inbounds [320000 x i8], [320000 x i8]* %output, i64 0, i64 0
  %input15 = getelementptr inbounds [320000 x i8], [320000 x i8]* %input, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %output14, i8* nonnull align 1 %input15, i64 320000, i1 false), !dbg !41
  call void @llvm.dbg.value(metadata i32 undef, metadata !33, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 undef, metadata !37, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 undef, metadata !20, metadata !DIExpression(DW_OP_deref)), !dbg !40
  ret void, !dbg !44
}

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_input_size_fixed([320000 x i8]* noalias nocapture readonly align 1 dereferenceable(320000) %input, [0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !45 {
start:
  call void @llvm.dbg.value(metadata [320000 x i8]* %input, metadata !54, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !55, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !64
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !55, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !64
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !56, metadata !DIExpression(DW_OP_deref)), !dbg !65
  %output.014 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 0
  %input15 = getelementptr inbounds [320000 x i8], [320000 x i8]* %input, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %output.014, i8* nonnull align 1 %input15, i64 320000, i1 false), !dbg !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !58, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 undef, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 undef, metadata !56, metadata !DIExpression(DW_OP_deref)), !dbg !65
  ret void, !dbg !69
}

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_output_size_fixed([0 x i8]* noalias nocapture nonnull readonly align 1 %input.0, i64 %input.1, [320000 x i8]* nocapture align 1 dereferenceable(320000) %output) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !70 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %input.0, metadata !78, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !88
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !78, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !88
  call void @llvm.dbg.value(metadata [320000 x i8]* %output, metadata !79, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !80, metadata !DIExpression(DW_OP_deref)), !dbg !89
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !90, metadata !DIExpression()), !dbg !119
  %0 = icmp eq i64 %input.1, 0, !dbg !121
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !135

bb7.preheader:                                    ; preds = %start
  %input.015 = getelementptr inbounds [0 x i8], [0 x i8]* %input.0, i64 0, i64 0
  %output14 = getelementptr inbounds [320000 x i8], [320000 x i8]* %output, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %output14, i8* nonnull align 1 %input.015, i64 %input.1, i1 false), !dbg !136
  call void @llvm.dbg.value(metadata i32 undef, metadata !82, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 undef, metadata !80, metadata !DIExpression(DW_OP_deref)), !dbg !89
  call void @llvm.dbg.value(metadata i32 undef, metadata !90, metadata !DIExpression()), !dbg !119
  br label %bb5, !dbg !139

bb5:                                              ; preds = %bb7.preheader, %start
  ret void, !dbg !139
}

; Function Attrs: nounwind nonlazybind uwtable
define void @c_style_unknown_size([0 x i8]* noalias nocapture nonnull readonly align 1 %input.0, i64 %input.1, [0 x i8]* nocapture nonnull align 1 %output.0, i64 %output.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !140 {
start:
  call void @llvm.dbg.value(metadata [0 x i8]* %input.0, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !154
  call void @llvm.dbg.value(metadata i64 %input.1, metadata !144, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !154
  call void @llvm.dbg.value(metadata [0 x i8]* %output.0, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !154
  call void @llvm.dbg.value(metadata i64 %output.1, metadata !145, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !154
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !146, metadata !DIExpression(DW_OP_deref)), !dbg !155
  call void @llvm.dbg.value(metadata { i64, i64 }* undef, metadata !90, metadata !DIExpression()), !dbg !156
  %0 = icmp eq i64 %input.1, 0, !dbg !158
  br i1 %0, label %bb5, label %bb7.preheader, !dbg !160

bb7.preheader:                                    ; preds = %start
  %input.015 = getelementptr inbounds [0 x i8], [0 x i8]* %input.0, i64 0, i64 0
  %output.014 = getelementptr inbounds [0 x i8], [0 x i8]* %output.0, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %output.014, i8* nonnull align 1 %input.015, i64 %input.1, i1 false), !dbg !161
  call void @llvm.dbg.value(metadata i32 undef, metadata !148, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 undef, metadata !152, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i32 undef, metadata !146, metadata !DIExpression(DW_OP_deref)), !dbg !155
  call void @llvm.dbg.value(metadata i32 undef, metadata !90, metadata !DIExpression()), !dbg !156
  br label %bb5, !dbg !164

bb5:                                              ; preds = %bb7.preheader, %start
  ret void, !dbg !164
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1, !2}
!llvm.dbg.cu = !{!3}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !4, producer: "clang LLVM (rustc version 1.46.0-dev)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !5)
!4 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/example")
!5 = !{}
!6 = distinct !DISubprogram(name: "c_style_size_fixed", scope: !8, file: !7, line: 12, type: !9, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !17)
!7 = !DIFile(filename: "src/lib.rs", directory: "/benchdata/rust/assume_true/example", checksumkind: CSK_MD5, checksum: "e7ee8382cedb74b3e032db1a041f7292")
!8 = !DINamespace(name: "example", scope: null)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !16}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 320000]", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2560000, align: 8, elements: !14)
!13 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 320000)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [u8; 320000]", baseType: !12, size: 64, align: 64, dwarfAddressSpace: 0)
!17 = !{!18, !19, !20, !33, !35, !37}
!18 = !DILocalVariable(name: "input", arg: 1, scope: !6, file: !7, line: 12, type: !11)
!19 = !DILocalVariable(name: "output", arg: 2, scope: !6, file: !7, line: 12, type: !16)
!20 = !DILocalVariable(name: "iter", scope: !21, file: !7, line: 13, type: !22, align: 8)
!21 = distinct !DILexicalBlock(scope: !6, file: !7, line: 13, column: 5)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !24, file: !23, size: 128, align: 64, elements: !27, templateParams: !31, identifier: "4be1f8843c4abc6e6b0755e50f9e3873")
!23 = !DIFile(filename: "<unknown>", directory: "")
!24 = !DINamespace(name: "range", scope: !25)
!25 = !DINamespace(name: "ops", scope: !26)
!26 = !DINamespace(name: "core", scope: null)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !22, file: !23, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !22, file: !23, baseType: !29, size: 64, align: 64, offset: 64)
!31 = !{!32}
!32 = !DITemplateTypeParameter(name: "Idx", type: !29)
!33 = !DILocalVariable(name: "__next", scope: !34, file: !7, line: 13, type: !29, align: 8)
!34 = distinct !DILexicalBlock(scope: !21, file: !7, line: 13, column: 14)
!35 = !DILocalVariable(name: "val", scope: !36, file: !7, line: 13, type: !29, align: 8)
!36 = distinct !DILexicalBlock(scope: !34, file: !7, line: 13, column: 9)
!37 = !DILocalVariable(name: "i", scope: !38, file: !7, line: 13, type: !29, align: 8)
!38 = distinct !DILexicalBlock(scope: !34, file: !7, line: 13, column: 14)
!39 = !DILocation(line: 0, scope: !6)
!40 = !DILocation(line: 0, scope: !21)
!41 = !DILocation(line: 14, column: 9, scope: !38)
!42 = !DILocation(line: 0, scope: !34)
!43 = !DILocation(line: 0, scope: !38)
!44 = !DILocation(line: 16, column: 2, scope: !6)
!45 = distinct !DISubprogram(name: "c_style_input_size_fixed", scope: !8, file: !7, line: 21, type: !46, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !53)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !11, !48}
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [u8]", file: !23, size: 128, align: 64, elements: !49, templateParams: !5, identifier: "7596319ecf86f60af9b48d8c05ebf9f7")
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !48, file: !23, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !48, file: !23, baseType: !29, size: 64, align: 64, offset: 64)
!53 = !{!54, !55, !56, !58, !60, !62}
!54 = !DILocalVariable(name: "input", arg: 1, scope: !45, file: !7, line: 21, type: !11)
!55 = !DILocalVariable(name: "output", arg: 2, scope: !45, file: !7, line: 21, type: !48)
!56 = !DILocalVariable(name: "iter", scope: !57, file: !7, line: 22, type: !22, align: 8)
!57 = distinct !DILexicalBlock(scope: !45, file: !7, line: 22, column: 5)
!58 = !DILocalVariable(name: "__next", scope: !59, file: !7, line: 22, type: !29, align: 8)
!59 = distinct !DILexicalBlock(scope: !57, file: !7, line: 22, column: 14)
!60 = !DILocalVariable(name: "val", scope: !61, file: !7, line: 22, type: !29, align: 8)
!61 = distinct !DILexicalBlock(scope: !59, file: !7, line: 22, column: 9)
!62 = !DILocalVariable(name: "i", scope: !63, file: !7, line: 22, type: !29, align: 8)
!63 = distinct !DILexicalBlock(scope: !59, file: !7, line: 22, column: 14)
!64 = !DILocation(line: 0, scope: !45)
!65 = !DILocation(line: 0, scope: !57)
!66 = !DILocation(line: 23, column: 9, scope: !63)
!67 = !DILocation(line: 0, scope: !59)
!68 = !DILocation(line: 0, scope: !63)
!69 = !DILocation(line: 25, column: 2, scope: !45)
!70 = distinct !DISubprogram(name: "c_style_output_size_fixed", scope: !8, file: !7, line: 38, type: !71, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !77)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !16}
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !23, size: 128, align: 64, elements: !74, templateParams: !5, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !73, file: !23, baseType: !51, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !73, file: !23, baseType: !29, size: 64, align: 64, offset: 64)
!77 = !{!78, !79, !80, !82, !84, !86}
!78 = !DILocalVariable(name: "input", arg: 1, scope: !70, file: !7, line: 38, type: !73)
!79 = !DILocalVariable(name: "output", arg: 2, scope: !70, file: !7, line: 38, type: !16)
!80 = !DILocalVariable(name: "iter", scope: !81, file: !7, line: 39, type: !22, align: 8)
!81 = distinct !DILexicalBlock(scope: !70, file: !7, line: 39, column: 5)
!82 = !DILocalVariable(name: "__next", scope: !83, file: !7, line: 39, type: !29, align: 8)
!83 = distinct !DILexicalBlock(scope: !81, file: !7, line: 39, column: 14)
!84 = !DILocalVariable(name: "val", scope: !85, file: !7, line: 39, type: !29, align: 8)
!85 = distinct !DILexicalBlock(scope: !83, file: !7, line: 39, column: 9)
!86 = !DILocalVariable(name: "i", scope: !87, file: !7, line: 39, type: !29, align: 8)
!87 = distinct !DILexicalBlock(scope: !83, file: !7, line: 39, column: 14)
!88 = !DILocation(line: 0, scope: !70)
!89 = !DILocation(line: 0, scope: !81)
!90 = !DILocalVariable(name: "self", arg: 1, scope: !91, file: !92, line: 504, type: !113)
!91 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4dbca16b0a93703cE", scope: !93, file: !92, line: 504, type: !96, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !117, retainedNodes: !114)
!92 = !DIFile(filename: "/benchdata/rust/rust/src/libcore/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "cccabf57d1b2ffaf9873830757e526c9")
!93 = !DINamespace(name: "{{impl}}", scope: !94)
!94 = !DINamespace(name: "range", scope: !95)
!95 = !DINamespace(name: "iter", scope: !26)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !113}
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !99, file: !23, size: 128, align: 64, elements: !100, identifier: "edae92f6aa2d4d3d8225245fd9f15299")
!99 = !DINamespace(name: "option", scope: !26)
!100 = !{!101}
!101 = !DICompositeType(tag: DW_TAG_variant_part, scope: !99, file: !23, size: 128, align: 64, elements: !102, templateParams: !105, identifier: "edae92f6aa2d4d3d8225245fd9f15299_variant_part", discriminator: !111)
!102 = !{!103, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !101, file: !23, baseType: !104, size: 128, align: 64, extraData: i64 0)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !98, file: !23, size: 128, align: 64, elements: !5, templateParams: !105, identifier: "edae92f6aa2d4d3d8225245fd9f15299::None")
!105 = !{!106}
!106 = !DITemplateTypeParameter(name: "T", type: !29)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !101, file: !23, baseType: !108, size: 128, align: 64, extraData: i64 1)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !98, file: !23, size: 128, align: 64, elements: !109, templateParams: !105, identifier: "edae92f6aa2d4d3d8225245fd9f15299::Some")
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !108, file: !23, baseType: !29, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !23, baseType: !112, size: 64, align: 64, flags: DIFlagArtificial)
!112 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!114 = !{!90, !115}
!115 = !DILocalVariable(name: "n", scope: !116, file: !92, line: 510, type: !29, align: 8)
!116 = distinct !DILexicalBlock(scope: !91, file: !92, line: 510, column: 13)
!117 = !{!118}
!118 = !DITemplateTypeParameter(name: "A", type: !29)
!119 = !DILocation(line: 0, scope: !91, inlinedAt: !120)
!120 = distinct !DILocation(line: 39, column: 14, scope: !83)
!121 = !DILocation(line: 1137, column: 52, scope: !122, inlinedAt: !134)
!122 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h697d7385366f3475E", scope: !124, file: !123, line: 1137, type: !127, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !131)
!123 = !DIFile(filename: "/benchdata/rust/rust/src/libcore/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "a4329b033234040c2caa81654f112278")
!124 = !DINamespace(name: "{{impl}}", scope: !125)
!125 = !DINamespace(name: "impls", scope: !126)
!126 = !DINamespace(name: "cmp", scope: !26)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !130, !130}
!129 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !29, size: 64, align: 64, dwarfAddressSpace: 0)
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "self", arg: 1, scope: !122, file: !123, line: 1137, type: !130)
!133 = !DILocalVariable(name: "other", arg: 2, scope: !122, file: !123, line: 1137, type: !130)
!134 = distinct !DILocation(line: 505, column: 12, scope: !91, inlinedAt: !120)
!135 = !DILocation(line: 505, column: 9, scope: !91, inlinedAt: !120)
!136 = !DILocation(line: 40, column: 9, scope: !87)
!137 = !DILocation(line: 0, scope: !83)
!138 = !DILocation(line: 0, scope: !87)
!139 = !DILocation(line: 42, column: 2, scope: !70)
!140 = distinct !DISubprogram(name: "c_style_unknown_size", scope: !8, file: !7, line: 55, type: !141, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !3, templateParams: !5, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !73, !48}
!143 = !{!144, !145, !146, !148, !150, !152}
!144 = !DILocalVariable(name: "input", arg: 1, scope: !140, file: !7, line: 55, type: !73)
!145 = !DILocalVariable(name: "output", arg: 2, scope: !140, file: !7, line: 55, type: !48)
!146 = !DILocalVariable(name: "iter", scope: !147, file: !7, line: 56, type: !22, align: 8)
!147 = distinct !DILexicalBlock(scope: !140, file: !7, line: 56, column: 5)
!148 = !DILocalVariable(name: "__next", scope: !149, file: !7, line: 56, type: !29, align: 8)
!149 = distinct !DILexicalBlock(scope: !147, file: !7, line: 56, column: 14)
!150 = !DILocalVariable(name: "val", scope: !151, file: !7, line: 56, type: !29, align: 8)
!151 = distinct !DILexicalBlock(scope: !149, file: !7, line: 56, column: 9)
!152 = !DILocalVariable(name: "i", scope: !153, file: !7, line: 56, type: !29, align: 8)
!153 = distinct !DILexicalBlock(scope: !149, file: !7, line: 56, column: 14)
!154 = !DILocation(line: 0, scope: !140)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 0, scope: !91, inlinedAt: !157)
!157 = distinct !DILocation(line: 56, column: 14, scope: !149)
!158 = !DILocation(line: 1137, column: 52, scope: !122, inlinedAt: !159)
!159 = distinct !DILocation(line: 505, column: 12, scope: !91, inlinedAt: !157)
!160 = !DILocation(line: 505, column: 9, scope: !91, inlinedAt: !157)
!161 = !DILocation(line: 57, column: 9, scope: !153)
!162 = !DILocation(line: 0, scope: !149)
!163 = !DILocation(line: 0, scope: !153)
!164 = !DILocation(line: 59, column: 2, scope: !140)
