
let g:loaded_ambiwidth = 1

if (&encoding == 'utf-8') && exists('*setcellwidths') && has('vim_starting')
	set ambiwidth=single
	call setcellwidths([
		\ [0x2030, 0x203f, 2],
		\ [0x2103, 0x2103, 2],
		\ [0x2160, 0x2169, 2],
		\ [0x2170, 0x2179, 2],
		\ [0x2190, 0x2193, 2],
		\ [0x21d2, 0x21d2, 2],
		\ [0x21d4, 0x21d4, 2],
		\ [0x2266, 0x2267, 2],
		\ [0x2460, 0x24ff, 2],
		\ [0x25a0, 0x25a1, 2],
		\ [0x25b2, 0x25b3, 2],
		\ [0x25bc, 0x25bd, 2],
		\ [0x25c6, 0x25c7, 2],
		\ [0x25cb, 0x25cb, 2],
		\ [0x25cf, 0x25cf, 2],
		\ [0x2600, 0x267f, 2],
		\ [0x2690, 0x269c, 2],
		\ [0x26a0, 0x26ad, 2],
		\ [0x26b0, 0x26b1, 2],
		\ [0x26b9, 0x26b9, 2],
		\ [0x2701, 0x2709, 2],
		\ [0x270c, 0x2727, 2],
		\ [0x2729, 0x274d, 2],
		\ [0x274f, 0x2752, 2],
		\ [0x2756, 0x2756, 2],
		\ [0x2758, 0x275e, 2],
		\ [0x2761, 0x2794, 2],
		\ [0x2798, 0x279f, 2],
		\ [0x27f5, 0x27f7, 2],
		\ [0x2b05, 0x2b0d, 2],
		\ [0x303f, 0x303f, 2],
		\ [0xe62e, 0xe62e, 2],
		\ [0xf315, 0xf316, 2],
		\ [0xf31b, 0xf31c, 2],
		\ ] + (get(g:, 'ambiwidth_cica_enabled', v:true) ? [
		\ [0xe0a0, 0xe0a3, 2],
		\ [0xe0b0, 0xe0c8, 2],
		\ [0xe0ca, 0xe0ca, 2],
		\ [0xe0cc, 0xe0d2, 2],
		\ [0xe0d4, 0xe0d4, 2],
		\ [0xe200, 0xe2a9, 2],
		\ [0xe300, 0xe3e3, 2],
		\ [0xe5fa, 0xe62b, 2],
		\ [0xe700, 0xe7c5, 2],
		\ [0xf000, 0xf00e, 2],
		\ [0xf010, 0xf01e, 2],
		\ [0xf021, 0xf03e, 2],
		\ [0xf040, 0xf04e, 2],
		\ [0xf050, 0xf05e, 2],
		\ [0xf060, 0xf06e, 2],
		\ [0xf070, 0xf07e, 2],
		\ [0xf080, 0xf08e, 2],
		\ [0xf090, 0xf09e, 2],
		\ [0xf0a0, 0xf0ae, 2],
		\ [0xf0b0, 0xf0b2, 2],
		\ [0xf0c0, 0xf0ce, 2],
		\ [0xf0d0, 0xf0de, 2],
		\ [0xf0e0, 0xf0ee, 2],
		\ [0xf0f0, 0xf0fe, 2],
		\ [0xf100, 0xf10e, 2],
		\ [0xf110, 0xf11e, 2],
		\ [0xf120, 0xf12e, 2],
		\ [0xf130, 0xf13e, 2],
		\ [0xf140, 0xf14e, 2],
		\ [0xf150, 0xf15e, 2],
		\ [0xf160, 0xf16e, 2],
		\ [0xf170, 0xf17e, 2],
		\ [0xf180, 0xf18e, 2],
		\ [0xf190, 0xf19e, 2],
		\ [0xf1a0, 0xf1ae, 2],
		\ [0xf1b0, 0xf1be, 2],
		\ [0xf1c0, 0xf1ce, 2],
		\ [0xf1d0, 0xf1de, 2],
		\ [0xf1e0, 0xf1ee, 2],
		\ [0xf1f0, 0xf1fe, 2],
		\ [0xf200, 0xf20e, 2],
		\ [0xf210, 0xf21e, 2],
		\ [0xf221, 0xf23e, 2],
		\ [0xf240, 0xf24e, 2],
		\ [0xf250, 0xf25e, 2],
		\ [0xf260, 0xf26e, 2],
		\ [0xf270, 0xf27e, 2],
		\ [0xf280, 0xf28e, 2],
		\ [0xf290, 0xf29e, 2],
		\ [0xf2a0, 0xf2ae, 2],
		\ [0xf2b0, 0xf2be, 2],
		\ [0xf2c0, 0xf2ce, 2],
		\ [0xf2d0, 0xf2de, 2],
		\ [0xf2e0, 0xf2e0, 2],
		\ [0xf300, 0xf300, 2],
		\ [0xf3000, 0xf3002, 2],
		\ [0xf301, 0xf310, 2],
		\ [0xf3100, 0xf3102, 2],
		\ [0xf311, 0xf313, 2],
		\ [0xf400, 0xf4a8, 2],
		\ [0xfe0b0, 0xfe0b5, 2],
		\ [0xfe566, 0xfe568, 2],
		\ [0xff500, 0xffd46, 2],
		\ ] : [])
		\ + get(g:, 'ambiwidth_add_list', []))
endif
