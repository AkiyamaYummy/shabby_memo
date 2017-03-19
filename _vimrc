"***************************************************************************************
"设置默认页面尺寸
set lines=40 columns=120

"绑定F7功能：打开和关闭提示页面
map <F7> :call Tags()<CR>
imap <F7> <ESC>:call Tags()<CR>i

"绑定F5、F6功能：将备忘文档上下翻页
map <F5> <C-W><C-H><C-U><C-W><C-L>
imap <F5> <ESC><C-W><C-H><C-U><C-W><C-L>i
map <F6> <C-W><C-H><C-D><C-W><C-L>
imap <F6> <ESC><C-W><C-H><C-D><C-W><C-L>i

"函数体：请将“D:/GVim/Vim/tags/HTML_tag.txt”修改成您的HTML备忘文件的目录。
"将D:/GVim/Vim/tags/C_tag.txt 修改成您的C语言备忘文件的目录，以此类推。
"如需增添新的语言类型，在函数中增添elseif项即可。
"笑死了……太简陋了……
let g:is_open = 0
func! Tags()
    if g:is_open==0
        if &filetype == 'html' 
            execute"normal! :vsplit D:/GVim/Vim/tags/HTML_tag.txt\r"
        elseif &filetype == 'c'
            execute"normal! :vsplit D:/GVim/Vim/tags/C_tag.txt\r"
        endif
        execute"normal! :vertical resize -30\r\<C-W>\<C-L>"
        let g:is_open=1
    else
        execute"normal! \<C-W>\<C-H>:wq\r"
        let g:is_open=0
    endif
endfunc
"***************************************************************************************
"新功能……
nmap _demo<CR> :call Demo()<CR>
map <C-C> yaw<C-W><C-H>]]$i<tab><ESC>p:1<CR>:w<CR><C-W><C-L>
imap <C-C> <ESC>yaw<C-W><C-H>]]$i<tab><ESC>p:1<CR>:w<CR><C-W><C-L>i
func! Demo()
    if &filetype == 'html'
        let l:where=4|let l:how_many=13
    elseif &filetype == 'c'
        let l:where=18|let l:how_many=4
    elseif &filetype == 'cpp'
        let l:where=23|let l:how_many=5
    else
        let l:where=2|let l:how_many=1
    endif
    execute "normal! :vsplit D:/GVim/Vim/tags/Demoes.txt\r"
    execute "normal! :".l:where."\r".l:how_many."ddp:q!\rpkdd"
endfunc
"***************************************************************************************
