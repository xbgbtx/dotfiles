Plug 'https://github.com/dense-analysis/ale'

" Check Python files with flake8 and pylint.
" Note: need to `apt-get install flake8/black`
let g:ale_linters = { 'python': ['flake8'] }
let g:ale_fixers = { 'python': ['black'], 'javascript':['prettier', 'eslint'] }
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_hover_cursor = 0

let g:ale_pattern_options = {
          \'/home/boop/AL/AL-Workdir/*' : { 'ale_enabled' : 0},
          \}
