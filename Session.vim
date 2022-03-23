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
$argadd d/p\#kipid.d
$argadd tra/russian/P\#KIPID.tra
$argadd tra/english/p\#kipid.tra
edit tra/russian/P\#KIPID.tra
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
if bufexists("tra/russian/P\#KIPID.tra") | buffer tra/russian/P\#KIPID.tra | else | edit tra/russian/P\#KIPID.tra | endif
balt d/p\#kipid.d
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 55 - ((6 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 015|
wincmd w
argglobal
if bufexists("tra/english/p\#kipid.tra") | buffer tra/english/p\#kipid.tra | else | edit tra/english/p\#kipid.tra | endif
balt tra/russian/P\#KIPID.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 41 - ((1 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 41
normal! 0
wincmd w
argglobal
if bufexists("d/p\#kipid.d") | buffer d/p\#kipid.d | else | edit d/p\#kipid.d | endif
balt tra/russian/P\#KIPID.tra
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 469 - ((22 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 469
normal! 0
wincmd w
exe '1resize ' . ((&lines * 24 + 38) / 76)
exe '2resize ' . ((&lines * 24 + 38) / 76)
exe '3resize ' . ((&lines * 24 + 38) / 76)
tabnext 1
badd +1 d/p\#kipid.d
badd +1 tra/russian/P\#KIPID.tra
badd +1 tra/english/p\#kipid.tra
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
