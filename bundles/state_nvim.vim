if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/gabrielr.abreu/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/gabrielr.abreu/.vim/bundles'
let g:dein#_runtime_path = '/Users/gabrielr.abreu/.vim/bundles/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/gabrielr.abreu/.vim/bundles/.cache/init.vim'
let &runtimepath = '/Users/gabrielr.abreu/.config/nvim,/etc/xdg/nvim,/Users/gabrielr.abreu/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/gabrielr.abreu/.vim/bundles/repos/github.com/autozimu/LanguageClient-neovim,/Users/gabrielr.abreu/.vim/bundles/repos/github.com/Shougo/dein.vim,/Users/gabrielr.abreu/.vim/bundles/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.2.2/share/nvim/runtime,/Users/gabrielr.abreu/.vim/bundles/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/gabrielr.abreu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/gabrielr.abreu/.config/nvim/after,/Users/gabrielr.abreu/.vim,/Users/gabrielr.abreu/.vim/after'
filetype off
