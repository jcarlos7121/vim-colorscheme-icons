let g:devicons_colors = {
      \ 'CocListFgRed': ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'CocListFgYellow': ['λ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'CocListFgGreen': ['', '', '', '', '', '', '﵂', '', '', '', '', '', ''],
      \ 'CocListFgBlue': ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'CocListFgCyan': ['', '', '', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'CocListFgMagenta': ['', '', '', '', '', '', '', '', '', '', '', ''],
      \ 'CocListFgGrey': ['', '', '', '', '', ''],
      \ 'CocListFgWhite': ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''] ,
      \}

function! s:setIconColors(config, filetypes)
  let s:joined_filetypes = join(a:filetypes, ',')
  echo s:joined_filetypes
  augroup ColorSchemeIcons
    autocmd!
    for [group, icons] in items(a:config)
      execute 'autocmd FileType ' . s:joined_filetypes . ' syntax match ' . group . ' /\v' . join(icons, ".|") . './ containedin=ALL'
    endfor
  augroup END
endfunction

call s:setIconColors(g:devicons_colors, ['nerdtree', 'startify'])

