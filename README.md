
# vim-ambiwidth

* これは`set ambiwidth=single` でVimを使用したいけど、文字幅が曖昧な文字が残念な表示になってしまうのを `setcellwidths()` にて文字幅調整してくれるVimプラグインです。
* `g:ambiwidth_add_list` を定義しておくことでこのプラグインで指定している文字に加えて別の文字も追加できます。
```
" 例
let g:ambiwidth_add_list = [[0xfe566, 0xfe568, 2], [0xff500, 0xffd46, 2]]
```
* https://miiton.github.io/Cica/ に掲載されている大量の絵文字を `setcellwidths()` にて全角幅にしています。もしこれが不要であれば .vimrcに `let g:ambiwidth_cica_enabled = v:false` を設定し無効にしてください。このプラグインにより全角幅にしている文字一覧は[list.txt](https://github.com/rbtnn/vim-ambiwidth/blob/main/list.txt)にあります。
* 2022年5月18日時点で `setcellwidths()` はVimのみ実装されているためNeovimではこのVimプラグインは機能しませんが、2022年8月9日時点で取り込まれたためそれ以降のNeovimでは使用できます( https://github.com/neovim/neovim/pull/13883 )。  

