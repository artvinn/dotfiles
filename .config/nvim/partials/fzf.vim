scriptencoding utf-8
let $FZF_DEFAULT_OPTS='--layout=reverse --border'
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.9)
    let opts = {
          \ 'relative': 'editor',
          \ 'row': (&lines - height) / 2,
          \ 'col': (&columns - width) / 2,
          \ 'width': width,
          \ 'height': height,
          \ 'style': 'minimal'
          \ }
    set winhl=Normal:Floating
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
endfunction

nnoremap <silent><Leader>s :Files<CR>
nnoremap <silent><Leader>b :Buffers<CR>
nnoremap <silent><Leader>t :BTags<CR>
nnoremap <silent><Leader>m :History<CR>
nnoremap <silent><Leader>g :GFiles?<CR>
