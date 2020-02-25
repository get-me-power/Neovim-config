function! s:install_extensions() abort
  " Fundemental
  CocInstall coc-tabnine

  " Filetype
  CocInstall coc-eslint
  CocInstall coc-css
  CocInstall coc-html
  CocInstall coc-yaml
  CocInstall coc-python
  CocInstall coc-json
  CocInstall coc-xml
  CocInstall coc-go
  CocInstall coc-vimlsp
  CocInstall coc-solargraph

  " Experimental
  CocInstall coc-sql
  CocInstall coc-sh
  CocInstall coc-gitignore
endfunction

command! -nargs=0 CocInstallExtensions call s:install_extensions()
