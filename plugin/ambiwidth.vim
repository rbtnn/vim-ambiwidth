
scriptencoding utf-8

let g:loaded_ambiwidth = 1

if (&encoding == 'utf-8') && exists('*setcellwidths')
	set ambiwidth=single

	let s:xs = []
	let s:xs += [[0x2030, 0x203f, 2]] " ‰‱′″‴‵‶‷‸‹›※‼‽‾‿
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
	let s:xs += [[0x2500, 0x2500, 2]] " ─
	let s:xs += [[0x2502, 0x2502, 2]] " │
	let s:xs += [[0x250c, 0x250c, 2]] " ┌
	let s:xs += [[0x2510, 0x2510, 2]] " ┐
	let s:xs += [[0x2514, 0x2514, 2]] " └
	let s:xs += [[0x2518, 0x2518, 2]] " ┘
	let s:xs += [[0x25a0, 0x25a1, 2]] " ■□
	let s:xs += [[0x25b2, 0x25b3, 2]] " ▲△
	let s:xs += [[0x25bc, 0x25bd, 2]] " ▼▽
	let s:xs += [[0x25c6, 0x25c7, 2]] " ◆◇
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

	call setcellwidths(s:xs)
endif
