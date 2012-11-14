" Vim syntax file
" Language:	fdm.conf
" Maintainer:	Tomohiko Sumi <SumiTomohiko@neko-daisuki.ddo.jp>
" URL:		https://github.com/SumiTomohiko/anything-else
" Last Change:
" License:	Public Domain

" Usage:
" 1. Copy this into ~/.vim/syntax.
" 2. Add "filetype=fdm" to a vim special comment.

set iskeyword+=-

syntax region Comment start="#" end="$"

syntax keyword Include include
syntax keyword Conditional ifdef ifndef endif

syntax region String start="\"" end="\"" skip="\\\""
syntax match Number "[0-9][0-9]*[KMG]?"
syntax match Identifier "[$%][A-Za-z_][A-Za-z0-9_]*"

syntax match Keyword "action"	" 'action' at not head of a line.
syntax match Type "^account"
syntax match Type "^action"
syntax match Type "^match"
syntax match Type "^set"

" Parameters
syntax keyword Keyword server port
syntax keyword Keyword user pass
syntax keyword Keyword cache new-only no-apop no-verify
syntax keyword Keyword keep
syntax keyword Keyword continue drop
syntax keyword Keyword imap imaps nntp nntps pop3 pop3s
syntax keyword Keyword append exec pipe rewrite smtp tag write
syntax keyword Keyword mbox mboxes maildir maildirs
syntax keyword Keyword stdin stdout
syntax keyword Keyword disabled
syntax keyword Keyword gigabyte gigabytes kilobyte kilobytes megabyte megabytes
syntax keyword Keyword day days hour hours invalid minute minutes month months
syntax keyword Keyword second seconds week weeks year years
syntax keyword Keyword expire
syntax keyword Keyword folder folders
syntax keyword Keyword group groups
syntax keyword Keyword no-cram-md5 no-login
syntax keyword Keyword compress
syntax keyword Keyword from to
syntax keyword Keyword key value
syntax keyword Keyword add-header remove-header remove-headers
syntax keyword Keyword body headers in
syntax keyword Keyword age size
syntax keyword Keyword returns
syntax keyword Keyword any-name any-size any-type attachment total-size
syntax keyword Keyword add-to-cache in-cache remove-from-cache
syntax keyword Keyword actions
syntax keyword Operator and not or tagged
syntax keyword Boolean all
syntax keyword Identifier count
syntax keyword Constant courier passwd

" Options
syntax keyword Constant allow-multiple command-user default-user
syntax keyword Constant delete-oversized file-group file-umask lock-file
syntax keyword Constant lock-types lookup-order maximum-size no-create
syntax keyword Constant no-received proxy purge-after queue-high queue-low
syntax keyword Constant timeout unmatched-mail verify-certificates
syntax keyword Constant dotlock fcntl flock

" vim: tabstop=8
