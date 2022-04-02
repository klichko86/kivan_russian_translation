let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/source/kivan_russian_translation
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd d/p\#pid25.d
$argadd tra/english/p\#pid25.tra
$argadd tra/russian/P\#PID25.tra
edit tra/russian/P\#PID25.tra
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 24 + 38) / 76)
exe '2resize ' . ((&lines * 24 + 38) / 76)
exe '3resize ' . ((&lines * 24 + 38) / 76)
argglobal
if bufexists("tra/russian/P\#PID25.tra") | buffer tra/russian/P\#PID25.tra | else | edit tra/russian/P\#PID25.tra | endif
balt tra/english/p\#pid25.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 348 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 348
normal! 0
wincmd w
argglobal
if bufexists("tra/english/p\#pid25.tra") | buffer tra/english/p\#pid25.tra | else | edit tra/english/p\#pid25.tra | endif
balt d/p\#pid25.d
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 335 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 335
normal! 010|
wincmd w
argglobal
if bufexists("d/p\#pid25.d") | buffer d/p\#pid25.d | else | edit d/p\#pid25.d | endif
balt tra/russian/P\#PID25.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1375 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1375
normal! 0
wincmd w
exe '1resize ' . ((&lines * 24 + 38) / 76)
exe '2resize ' . ((&lines * 24 + 38) / 76)
exe '3resize ' . ((&lines * 24 + 38) / 76)
tabnext 1
badd +1 d/p\#pid25.d
badd +1 tra/english/p\#pid25.tra
badd +1 tra/russian/P\#PID25.tra
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
