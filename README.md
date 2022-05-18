
# vim-ambiwidth

`set ambiwidth=single` でVimを使用したいけど、文字幅が曖昧な文字が残念な表示になってしまうのを `setcellwidths()` にて人力で文字幅調整するVimプラグインです。  
2022年5月18日時点で `setcellwidths()` はVimのみ実装されているため、NeovimではこのVimプラグインは機能しません( https://github.com/neovim/neovim/pull/13883 )。  
また、https://miiton.github.io/Cica/ に掲載されている大量の絵文字を `setcellwidths()` にて全角幅にしています。  
もしこれが不要であれば .vimrcに `let g:ambiwidth_cica_enabled = v:false` を設定し無効にしてください。  




