function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Constant */
	this.urlHashMap["am_demod_hdl_coder:59"] = "AM_demodulator.vhd:155";
	/* <S1>/Constant1 */
	this.urlHashMap["am_demod_hdl_coder:63"] = "msg=rtwMsg_notTraceable&block=am_demod_hdl_coder:63";
	/* <S1>/LPF */
	this.urlHashMap["am_demod_hdl_coder:379"] = "AM_demodulator.vhd:129,130,131,132,133,134,135";
	/* <S1>/Product */
	this.urlHashMap["am_demod_hdl_coder:62"] = "AM_demodulator.vhd:148,149,150,151,152,153";
	/* <S1>/Sqrt */
	this.urlHashMap["am_demod_hdl_coder:50"] = "AM_demodulator.vhd:137,138,139,140";
	/* <S1>/Square */
	this.urlHashMap["am_demod_hdl_coder:47"] = "AM_demodulator.vhd:123,124,125,126,127";
	/* <S1>/Sum */
	this.urlHashMap["am_demod_hdl_coder:58"] = "AM_demodulator.vhd:142,143,144,145,146";
	/* <S2>/Delay11 */
	this.urlHashMap["am_demod_hdl_coder:381"] = "LPF.vhd:228,229,230,231,232,233,234,235,236,237";
	/* <S2>/Delay12 */
	this.urlHashMap["am_demod_hdl_coder:382"] = "LPF.vhd:260,261,262,263,264,265,266,267,268,269";
	/* <S2>/Delay21 */
	this.urlHashMap["am_demod_hdl_coder:383"] = "LPF.vhd:216,217,218,219,220,221,222,223,224,225";
	/* <S2>/Delay22 */
	this.urlHashMap["am_demod_hdl_coder:384"] = "LPF.vhd:248,249,250,251,252,253,254,255,256,257";
	/* <S2>/SectIn2 */
	this.urlHashMap["am_demod_hdl_coder:385"] = "LPF.vhd:153,154,155,156,157";
	/* <S2>/SectOut1 */
	this.urlHashMap["am_demod_hdl_coder:386"] = "LPF.vhd:153,154,155,156,157";
	/* <S2>/SumA21 */
	this.urlHashMap["am_demod_hdl_coder:387"] = "LPF.vhd:128,129,130,131,132";
	/* <S2>/SumA22 */
	this.urlHashMap["am_demod_hdl_coder:388"] = "LPF.vhd:177,178,179,180,181";
	/* <S2>/SumA31 */
	this.urlHashMap["am_demod_hdl_coder:389"] = "LPF.vhd:134,135,136,137,138";
	/* <S2>/SumA32 */
	this.urlHashMap["am_demod_hdl_coder:390"] = "LPF.vhd:183,184,185,186,187";
	/* <S2>/SumB21 */
	this.urlHashMap["am_demod_hdl_coder:391"] = "LPF.vhd:147,148,149,150,151";
	/* <S2>/SumB22 */
	this.urlHashMap["am_demod_hdl_coder:392"] = "LPF.vhd:196,197,198,199,200";
	/* <S2>/SumB31 */
	this.urlHashMap["am_demod_hdl_coder:393"] = "LPF.vhd:153,154,155,156,157";
	/* <S2>/SumB32 */
	this.urlHashMap["am_demod_hdl_coder:394"] = "LPF.vhd:202,203,204,205,206";
	/* <S2>/a(2)(1) */
	this.urlHashMap["am_demod_hdl_coder:395"] = "LPF.vhd:122,123,124,125,126";
	/* <S2>/a(2)(2) */
	this.urlHashMap["am_demod_hdl_coder:396"] = "LPF.vhd:171,172,173,174,175";
	/* <S2>/a(3)(1) */
	this.urlHashMap["am_demod_hdl_coder:397"] = "LPF.vhd:116,117,118,119,120";
	/* <S2>/a(3)(2) */
	this.urlHashMap["am_demod_hdl_coder:398"] = "LPF.vhd:165,166,167,168,169";
	/* <S2>/b(2)(1) */
	this.urlHashMap["am_demod_hdl_coder:399"] = "LPF.vhd:140,141,142,143,144,145";
	/* <S2>/b(2)(2) */
	this.urlHashMap["am_demod_hdl_coder:400"] = "LPF.vhd:189,190,191,192,193,194";
	/* <S2>/s(1) */
	this.urlHashMap["am_demod_hdl_coder:401"] = "LPF.vhd:110,111,112,113,114";
	/* <S2>/s(2) */
	this.urlHashMap["am_demod_hdl_coder:402"] = "LPF.vhd:159,160,161,162,163";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "am_demod_hdl_coder"};
	this.sidHashMap["am_demod_hdl_coder"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/AM modulated signal"] = {sid: "am_demod_hdl_coder:72"};
	this.sidHashMap["am_demod_hdl_coder:72"] = {rtwname: "<S1>/AM modulated signal"};
	this.rtwnameHashMap["<S1>/Constant"] = {sid: "am_demod_hdl_coder:59"};
	this.sidHashMap["am_demod_hdl_coder:59"] = {rtwname: "<S1>/Constant"};
	this.rtwnameHashMap["<S1>/Constant1"] = {sid: "am_demod_hdl_coder:63"};
	this.sidHashMap["am_demod_hdl_coder:63"] = {rtwname: "<S1>/Constant1"};
	this.rtwnameHashMap["<S1>/LPF"] = {sid: "am_demod_hdl_coder:379"};
	this.sidHashMap["am_demod_hdl_coder:379"] = {rtwname: "<S1>/LPF"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "am_demod_hdl_coder:62"};
	this.sidHashMap["am_demod_hdl_coder:62"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/Sqrt"] = {sid: "am_demod_hdl_coder:50"};
	this.sidHashMap["am_demod_hdl_coder:50"] = {rtwname: "<S1>/Sqrt"};
	this.rtwnameHashMap["<S1>/Square"] = {sid: "am_demod_hdl_coder:47"};
	this.sidHashMap["am_demod_hdl_coder:47"] = {rtwname: "<S1>/Square"};
	this.rtwnameHashMap["<S1>/Sum"] = {sid: "am_demod_hdl_coder:58"};
	this.sidHashMap["am_demod_hdl_coder:58"] = {rtwname: "<S1>/Sum"};
	this.rtwnameHashMap["<S1>/Audio out"] = {sid: "am_demod_hdl_coder:73"};
	this.sidHashMap["am_demod_hdl_coder:73"] = {rtwname: "<S1>/Audio out"};
	this.rtwnameHashMap["<S2>/Input"] = {sid: "am_demod_hdl_coder:380"};
	this.sidHashMap["am_demod_hdl_coder:380"] = {rtwname: "<S2>/Input"};
	this.rtwnameHashMap["<S2>/Delay11"] = {sid: "am_demod_hdl_coder:381"};
	this.sidHashMap["am_demod_hdl_coder:381"] = {rtwname: "<S2>/Delay11"};
	this.rtwnameHashMap["<S2>/Delay12"] = {sid: "am_demod_hdl_coder:382"};
	this.sidHashMap["am_demod_hdl_coder:382"] = {rtwname: "<S2>/Delay12"};
	this.rtwnameHashMap["<S2>/Delay21"] = {sid: "am_demod_hdl_coder:383"};
	this.sidHashMap["am_demod_hdl_coder:383"] = {rtwname: "<S2>/Delay21"};
	this.rtwnameHashMap["<S2>/Delay22"] = {sid: "am_demod_hdl_coder:384"};
	this.sidHashMap["am_demod_hdl_coder:384"] = {rtwname: "<S2>/Delay22"};
	this.rtwnameHashMap["<S2>/SectIn2"] = {sid: "am_demod_hdl_coder:385"};
	this.sidHashMap["am_demod_hdl_coder:385"] = {rtwname: "<S2>/SectIn2"};
	this.rtwnameHashMap["<S2>/SectOut1"] = {sid: "am_demod_hdl_coder:386"};
	this.sidHashMap["am_demod_hdl_coder:386"] = {rtwname: "<S2>/SectOut1"};
	this.rtwnameHashMap["<S2>/SumA21"] = {sid: "am_demod_hdl_coder:387"};
	this.sidHashMap["am_demod_hdl_coder:387"] = {rtwname: "<S2>/SumA21"};
	this.rtwnameHashMap["<S2>/SumA22"] = {sid: "am_demod_hdl_coder:388"};
	this.sidHashMap["am_demod_hdl_coder:388"] = {rtwname: "<S2>/SumA22"};
	this.rtwnameHashMap["<S2>/SumA31"] = {sid: "am_demod_hdl_coder:389"};
	this.sidHashMap["am_demod_hdl_coder:389"] = {rtwname: "<S2>/SumA31"};
	this.rtwnameHashMap["<S2>/SumA32"] = {sid: "am_demod_hdl_coder:390"};
	this.sidHashMap["am_demod_hdl_coder:390"] = {rtwname: "<S2>/SumA32"};
	this.rtwnameHashMap["<S2>/SumB21"] = {sid: "am_demod_hdl_coder:391"};
	this.sidHashMap["am_demod_hdl_coder:391"] = {rtwname: "<S2>/SumB21"};
	this.rtwnameHashMap["<S2>/SumB22"] = {sid: "am_demod_hdl_coder:392"};
	this.sidHashMap["am_demod_hdl_coder:392"] = {rtwname: "<S2>/SumB22"};
	this.rtwnameHashMap["<S2>/SumB31"] = {sid: "am_demod_hdl_coder:393"};
	this.sidHashMap["am_demod_hdl_coder:393"] = {rtwname: "<S2>/SumB31"};
	this.rtwnameHashMap["<S2>/SumB32"] = {sid: "am_demod_hdl_coder:394"};
	this.sidHashMap["am_demod_hdl_coder:394"] = {rtwname: "<S2>/SumB32"};
	this.rtwnameHashMap["<S2>/a(2)(1)"] = {sid: "am_demod_hdl_coder:395"};
	this.sidHashMap["am_demod_hdl_coder:395"] = {rtwname: "<S2>/a(2)(1)"};
	this.rtwnameHashMap["<S2>/a(2)(2)"] = {sid: "am_demod_hdl_coder:396"};
	this.sidHashMap["am_demod_hdl_coder:396"] = {rtwname: "<S2>/a(2)(2)"};
	this.rtwnameHashMap["<S2>/a(3)(1)"] = {sid: "am_demod_hdl_coder:397"};
	this.sidHashMap["am_demod_hdl_coder:397"] = {rtwname: "<S2>/a(3)(1)"};
	this.rtwnameHashMap["<S2>/a(3)(2)"] = {sid: "am_demod_hdl_coder:398"};
	this.sidHashMap["am_demod_hdl_coder:398"] = {rtwname: "<S2>/a(3)(2)"};
	this.rtwnameHashMap["<S2>/b(2)(1)"] = {sid: "am_demod_hdl_coder:399"};
	this.sidHashMap["am_demod_hdl_coder:399"] = {rtwname: "<S2>/b(2)(1)"};
	this.rtwnameHashMap["<S2>/b(2)(2)"] = {sid: "am_demod_hdl_coder:400"};
	this.sidHashMap["am_demod_hdl_coder:400"] = {rtwname: "<S2>/b(2)(2)"};
	this.rtwnameHashMap["<S2>/s(1)"] = {sid: "am_demod_hdl_coder:401"};
	this.sidHashMap["am_demod_hdl_coder:401"] = {rtwname: "<S2>/s(1)"};
	this.rtwnameHashMap["<S2>/s(2)"] = {sid: "am_demod_hdl_coder:402"};
	this.sidHashMap["am_demod_hdl_coder:402"] = {rtwname: "<S2>/s(2)"};
	this.rtwnameHashMap["<S2>/Output"] = {sid: "am_demod_hdl_coder:403"};
	this.sidHashMap["am_demod_hdl_coder:403"] = {rtwname: "<S2>/Output"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
