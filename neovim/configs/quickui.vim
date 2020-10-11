" clear all the menus
call quickui#menu#reset()

" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&File', [
            \ [ "&New File\tCtrl+n", ':tabnew' ],
            \ [ "&Close", ':q' ],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", ':w!'],
            \ [ "--", '' ],
            \ [ "E&xit\tAlt+x", 'quit' ],
            \ ])

" items containing tips, tips will display in the cmdline
" call quickui#menu#install('&Edit', [
"             \ [ '&Copy', 'echo 1', 'help 1' ],
"             \ [ '&Paste', 'echo 2', 'help 2' ],
"             \ [ '&Find', 'echo 3', 'help 3' ],
"             \ ])

" script inside %{...} will be evaluated and expanded in the string
" call quickui#menu#install("&Option", [
" 			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
" 			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
" 			\ ['Set &Paste %{&paste? "Off":"On"}', 'set paste!'],
" 			\ ])

call quickui#menu#install("&Test", [
			\ ['Test &Nearest', ':TestNearest'],
			\ ['Test &File', ':TestFile'],
			\ ['Test &All', ':TestSuite'],
			\ ])

" enable to display tips in the cmdline
let g:quickui_show_tip = 1

let content = [
            \ [ 'Test Nearest', ':TestNearest' ],
            \ [ 'Test File', ':TestFile' ],
            \ [ 'Test All', ':TestSuite' ],
            \]
let opts = {'title': 'select one', 'w': '150'}
command ListCommands call quickui#listbox#open(content, opts)

function! TermExit(code)
    echom "terminal exit code: ". a:code
endfunc

let g:quickui_color_scheme = 'gruvbox'

let opts = {'w':100, 'h':12, 'callback':'TermExit'}
let opts.title = 'Rails Console'
command RailsConsole call quickui#terminal#open('rails console', opts)

command ListFiles call quickui#tools#list_buffer('e')
