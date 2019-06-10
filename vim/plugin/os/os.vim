let g:is_unix = has('unix')
let g:is_windows = has('win16') || has('win32') || has('win64') || has('win95')
let g:is_cygwin = has('win32unix')
let g:is_mac = !g:is_windows && !g:is_cygwin
      \ && (has('mac') || has('macunix') || has('gui_macvim') ||
      \   (!isdirectory('/proc') && executable('sw_vers')))
let g:is_linux  = g:is_unix && !g:is_mac && !g:is_cygwin
let g:is_ubuntu = g:is_linux && system("uname -a")  =~? "ubuntu"
let g:is_arch = g:is_linux && system("uname -a") =~ "ARCH"
let python3_path= shellescape(expand( system('which python3')))
let python2_path= shellescape(expand( system('which python2')))
