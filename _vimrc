"����Ĭ��ҳ��ߴ�
set lines=40 columns=120

"��F7���ܣ�����ʾҳ��
map <F7> :call Tags()<CR>:vertical resize -30<CR><C-W><C-L>

"��F5��F6���ܣ�������Ƶ���������ҷ���
map <F5> <C-W><C-H>
map <F6> <C-W><C-L>

"�����壺�뽫��D:/GVim/Vim/tags/HTML_tag.txt���޸ĳ�����HTML�����ļ���Ŀ¼��
"��D:/GVim/Vim/tags/C_tag.txt �޸ĳ�����C���Ա����ļ���Ŀ¼���Դ����ơ�
"���������µ��������ͣ��ں���������elseif��ɡ�
"Ц���ˡ���̫��ª�ˡ���
func! Tags()
    if &filetype == 'html' 
        :vsplit D:/GVim/Vim/tags/HTML_tag.txt
    elseif &filetype == 'c'
        ::vsplit D:/GVim/Vim/tags/C_tag.txt
    endif
endfunc