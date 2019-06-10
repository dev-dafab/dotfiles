let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {
 \   'text': '⚠',
 \   'texthl': 'NeomakeWarningSign',
 \ }
let g:neomake_message_sign = {
  \   'text': '➤',
  \   'texthl': 'NeomakeMessageSign',
  \ }
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_typescript_enabled_makers = ['tsc']
let g:neomake_c_enabled_makers = ['gcc']
let g:neomake_css_enabled_makers = ['csslint']
let g:neomake_html_enabled_makers = ['htmlhint']
let g:neomake_json_enabled_makers = ['jsonlint']
let g:neomake_sh_enabled_makers = ['sh']
let g:neomake_sql_enabled_makers = ['sqlint']

