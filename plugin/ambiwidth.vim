
scriptencoding utf-8

let g:loaded_ambiwidth = 1

if (&encoding == 'utf-8') && exists('*setcellwidths') " && has('vim_starting')
	set ambiwidth=single

	let s:xs = []

	let s:xs += [[0x2030, 0x203f, 2]] " ‰‱′″‴‵‶‷‸‹›※‼‽‾‿
	let s:xs += [[0x2103, 0x2103, 2]] " ℃
	let s:xs += [[0x2160, 0x2169, 2]] " ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩ
	let s:xs += [[0x2170, 0x2179, 2]] " ⅰⅱⅲⅳⅴⅵⅶⅷⅸⅹ
	let s:xs += [[0x2190, 0x2193, 2]] " ←↑→↓
	let s:xs += [[0x21d2, 0x21d2, 2]] " ⇒
	let s:xs += [[0x21d4, 0x21d4, 2]] " ⇔
	let s:xs += [[0x2266, 0x2267, 2]] " ≦≧
	let s:xs += [[0x2460, 0x246f, 2]] " ①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯
	let s:xs += [[0x2470, 0x247f, 2]] " ⑰⑱⑲⑳⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿
	let s:xs += [[0x2480, 0x248f, 2]] " ⒀⒁⒂⒃⒄⒅⒆⒇⒈⒉⒊⒋⒌⒍⒎⒏
	let s:xs += [[0x2490, 0x249f, 2]] " ⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛⒜⒝⒞⒟
	let s:xs += [[0x24a0, 0x24af, 2]] " ⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯
	let s:xs += [[0x24b0, 0x24bf, 2]] " ⒰⒱⒲⒳⒴⒵ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿ
	let s:xs += [[0x24c0, 0x24cf, 2]] " ⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ
	let s:xs += [[0x24d0, 0x24df, 2]] " ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟ
	let s:xs += [[0x24e0, 0x24ef, 2]] " ⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ⓪⓫⓬⓭⓮⓯
	let s:xs += [[0x24f0, 0x24ff, 2]] " ⓰⓱⓲⓳⓴⓵⓶⓷⓸⓹⓺⓻⓼⓽⓾⓿
	"let s:xs += [[0x2500, 0x257f, 2]] " https://en.wikipedia.org/wiki/Box_Drawing
	let s:xs += [[0x25a0, 0x25a1, 2]] " ■□
	let s:xs += [[0x25b2, 0x25b3, 2]] " ▲△
	let s:xs += [[0x25bc, 0x25bd, 2]] " ▼▽
	let s:xs += [[0x25c6, 0x25c7, 2]] " ◆◇
	let s:xs += [[0x25cb, 0x25cb, 2]] " ○
	let s:xs += [[0x25cf, 0x25cf, 2]] " ●
	let s:xs += [[0x2600, 0x260f, 2]] " ☀☁☂☃☄★☆☇☈☉☊☋☌☍☎☏
	let s:xs += [[0x2610, 0x261f, 2]] " ☐☑☒☓☔☕☖☗☘☙☚☛☜☝☞☟
	let s:xs += [[0x2620, 0x262f, 2]] " ☠☡☢☣☤☥☦☧☨☩☪☫☬☭☮☯
	let s:xs += [[0x2630, 0x263f, 2]] " ☰☱☲☳☴☵☶☷☸☹☺☻☼☽☾☿
	let s:xs += [[0x2640, 0x264f, 2]] " ♀♁♂♃♄♅♆♇♈♉♊♋♌♍♎♏
	let s:xs += [[0x2650, 0x265f, 2]] " ♐♑♒♓♔♕♖♗♘♙♚♛♜♝♞♟
	let s:xs += [[0x2660, 0x266f, 2]] " ♠♡♢♣♤♥♦♧♨♩♪♫♬♭♮♯
	let s:xs += [[0x2670, 0x267f, 2]] " ♰♱♲♳♴♵♶♷♸♹♺♻♼♽♾♿
	let s:xs += [[0x2690, 0x269c, 2]] " ⚐⚑⚒⚓⚔⚕⚖⚗⚘⚙⚚⚛⚜
	let s:xs += [[0x26a0, 0x26ad, 2]] " ⚠⚡⚢⚣⚤⚥⚦⚧⚨⚩⚪⚫⚬⚭
	let s:xs += [[0x26b0, 0x26b1, 2]] " ⚰⚱
	let s:xs += [[0x26b9, 0x26b9, 2]] " ⚹
	let s:xs += [[0x2701, 0x2709, 2]] " ✁✂✃✄✆✇✈✉
	let s:xs += [[0x270c, 0x270f, 2]] " ✌✍✎✏
	let s:xs += [[0x2710, 0x271f, 2]] " ✐✑✒✓✔✕✖✗✘✙✚✛✜✝✞✟
	let s:xs += [[0x2720, 0x2727, 2]] " ✠✡✢✣✤✥✦✧
	let s:xs += [[0x2729, 0x272f, 2]] " ✩✪✫✬✭✮✯
	let s:xs += [[0x2730, 0x273f, 2]] " ✰✱✲✳✴✵✶✷✸✹✺✻✼✽✾✿
	let s:xs += [[0x2740, 0x274d, 2]] " ❀❁❂❃❄❅❆❇❈❉❊❋❍
	let s:xs += [[0x274f, 0x274f, 2]] " ❏
	let s:xs += [[0x2750, 0x2752, 2]] " ❐❑❒
	let s:xs += [[0x2756, 0x2756, 2]] " ❖
	let s:xs += [[0x2758, 0x275e, 2]] " ❘❙❚❛❜❝❞
	let s:xs += [[0x2761, 0x276f, 2]] " ❡❢❣❤❥❦❧❨❩❪❫❬❭❮❯
	let s:xs += [[0x2770, 0x277f, 2]] " ❰❱❲❳❴❵❶❷❸❹❺❻❼❽❾❿
	let s:xs += [[0x2780, 0x278f, 2]] " ➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏
	let s:xs += [[0x2790, 0x2794, 2]] " ➐➑➒➓➔
	let s:xs += [[0x2798, 0x279f, 2]] " ➘➙➚➛➜➝➞➟
	let s:xs += [[0x27f5, 0x27f7, 2]] " ⟵⟶⟷
	let s:xs += [[0x2b05, 0x2b0d, 2]] " ⬅⬆⬇⬈⬉⬊⬋⬌⬍
	let s:xs += [[0x303f, 0x303f, 2]] " 〿

	" Characters used in https://github.com/ryanoasis/vim-devicons/blob/master/plugin/webdevicons.vim
	let s:xs += [[0xe600, 0xe600, 2]] " 
	let s:xs += [[0xe603, 0xe603, 2]] " 
	let s:xs += [[0xe606, 0xe606, 2]] " 
	let s:xs += [[0xe607, 0xe607, 2]] " 
	let s:xs += [[0xe608, 0xe608, 2]] " 
	let s:xs += [[0xe609, 0xe609, 2]] " 
	let s:xs += [[0xe60a, 0xe60a, 2]] " 
	let s:xs += [[0xe60b, 0xe60b, 2]] " 
	let s:xs += [[0xe60c, 0xe60c, 2]] " 
	let s:xs += [[0xe60d, 0xe60d, 2]] " 
	let s:xs += [[0xe60e, 0xe60e, 2]] " 
	let s:xs += [[0xe60f, 0xe60f, 2]] " 
	let s:xs += [[0xe610, 0xe610, 2]] " 
	let s:xs += [[0xe611, 0xe611, 2]] " 
	let s:xs += [[0xe614, 0xe614, 2]] " 
	let s:xs += [[0xe615, 0xe615, 2]] " 
	let s:xs += [[0xe619, 0xe619, 2]] " 
	let s:xs += [[0xe61b, 0xe61b, 2]] " 
	let s:xs += [[0xe61c, 0xe61c, 2]] " 
	let s:xs += [[0xe61d, 0xe61d, 2]] " 
	let s:xs += [[0xe61e, 0xe61e, 2]] " 
	let s:xs += [[0xe61f, 0xe61f, 2]] " 
	let s:xs += [[0xe620, 0xe620, 2]] " 
	let s:xs += [[0xe623, 0xe623, 2]] " 
	let s:xs += [[0xe624, 0xe624, 2]] " 
	let s:xs += [[0xe627, 0xe627, 2]] " 
	let s:xs += [[0xe628, 0xe628, 2]] " 
	let s:xs += [[0xe62b, 0xe62b, 2]] " 
	let s:xs += [[0xe62c, 0xe62c, 2]] " 
	let s:xs += [[0xe62d, 0xe62d, 2]] " 
	let s:xs += [[0xe706, 0xe706, 2]] " 
	let s:xs += [[0xe707, 0xe707, 2]] " 
	let s:xs += [[0xe70c, 0xe70c, 2]] " 
	let s:xs += [[0xe718, 0xe718, 2]] " 
	let s:xs += [[0xe728, 0xe728, 2]] " 
	let s:xs += [[0xe737, 0xe737, 2]] " 
	let s:xs += [[0xe738, 0xe738, 2]] " 
	let s:xs += [[0xe745, 0xe745, 2]] " 
	let s:xs += [[0xe750, 0xe750, 2]] " 
	let s:xs += [[0xe752, 0xe752, 2]] " 
	let s:xs += [[0xe753, 0xe753, 2]] " 
	let s:xs += [[0xe755, 0xe755, 2]] " 
	let s:xs += [[0xe768, 0xe768, 2]] " 
	let s:xs += [[0xe769, 0xe769, 2]] " 
	let s:xs += [[0xe76a, 0xe76a, 2]] " 
	let s:xs += [[0xe770, 0xe770, 2]] " 
	let s:xs += [[0xe78f, 0xe78f, 2]] " 
	let s:xs += [[0xe791, 0xe791, 2]] " 
	let s:xs += [[0xe795, 0xe795, 2]] " 
	let s:xs += [[0xe798, 0xe798, 2]] " 
	let s:xs += [[0xe7a7, 0xe7a7, 2]] " 
	let s:xs += [[0xe7a8, 0xe7a8, 2]] " 
	let s:xs += [[0xe7af, 0xe7af, 2]] " 
	let s:xs += [[0xe7b0, 0xe7b0, 2]] " 
	let s:xs += [[0xe7b1, 0xe7b1, 2]] " 
	let s:xs += [[0xe7b4, 0xe7b4, 2]] " 
	let s:xs += [[0xe7b6, 0xe7b6, 2]] " 
	let s:xs += [[0xe7b8, 0xe7b8, 2]] " 
	let s:xs += [[0xe7ba, 0xe7ba, 2]] " 
	let s:xs += [[0xf0fd, 0xf0fd, 2]] " 
	let s:xs += [[0xf296, 0xf296, 2]] " 
	let s:xs += [[0xf2b8, 0xf2b8, 2]] " 
	let s:xs += [[0xf313, 0xf313, 2]] " 
	let s:xs += [[0xf499, 0xf499, 2]] " 

	call setcellwidths(s:xs)
endif

