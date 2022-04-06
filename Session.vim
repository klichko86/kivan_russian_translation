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
$argadd tra/russian/P\#PIDE25.tra
$argadd tra/english/p\#pide25.tra
$argadd d/p\#pide25.d
$argadd tra/russian/SETUP.TRA
edit tra/english/p\#pide25.tra
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
if bufexists("tra/english/p\#pide25.tra") | buffer tra/english/p\#pide25.tra | else | edit tra/english/p\#pide25.tra | endif
balt tra/russian/P\#PIDE25.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 120 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 120
normal! 053|
wincmd w
argglobal
if bufexists("tra/russian/P\#PIDE25.tra") | buffer tra/russian/P\#PIDE25.tra | else | edit tra/russian/P\#PIDE25.tra | endif
balt tra/english/p\#pide25.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 119 - ((1 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 119
normal! 048|
wincmd w
argglobal
if bufexists("d/p\#pide25.d") | buffer d/p\#pide25.d | else | edit d/p\#pide25.d | endif
balt tra/russian/SETUP.TRA
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 320 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 320
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 24 + 38) / 76)
exe '2resize ' . ((&lines * 24 + 38) / 76)
exe '3resize ' . ((&lines * 24 + 38) / 76)
tabnext 1
badd +1 tra/russian/P\#PIDE25.tra
badd +47 tra/english/p\#pide25.tra
badd +332 d/p\#pide25.d
badd +46 tra/russian/SETUP.TRA
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
