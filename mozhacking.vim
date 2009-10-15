let mozcmd = "!./mozhacking/install.sh ; mozmill -l mozmilllog.txt --show-errors -b ./firefox/firefox -t "

" Run the currently opened test
map <f4> :exec mozcmd . "%"<cr>

" Run all the tests in the current directory
map <f4><F4> :exec mozcmd . "%:h"<cr>

" Run a specific test
map <f3> :exec mozcmd . "mozmill-tests/firefox/testFindInPage/testFindInPage.js"<cr>

" Run all the tests
map <f3><f3> :exec mozcmd . "mozmill-tests/firefox/"<cr>

" Don't reload the NERDTree and grep options...
if !exists('g:mozhacking_loaded')
    let g:mozhacking_loaded = 1

    cd ~/code/firefox_testing

    " Set the EasyGrep options
    let g:EasyGrepRecursive = 1
    source $HOME/.vim/plugin/EasyGrep.vim
    " Set user-defined files for grepping
    execute "normal \\vojjj\<cr>*.js *.py\<cr>q"

    " Open NERDTree and open the folder I'm working in
    NERDTree
    /mozmill-tests
    normal o
    /firefox
    normal o
    /testFormManager
    normal o
    /testFormField
    nohls
endif
