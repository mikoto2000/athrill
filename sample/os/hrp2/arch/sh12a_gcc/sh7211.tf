$ 
$		チップ依存テンプレート（SH7211用）
$ 

$ 
$  有効な割込み番号，割込みハンドラ番号，CPU例外ハンドラ番号
$ 
$INTNO_VALID = { 11;
				 64,65,...,71;	
				 92;
				 108;109;
				 112;113;
				 116;117;
				 120;121;
				 124;125;
				 128;129;
				 132;133;
				 136;137;
				 140;144;
				 148;152;
				 156,157,...,162;
				 164;165;168;169;
				 172;173;176;177;
				 180,181,...,184;
				 188,189,...,191;
				 196;197;198;
				 200;201;
				 204,205,...,208;
				 212,213,...,216;
				 220;221;222;
				 224;228;229;230;231;232;
				 240,241,...,258 }$

$INHNO_VALID = INTNO_VALID$

$EXCNO_VALID = { 4;6;9;10;12;14;15;16;17;18;
				 32,33,...,63 }$

$ 
$  同じ割込み優先度を設定しなければならない割込み番号のリスト
$  　（-1をセパレータとする。）
$ 
$same_intpri_list = { 108,109,-1,
					  112,113,-1,
					  116,117,-1,
					  120,121,-1,
					  124,125,-1,
					  128,129,-1,
					  132,133,-1,
					  136,137,-1,
					  156,157,158,159,-1,
					  160,161,162,-1,
					  164,165,-1,
					  168,169,-1,
					  172,173,-1,
					  176,177,-1,
					  180,181,182,183,-1,
					  188,189,190,191,-1,
					  196,197,198,-1,
					  200,201,-1,
					  204,205,206,207,-1,
					  212,213,214,215,-1,
					  220,221,222,-1,
					  228,229,230,231,232,-1,
					  240,241,242,243,-1,
					  244,245,246,247,-1,
					  248,249,250,251,-1,
					  252,253,254,255,-1,
					  256,257,258,-1
					}$


$ 
$  コア依存のテンプレートファイルのインクルード
$ 
$INCLUDE "sh12a_gcc/sh2a.tf"$
