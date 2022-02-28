Plug 'https://github.com/dense-analysis/ale'

" Check Python files with flake8 and pylint.
let g:ale_linters = { 'python': ['pylint'] }
let g:ale_fixers = { 'python': ['autopep8', 'yapf'], 'javascript':['prettier', 'eslint'] }
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_hover_cursor = 0
