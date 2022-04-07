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
$argadd tra/russian/P\#KIRING.tra
$argadd tra/english/p\#kiring.tra
$argadd d/p\#kiring.d
edit tra/russian/P\#KIRING.tra
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 55 - ((4 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 030|
wincmd w
argglobal
if bufexists("tra/english/p\#kiring.tra") | buffer tra/english/p\#kiring.tra | else | edit tra/english/p\#kiring.tra | endif
balt tra/russian/P\#KIRING.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 75 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 75
normal! 0
wincmd w
argglobal
if bufexists("d/p\#kiring.d") | buffer d/p\#kiring.d | else | edit d/p\#kiring.d | endif
balt tra/russian/P\#KIRING.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 255 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 255
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 24 + 38) / 76)
exe '2resize ' . ((&lines * 24 + 38) / 76)
exe '3resize ' . ((&lines * 24 + 38) / 76)
tabnext 1
badd +1 tra/russian/P\#KIRING.tra
badd +1 tra/english/p\#kiring.tra
badd +1 d/p\#kiring.d
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
