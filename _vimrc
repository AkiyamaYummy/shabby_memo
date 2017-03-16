"***************************************************************************************
"设置默认页面尺寸
set lines=40 columns=120

"绑定F7、F8功能：打开和关闭提示页面
map <F7> :call Tags()<CR>:vertical resize -30<CR>:0<CR><C-W><C-L>
imap <F7> <ESC>:call Tags()<CR>:vertical resize -30<CR>:0<CR><C-W><C-L>i
map <F8> <C-W><C-H>:wq<CR>
imap <F8> <ESC><C-W><C-H>:wq<CR>i

"绑定F5、F6功能：将光标移到左分屏和右分屏
map <F5> <C-W><C-H><C-U><C-W><C-L>
imap <F5> <ESC><C-W><C-H><C-U><C-W><C-L>i
map <F6> <C-W><C-H><C-D><C-W><C-L>
imap <F6> <ESC><C-W><C-H><C-D><C-W><C-L>i
nmap ,, <C-W><C-H>
nmap .. <C-W><C-L>


"函数体：请将“D:/GVim/Vim/tags/HTML_tag.txt”修改成您的HTML备忘文件的目录。
"将D:/GVim/Vim/tags/C_tag.txt 修改成您的C语言备忘文件的目录，以此类推。
"如需增添新的语言类型，在函数中增添elseif项即可。
"笑死了……太简陋了……
func! Tags()
    if &filetype == 'html' 
        :vsplit D:/GVim/Vim/tags/HTML_tag.txt
    elseif &filetype == 'c'
        :vsplit D:/GVim/Vim/tags/C_tag.txt
    endif
endfunc
"***************************************************************************************
imap <F1> <C-N>
nmap - 10k
nmap = 10j
nmap _HTML<CR> :vsplit D:/GVim/Vim/tags/HTML_demo.txt<CR>:2<CR>13ddp:q!<CR>pkdd
nmap <C-C> yaw<C-W><C-H>]]$i<tab><ESC>p:1<CR><F9><C-W><C-L>
imap <C-C> <ESC>yaw<C-W><C-H>]]$i<tab><ESC>p:1<CR><F9><C-W><C-L>i
"***************************************************************************************
