"设置默认页面尺寸
set lines=40 columns=120

"绑定F7、F8功能：打开和关闭提示页面
map <F7> :call Tags()<CR>:vertical resize -30<CR><C-W><C-L>
map <F8> <C-W><C-H>:wq<CR>

"绑定F5、F6功能：将光标移到左分屏和右分屏
map <F5> <C-W><C-H>
map <F6> <C-W><C-L>

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
