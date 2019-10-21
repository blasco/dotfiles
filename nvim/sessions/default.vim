let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('request', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('request', 'snippets-expand', 1)
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <Plug>CocRefresh =coc#_complete()
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
inoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\"
map! <S-Insert> <MiddleMouse>
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
nnoremap <silent>  :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)
nnoremap <silent>  :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)
nnoremap <silent>  :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)
vmap <NL> <Plug>(coc-snippets-select)
nmap  <Plug>(YoinkPostPasteSwapForward)
nmap  <Plug>(YoinkPostPasteSwapBack)
nnoremap <silent>  :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)
nmap o <Plug>ZoomWin
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
nnoremap <silent>  :noh
snoremap   "_c 
map    <Plug>(easymotion-prefix)
nnoremap <expr>  : JJCmdWinResume()
nnoremap <silent>  y :CocList -A yank
nmap  qf <Plug>(coc-fix-current)
nmap  rn <Plug>(coc-rename)
nmap <silent>  gi <Plug>(coc-implementation)
nmap <silent>  gt <Plug>(coc-type-definition)
xmap  jj vil<Plug>SendDownV
xmap  j <Plug>SendDownV
nmap  j <Plug>SendDown
nmap  kk vil<Plug>SendUpV
xmap  k <Plug>SendUpV
nmap  k <Plug>SendUp
xmap  hh vil<Plug>SendLeftV
xmap  h <Plug>SendLeftV
nmap  h <Plug>SendLeft
nmap  ll vil<Plug>SendRightV
xmap  l <Plug>SendRightV
nmap  l <Plug>SendRight
nnoremap  m m
nnoremap  z :UndotreeToggle
nmap  p :UnnamedplusToggle
nmap <silent>  gd <Plug>(coc-definition)
nmap <silent>  gu :Git pull
nmap <silent>  gp :Git push
nmap  gs <Plug>(coc-git-chunkinfo)
nmap <silent>  gw :Gwrite :Gstatus
nmap <silent>  gr <Plug>(coc-references)
nmap <silent>  gm :Git checkout
nmap  gc <Plug>(coc-git-commit)
nmap <silent>  0 <Plug>FontsizeDefault
nmap <silent>  - <Plug>FontsizeDec
nmap <silent>  + <Plug>FontsizeInc
nmap <silent>  = <Plug>FontsizeBegin
snoremap ! "_c!
snoremap " "_c"
snoremap # "_c#
nmap # <Plug>(asterisk-z#)
xmap # <Plug>(asterisk-z#)
omap # <Plug>(asterisk-z#)
snoremap $ "_c$
snoremap % "_c%
snoremap & "_c&
snoremap ' "_c'
snoremap ( "_c(
snoremap ) "_c)
snoremap * "_c*
nmap * <Plug>(asterisk-z*)
xmap * <Plug>(asterisk-z*)
omap * <Plug>(asterisk-z*)
snoremap + "_c+
snoremap , "_c,
snoremap - "_c-
snoremap . "_c.
snoremap / "_c/
snoremap 0 "_c0
snoremap 1 "_c1
snoremap 2 "_c2
snoremap 3 "_c3
snoremap 4 "_c4
snoremap 5 "_c5
snoremap 6 "_c6
snoremap 7 "_c7
snoremap 8 "_c8
snoremap 9 "_c9
snoremap : "_c:
snoremap ; "_c;
snoremap < "_c<
nnoremap =op <Nop>
snoremap = "_c=
snoremap > "_c>
snoremap ? "_c?
snoremap @ "_c@
omap Af <Plug>(textobj-function-A)
xmap Af <Plug>(textobj-function-A)
snoremap A "_cA
snoremap B "_cB
snoremap C "_cC
xnoremap <silent> C "_C
nnoremap <silent> C "_C
snoremap D "_cD
xnoremap <silent> D "_D
nnoremap <silent> D "_D
snoremap E "_cE
snoremap F "_cF
snoremap G "_cG
snoremap H "_cH
nnoremap H ^
xnoremap H ^
onoremap H ^
omap If <Plug>(textobj-function-I)
xmap If <Plug>(textobj-function-I)
snoremap I "_cI
omap Il <Plug>(textobj-line-I)
xmap Il <Plug>(textobj-line-I)
snoremap J "_cJ
snoremap K "_cK
snoremap L "_cL
nnoremap L $
xnoremap L $
onoremap L $
snoremap M "_cM
nnoremap M D
snoremap N "_cN
snoremap O "_cO
snoremap P "_cP
xnoremap P Pgvy
nmap P <Plug>(YoinkPaste_P)
snoremap Q "_cQ
snoremap R "_cR
snoremap S "_cS
xmap S <Plug>VSurround
nnoremap <silent> S "_S
snoremap T "_cT
snoremap U "_cU
snoremap V "_cV
snoremap W "_cW
snoremap X "_cX
xnoremap <silent> X "_X
nnoremap <silent> X "_X
snoremap Y "_cY
nnoremap Y y$
snoremap Z "_cZ
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [P <Plug>unimpairedPutAbove
nmap [p <Plug>unimpairedPutAbove
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
xmap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap [ <Plug>unimpairedTPPrevious
nmap [T <Plug>unimpairedTFirst
nmap [t <Plug>unimpairedTPrevious
nmap [ <Plug>unimpairedQPFile
nmap [Q <Plug>unimpairedQFirst
nmap [q <Plug>unimpairedQPrevious
nmap [ <Plug>unimpairedLPFile
nmap [L <Plug>unimpairedLFirst
nmap [l <Plug>unimpairedLPrevious
nmap [B <Plug>unimpairedBFirst
nmap [b <Plug>unimpairedBPrevious
nmap [A <Plug>unimpairedAFirst
nmap [a <Plug>unimpairedAPrevious
snoremap [ "_c[
nmap [g <Plug>(coc-git-prevchunk)
nmap [z <Plug>(grammarous-move-to-previous-error)
nmap [y <Plug>(YoinkRotateBack)
snoremap \\ "_c\\
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]P <Plug>unimpairedPutBelow
nmap ]p <Plug>unimpairedPutBelow
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
xmap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]f <Plug>unimpairedDirectoryNext
nmap ] <Plug>unimpairedTPNext
nmap ]T <Plug>unimpairedTLast
nmap ]t <Plug>unimpairedTNext
nmap ] <Plug>unimpairedQNFile
nmap ]Q <Plug>unimpairedQLast
nmap ]q <Plug>unimpairedQNext
nmap ] <Plug>unimpairedLNFile
nmap ]L <Plug>unimpairedLLast
nmap ]l <Plug>unimpairedLNext
nmap ]B <Plug>unimpairedBLast
nmap ]b <Plug>unimpairedBNext
nmap ]A <Plug>unimpairedALast
nmap ]a <Plug>unimpairedANext
snoremap ] "_c]
nmap ]g <Plug>(coc-git-nextchunk)
nmap ]z <Plug>(grammarous-move-to-next-error)
nmap ]y <Plug>(YoinkRotateForward)
snoremap ^ "_c^
snoremap _ "_c_
snoremap ` "_c`
omap av <Plug>(textobj-variable-a)
xmap av <Plug>(textobj-variable-a)
omap aC <Plug>(textobj-comment-big-a)
xmap aC <Plug>(textobj-comment-big-a)
omap aF <Plug>(textobj-function-A)
xmap aF <Plug>(textobj-function-A)
omap af <Plug>(textobj-function-a)
xmap af <Plug>(textobj-function-a)
omap ae <Plug>(textobj-entire-a)
xmap ae <Plug>(textobj-entire-a)
snoremap a "_ca
xmap ac <Plug>(coc-text-object-outer)
omap ac <Plug>(coc-text-object-outer)
omap al <Plug>(textobj-line-a)
xmap al <Plug>(textobj-line-a)
snoremap b "_cb
nmap cr <Plug>(abolish-coerce-word)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
snoremap c "_cc
nnoremap <silent> cc "_S
xnoremap <silent> c "_c
nnoremap <silent> c "_c
nmap crb <Plug>RadicalCoerceToBinary
nmap cro <Plug>RadicalCoerceToOctal
nmap crx <Plug>RadicalCoerceToHex
nmap crd <Plug>RadicalCoerceToDecimal
xmap cra <Plug>RadicalView
nmap cra <Plug>RadicalView
vmap cr <Plug>(abolish-coerce)
omap cr <Plug>(abolish-coerce)
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap ds <Plug>Dsurround
snoremap d "_cd
nnoremap <silent> dd "_dd
xnoremap <silent> d "_d
nnoremap <silent> d "_d
snoremap e "_ce
snoremap f "_cf
vmap gx <Plug>NetrwBrowseXVis
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
snoremap g "_cg
vmap go <Plug>SortMotionVisual
nmap goo <Plug>SortLines
nmap go <Plug>SortMotion
nmap gT <Plug>TitlecaseLine
vmap gt <Plug>Titlecase
nmap gt <Plug>Titlecase
xmap g! <Plug>ScripteaseFilter
nmap g! <Plug>ScripteaseFilter
xmap g= <Plug>ScripteaseFilter
nmap g= <Plug>ScripteaseFilter
nmap gv v@v
nmap <silent> gP :GoBringFromLine P
nmap <silent> gp :GoBringFromLine p
nmap gzd <Plug>(grammarous-disable-rule)
nmap gzn <Plug>(grammarous-remove-error)
nmap gzc <Plug>(grammarous-close-info-window)
nmap gzF <Plug>(grammarous-fixall)
nmap gzf <Plug>(grammarous-fixit)
nmap gzr <Plug>(grammarous-reset)
nmap gzo <Plug>(grammarous-open-info-window)
nmap gz <Plug>(operator-grammarous)
map g# <Plug>(asterisk-gz#)
map g* <Plug>(asterisk-gz*)
nmap ga <Plug>(operator-insert-a)
xmap ga <Plug>(operator-insert-a)
nmap gi <Plug>(operator-insert-i)
xmap gi <Plug>(operator-insert-i)
map g/ <Plug>(operator-ag)
xmap gfah <Plug>VLionRight
nmap gfah <Plug>LionRight
xmap gfal <Plug>VLionLeft
nmap gfal <Plug>LionLeft
xmap gfa <Plug>VLionRight
nmap gfa <Plug>LionRight
nnoremap gfs =
nnoremap gf gw
nmap gxx <Plug>(ExchangeLine)
nmap gxc <Plug>(ExchangeClear)
nmap gx <Plug>(Exchange)
map gFn <Plug>(operator-breakline-manual)
map gF <Plug>(operator-breakline-textwidth)
nmap g<pp <Plug>(operator-jerk-backward-partial)iw
nmap g>pp <Plug>(operator-jerk-forward-partial)iw
xmap g<p <Plug>(operator-jerk-backward-partial)
nmap g<p <Plug>(operator-jerk-backward-partial)
xmap g>p <Plug>(operator-jerk-forward-partial)
nmap g>p <Plug>(operator-jerk-forward-partial)
nmap g<< <Plug>(operator-jerk-backward)l
nmap g>> <Plug>(operator-jerk-forward)l
nmap g< <Plug>(operator-jerk-backward)
xmap g< <Plug>(operator-jerk-backward)
nmap g> <Plug>(operator-jerk-forward)
xmap g> <Plug>(operator-jerk-forward)
nmap gws <Plug>(operator-wwwsearch)
xmap gr? <Plug>(SubversiveSubstituteRangeConfirm)
nmap gr? <Plug>(SubversiveSubstituteRangeConfirm)
xmap gr <Plug>(SubversiveSubstituteRange)
nmap gr <Plug>(SubversiveSubstituteRange)
xmap gs <Plug>(SubversiveSubstitute)
nmap gS <Plug>(SubversiveSubstituteToEndOfLine)
nmap gss <Plug>(SubversiveSubstituteLine)
nmap gs <Plug>(SubversiveSubstitute)
snoremap h "_ch
omap iv <Plug>(textobj-variable-i)
xmap iv <Plug>(textobj-variable-i)
omap if <Plug>(textobj-function-i)
xmap if <Plug>(textobj-function-i)
omap iF <Plug>(textobj-function-I)
xmap iF <Plug>(textobj-function-I)
omap ie <Plug>(textobj-entire-i)
xmap ie <Plug>(textobj-entire-i)
snoremap i "_ci
xmap ic <Plug>(coc-text-object-inner)
omap ic <Plug>(coc-text-object-inner)
omap il <Plug>(textobj-line-i)
xmap il <Plug>(textobj-line-i)
snoremap j "_cj
nnoremap <expr> j (v:count > 1 ? "m`" . v:count : "") . "gj"
snoremap k "_ck
nnoremap <expr> k (v:count > 1 ? "m`" . v:count : "") . "gk"
snoremap l "_cl
snoremap m "_cm
vnoremap mj :m '>+1gv=gv
vnoremap mk :m '<-2gv=gv
nnoremap mj :m .+1==
nnoremap mk :m .-2==
xnoremap mm d
nnoremap mm dd
nnoremap m d
xnoremap m d
snoremap n "_cn
snoremap o "_co
snoremap p "_cp
xnoremap p pgvy
nmap p <Plug>(YoinkPaste_p)
snoremap q "_cq
snoremap r "_cr
snoremap s "_cs
xnoremap <silent> s "_s
nnoremap <silent> s "_s
nnoremap sc xp
snoremap t "_ct
snoremap u "_cu
snoremap v "_cv
snoremap w "_cw
snoremap x "_cx
xnoremap <silent> x "_x
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap y "_cy
nmap y= <Plug>(YoinkPostPasteToggleFormat)
snoremap z "_cz
nmap zS <Plug>ScripteaseSynnames
snoremap { "_c{
snoremap | "_c
snoremap } "_c}
snoremap ~ "_c~
nnoremap <SNR>174_: :=v:count ? v:count : ''
xnoremap <silent> <Plug>(coc-text-object-outer) :call coc#rpc#request('doKeymap', ['text-object-outer'])
onoremap <silent> <Plug>(coc-text-object-outer) :call coc#rpc#request('doKeymap', ['text-object-outer'])
xnoremap <silent> <Plug>(coc-text-object-inner) :call coc#rpc#request('doKeymap', ['text-object-inner'])
onoremap <silent> <Plug>(coc-text-object-inner) :call coc#rpc#request('doKeymap', ['text-object-inner'])
nnoremap <silent> <Plug>(coc-git-commit) :call coc#rpc#notify('doKeymap', ['git-commit'])
nnoremap <silent> <Plug>(coc-git-chunkinfo) :call coc#rpc#notify('doKeymap', ['git-chunkinfo'])
nnoremap <silent> <Plug>(coc-git-prevchunk) :call coc#rpc#notify('doKeymap', ['git-prevchunk'])
nnoremap <silent> <Plug>(coc-git-nextchunk) :call coc#rpc#notify('doKeymap', ['git-nextchunk'])
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
onoremap <Plug>(operator-grammarous) g@
nnoremap <silent> <Plug>(grammarous-move-to-previous-error) :call grammarous#move_to_previous_error(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-move-to-next-error) :call grammarous#move_to_next_error(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-disable-category) :call grammarous#disable_category_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-disable-rule) :call grammarous#disable_rule_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-remove-error) :call grammarous#remove_error_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-close-info-window) :call grammarous#info_win#close()
nnoremap <silent> <Plug>(grammarous-fixall) :call grammarous#fixall(b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-fixit) :call grammarous#fixit(grammarous#get_error_at(getpos('.')[1 : 2], b:grammarous_result))
nnoremap <silent> <Plug>(grammarous-reset) :call grammarous#reset()
nnoremap <silent> <Plug>(grammarous-open-info-window) :call grammarous#create_update_info_window_of(b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-move-to-info-window) :call grammarous#create_and_jump_to_info_window_of(b:grammarous_result)
nnoremap <Plug>SpeedDatingFallbackDown 
nnoremap <Plug>SpeedDatingFallbackUp 
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
nnoremap <silent> <Plug>unimpairedTPNext :exe "p".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPPrevious :exe "p".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
onoremap <Plug>(operator-gotoend) g@
onoremap <Plug>(operator-gotostart) g@
onoremap <Plug>(operator-insert-a) g@
onoremap <Plug>(operator-insert-i) g@
nnoremap <silent> <Plug>(ExpressRepeat) .
onoremap <Plug>(operator-dash) g@
onoremap <Plug>(operator-helpgrep) g@
onoremap <Plug>(operator-ctrlsf) g@
onoremap <Plug>(operator-ggrep) g@
onoremap <Plug>(operator-ack) g@
onoremap <Plug>(operator-ag-word) g@
onoremap <Plug>(operator-ag) g@
xnoremap <silent> <SNR>101_GrepOperatorWithFilenamePrompt :call grep_operator#GrepOperatorWithFilenamePrompt(visualmode())
nnoremap <silent> <SNR>101_GrepOperatorWithFilenamePrompt :set operatorfunc=grep_operator#GrepOperatorWithFilenamePromptg@
xnoremap <silent> <SNR>101_GrepOperatorOnCurrentDirectory :call grep_operator#GrepOperatorOnCurrentDirectory(visualmode())
nnoremap <silent> <SNR>101_GrepOperatorOnCurrentDirectory :set operatorfunc=grep_operator#GrepOperatorOnCurrentDirectoryg@
nnoremap <silent> <Plug>LionRepeat .
onoremap <Plug>(operator-breakline-textwidth) g@
onoremap <Plug>(operator-breakline-manual) g@
xnoremap <silent> <Plug>(operator-jerk-backward-partial) :call operator#jerk#precedent('backward_partial', 'x')gvg@
nnoremap <silent> <Plug>(operator-jerk-backward-partial) :call operator#jerk#precedent('backward_partial', 'n')g@
xnoremap <silent> <Plug>(operator-jerk-forward-partial) :call operator#jerk#precedent('forward_partial', 'x')gvg@
nnoremap <silent> <Plug>(operator-jerk-forward-partial) :call operator#jerk#precedent('forward_partial', 'n')g@
xnoremap <silent> <Plug>(operator-jerk-backward) :call operator#jerk#precedent('backward', 'x')gvg@
nnoremap <silent> <Plug>(operator-jerk-backward) :call operator#jerk#precedent('backward', 'n')g@
xnoremap <silent> <Plug>(operator-jerk-forward) :call operator#jerk#precedent('forward', 'x')gvg@
nnoremap <silent> <Plug>(operator-jerk-forward) :call operator#jerk#precedent('forward', 'n')g@
onoremap <Plug>(operator-wwwsearch) g@
nnoremap <silent> <Plug>(_SubversiveSubstituteRangeSecondary) :set opfunc=subversive#lineRangeMotion#selectRangeMotiong@
nnoremap <silent> <Plug>(SubversiveSubvertWordRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 1, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubvertRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 0, 0):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubvertRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 0, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubvertWordRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 1, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubvertRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 0, 0):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubvertRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 0, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeNoPromptConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 1, 1):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPromptConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 1):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPromptConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 1):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 1, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 0):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPrompt) :call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 1, 1):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 1):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubstituteRangeConfirm) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 1):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 1, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeDelete) :call subversive#lineRangeMotion#preSubstitute("_", 1, 0, 0, 0):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubstituteRangeDelete) :call subversive#lineRangeMotion#preSubstitute("_", 1, 0, 0, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
xnoremap <silent> <Plug>(SubversiveSubstituteRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 0):call subversive#lineRangeMotion#selectTextMotion('char', 1)
nnoremap <silent> <Plug>(SubversiveSubstituteRange) :call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 0):set opfunc=subversive#lineRangeMotion#selectTextMotiong@
nnoremap <silent> <Plug>(SubversiveSubstituteLine) :call subversive#singleMotion#substituteLineSetup(v:register, v:count):set opfunc=subversive#singleMotion#substituteLineg@l
nnoremap <silent> <Plug>(SubversiveSubstituteToEndOfLine) :call subversive#singleMotion#substituteToEndOfLineSetup(v:register, v:count):set opfunc=subversive#singleMotion#substituteToEndOfLineg@l
xnoremap <silent> <Plug>(SubversiveSubstitute) :call subversive#singleMotion#preSubstitute(v:register, 1)`<:set opfunc=subversive#singleMotion#substituteMotiong@`>
nnoremap <silent> <Plug>(SubversiveSubstitute) :call subversive#singleMotion#preSubstitute(v:register, 0):set opfunc=subversive#singleMotion#substituteMotiong@
nnoremap <silent> <Plug>RadicalCoerceToBinary :call radical#CoerceToBase(2, v:count)
nnoremap <silent> <Plug>RadicalCoerceToOctal :call radical#CoerceToBase(8, v:count)
nnoremap <silent> <Plug>RadicalCoerceToHex :call radical#CoerceToBase(16, v:count)
nnoremap <silent> <Plug>RadicalCoerceToDecimal :call radical#CoerceToBase(10, v:count)
xnoremap <silent> <Plug>RadicalView :call radical#VisualView(v:count, visualmode())
nnoremap <silent> <Plug>RadicalView :call radical#NormalView(v:count)
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
snoremap <BS> "_c
onoremap <Plug>(operator-append) g@
noremap <silent> <expr> <Plug>(asterisk-gz#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-gz*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
nnoremap <silent> <Plug>(easymotion-overwin-w) :call EasyMotion#overwin#w()
nnoremap <silent> <Plug>(easymotion-overwin-line) :call EasyMotion#overwin#line()
nnoremap <silent> <Plug>(easymotion-overwin-f2) :call EasyMotion#OverwinF(2)
nnoremap <silent> <Plug>(easymotion-overwin-f) :call EasyMotion#OverwinF(1)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
xnoremap <silent> <expr> <Plug>(YoinkYankPreserveCursorPosition) yoink#startYankPreserveCursorPosition()
nnoremap <silent> <expr> <Plug>(YoinkYankPreserveCursorPosition) yoink#startYankPreserveCursorPosition()
nnoremap <silent> <Plug>(YoinkPostPasteToggleFormat) :call yoink#postPasteToggleFormat()
nnoremap <silent> <Plug>(YoinkPaste_P) :call yoink#setupPaste('P', v:register, v:count):set opfunc=yoink#pasteg@l
nnoremap <silent> <Plug>(YoinkPaste_p) :call yoink#setupPaste('p', v:register, v:count):set opfunc=yoink#pasteg@l
nnoremap <silent> <Plug>(YoinkPostPasteSwapBack) :call yoink#postPasteSwap(1)
nnoremap <silent> <Plug>(YoinkPostPasteSwapForward) :call yoink#postPasteSwap(-1)
nnoremap <silent> <Plug>(YoinkRotateBack) :call yoink#rotateThenPrint(1)
nnoremap <silent> <Plug>(YoinkRotateForward) :call yoink#rotateThenPrint(-1)
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
nnoremap <Plug>CtrlSFQuickfixPrompt :CtrlSFQuickfix 
nnoremap <Plug>CtrlSFPrompt :CtrlSF 
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <silent> <Plug>ScripteaseSynnames :exe scriptease#synnames_map(v:count)
onoremap <SNR>48__ _
xnoremap <expr> <Plug>ScripteaseFilter scriptease#filterop()
nnoremap <expr> <Plug>ScripteaseFilter scriptease#filterop()
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, ''])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, ''])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectFunction', [v:false, visualmode()])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectFunction', [v:true, visualmode()])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <Plug>(coc-float-jump) :call       coc#util#float_jump()
nnoremap <Plug>(coc-float-hide) :call       coc#util#float_hide()
nnoremap <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <Plug>(coc-references) :call       CocAction('jumpReferences')
nnoremap <Plug>(coc-type-definition) :call       CocAction('jumpTypeDefinition')
nnoremap <Plug>(coc-implementation) :call       CocAction('jumpImplementation')
nnoremap <Plug>(coc-declaration) :call       CocAction('jumpDeclaration')
nnoremap <Plug>(coc-definition) :call       CocAction('jumpDefinition')
nnoremap <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     '', v:true)
vnoremap <Plug>(coc-range-select-backword) :call       CocAction('rangeSelect',     visualmode(), v:false)
vnoremap <Plug>(coc-range-select) :call       CocAction('rangeSelect',     visualmode(), v:true)
xnoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
nnoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
nnoremap <silent> <Plug>ZoomWin :sil call ZoomWin#ZoomWin()
nnoremap <silent> <SNR>30_quit :call fontsize#quit()
nnoremap <silent> <SNR>30_setDefault :call fontsize#setDefault()
nnoremap <silent> <SNR>30_default :call fontsize#default()
nnoremap <silent> <SNR>30_dec :call fontsize#dec()
nnoremap <silent> <SNR>30_inc :call fontsize#inc()
nnoremap <silent> <SNR>30_begin :call fontsize#begin()
omap <SNR>21_success:/  <Plug>(easymotion-s2)
omap <SNR>21_success: / <Plug>(easymotion-s2)
onoremap <Plug>(arpeggio-default:/) /
onoremap <Plug>(arpeggio-default: )  
vmap <SNR>21_success:/  <Plug>(easymotion-s2)
vmap <SNR>21_success: / <Plug>(easymotion-s2)
vnoremap <Plug>(arpeggio-default:/) /
vnoremap <Plug>(arpeggio-default: )  
nmap <SNR>21_success:/  <Plug>(easymotion-s2)
nmap <SNR>21_success: / <Plug>(easymotion-s2)
nnoremap <Plug>(arpeggio-default:/) /
nnoremap <silent> <Plug>(file-explorer)g :silent NERDTreeVCS
nnoremap <silent> <Plug>(file-explorer)f :silent NERDTreeFind
nnoremap <silent> <Plug>(file-explorer)c :silent NERDTreeClose
nnoremap <silent> <Plug>(file-explorer)o :silent NERDTree
nnoremap <silent> <Plug>(file-explorer)x :silent NERDTreeToggle
nmap <SNR>21_success:x  <Plug>(file-explorer)
nmap <SNR>21_success: x <Plug>(file-explorer)
nnoremap <Plug>(arpeggio-default:x) x
nnoremap <Plug>(find)t :CtrlSFToggle
nmap <Plug>(find)s <Plug>CtrlSFPwordPath
nmap <Plug>(find)w <Plug>CtrlSFCwordPath
vmap <Plug>(find)F <Plug>CtrlSFVwordExec
vmap <Plug>(find)f <Plug>CtrlSFVwordPath
nmap <Plug>(find)f <Plug>CtrlSFPrompt
nmap <SNR>21_success:f  <Plug>(find)
nmap <SNR>21_success: f <Plug>(find)
nnoremap <Plug>(edit)f :CtrlP
nnoremap <Plug>(edit)r :CtrlPMRUFiles
nmap <SNR>21_success:e  <Plug>(edit)
nmap <SNR>21_success: e <Plug>(edit)
nnoremap <Plug>(arpeggio-default:e) e
nnoremap <Plug>(arpeggio-default: )  
nmap <SNR>21_success:fw o
nmap <SNR>21_success:wf o
nnoremap <Plug>(arpeggio-default:f) f
nnoremap <silent> <SNR>21_success:qw :wincmd q
nnoremap <silent> <SNR>21_success:wq :wincmd q
nnoremap <Plug>(arpeggio-default:q) q
nnoremap <silent> <SNR>21_success:lw :wincmd l
nnoremap <silent> <SNR>21_success:wl :wincmd l
nnoremap <Plug>(arpeggio-default:l) l
nnoremap <silent> <SNR>21_success:kw :wincmd k
nnoremap <silent> <SNR>21_success:wk :wincmd k
nnoremap <Plug>(arpeggio-default:k) k
nnoremap <silent> <SNR>21_success:jw :wincmd j
nnoremap <silent> <SNR>21_success:wj :wincmd j
nnoremap <Plug>(arpeggio-default:j) j
nnoremap <silent> <SNR>21_success:hw :wincmd h
nnoremap <silent> <SNR>21_success:wh :wincmd h
nnoremap <Plug>(arpeggio-default:h) h
nnoremap <Plug>(arpeggio-default:w) w
map <S-Insert> <MiddleMouse>
imap S <Plug>ISurround
imap s <Plug>Isurround
imap <NL> <Plug>(coc-snippets-expand-jump)
imap  <Plug>(coc-snippets-expand)
inoremap <expr>  pumvisible() ? "\" : "\u\"
imap  <Plug>Isurround
imap & <Plug>ragtagXmlV
imap % <Plug>ragtagUrlV
imap & <Plug>ragtagXmlEncode
imap % <Plug>ragtagUrlEncode
imap / </<Plug>ragtagHtmlComplete
imap H <Plug>ragtagHtmlComplete
cabbr rename =getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/.backup
set clipboard=unnamedplus
set diffopt=internal,filler,vertical
set directory=~/.vim/.swap
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=vert:|,fold:-,vert:\\
set formatoptions=crqlwt
set grepprg=rg\ --color=never
set guifont=Inconsolata\ Nerd\ Font\ Mono\ 15
set guioptions=aegit
set helplang=en
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set matchtime=2
set mouse=a
set nrformats=alpha
set previewheight=25
set pyxversion=3
set ruler
set runtimepath=~/.config/coc/extensions/node_modules/coc-snippets,~/.vim,~/.vim/plugged/vim-arpeggio/,~/.vim/plugged/vim-hardtime/,~/.vim/plugged/jellybeans.vim/,~/.vim/plugged/vim-corvine/,~/.vim/plugged/CSApprox/,~/.vim/plugged/vim-fontsize/,~/.vim/plugged/ZoomWin/,~/.vim/plugged/vim-peekaboo/,~/.vim/plugged/comfortable-motion.vim/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-airline-themes/,~/.vim/plugged/vim-devicons/,~/.vim/plugged/vim-ragtag/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/vim-headerguard/,~/.vim/plugged/codi.vim/,~/.vim/plugged/vim-enmasse/,~/.vim/plugged/vim-scriptease/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ctrlsf.vim/,~/.vim/plugged/nerdtree/,~/.vim/plugged/fzf.vim/,~/.vim/plugged/rename.vim/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-merginal/,~/.vim/plugged/vim-yoink/,~/.vim/plugged/undotree/,~/.vim/plugged/vim-arduino-syntax/,~/.vim/plugged/typescript-vim/,~/.vim/plugged/vim-qml/,~/.vim/plugged/vim-easymotion/,~/.vim/plugged/vim-asterisk/,~/.vim/plugged/vim-operator-user/,~/.vim/plugged/vim-operator-append/,~/.vim/plugged/vim-titlecase/,~/.vim/plugged/vim-sort-motion/,~/.vim/plugged/vissort/,~/.vim/plugged/vim-cutlass/,~/.vim/plugged/vim-crunch/,~/.vim/plugged/vim-selection/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-abolish/,~/.vim/plugged/vim-magnum/,~/.vim/plugged/vim-radical/,~/.vim/plugged/vim-subversive/,~/.vim/plugged/vim-wwwsearch/,~/.vim/plugged/vim-operator-jerk/,~/.vim/plugged/vim-operator-breakline/,~/.vim/plugged/vim-exchange/,~/.vim/plugged/vim-lion/,~/.vim/plugged/vim-grep-operator/,~/.vim/plugged/vim-operator-gsearch/,~/.vim/plugged/vim-express/,~/.vim/plugged/vim-sendtowindow/,~/.vim/plugged/vim-operator-insert/,~/.vim/plugged/vim-operator-goto/,~/.vim/plugged/vim-unimpaired/,~/.vim/plugged/vim-speeddating/,~/.vim/plugged/vim-grammarous/,~/.vim/plugged/vim-better-whitespace/,~/.vim/plugged/vim-indent-object/,~/.vim/plugged/vim-textobj-user/,~/.vim/plugged/vim-textobj-entire/,~/.vim/plugged/vim-textobj-line/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-textobj-function/,~/.vim/plugged/vim-textobj-comment/,~/.vim/plugged/vim-textobj-between/,~/.vim/plugged/vim-textobj-variable-segment/,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/plugged/vim-arpeggio/after,~/.vim/plugged/CSApprox/after,~/.vim/plugged/ctrlsf.vim/after,~/.vim/plugged/vim-textobj-function/after,~/.vim/after
set shiftwidth=4
set shortmess=filnxtToOSA
set showmatch
set noshowmode
set smartcase
set softtabstop=4
set nostartofline
set statusline=%{coc#status()}%{get(b:,'coc_current_function','')}
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set tabstop=4
set termencoding=utf-8
set textwidth=80
set undodir=~/.vim/.undo
set undofile
set updatetime=300
set wildignore=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc
set wildmenu
set window=50
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dotfiles/vim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/dotfiles/vim/coc_config.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cnoremap <buffer> <expr> <Plug><cfile> scriptease#cfile()
xmap <buffer> <expr> " peekaboo#peek(v:count1, '"',  1)
nmap <buffer> <expr> " peekaboo#peek(v:count1, '"',  0)
nmap <buffer> <expr> @ peekaboo#peek(v:count1, '@', 0)
nmap <buffer> <silent> K <Plug>ScripteaseHelp
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> <Plug>ScripteaseHelp :exe 'help '.scriptease#helptopic()
imap <buffer> <expr>  peekaboo#peek(1, "\",  0)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^\\s*fu\\%[nction][!\ ]\\s*\\%(s:\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=wcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\%(so\\%[urce]\\|ru\\%[ntime]\\)[!\ ]\ *\\zs[^|]*
setlocal includeexpr=scriptease#includeexpr(v:fname)
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=~/.config/coc/extensions/node_modules/coc-snippets,~/.vim,~/.vim/plugged/vim-arpeggio/,~/.vim/plugged/vim-hardtime/,~/.vim/plugged/jellybeans.vim/,~/.vim/plugged/vim-corvine/,~/.vim/plugged/CSApprox/,~/.vim/plugged/vim-fontsize/,~/.vim/plugged/ZoomWin/,~/.vim/plugged/vim-peekaboo/,~/.vim/plugged/comfortable-motion.vim/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-airline-themes/,~/.vim/plugged/vim-devicons/,~/.vim/plugged/vim-ragtag/,~/.vim/plugged/coc.nvim/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/vim-headerguard/,~/.vim/plugged/codi.vim/,~/.vim/plugged/vim-enmasse/,~/.vim/plugged/vim-scriptease/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ctrlsf.vim/,~/.vim/plugged/nerdtree/,~/.vim/plugged/fzf.vim/,~/.vim/plugged/rename.vim/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-merginal/,~/.vim/plugged/vim-yoink/,~/.vim/plugged/undotree/,~/.vim/plugged/vim-arduino-syntax/,~/.vim/plugged/typescript-vim/,~/.vim/plugged/vim-qml/,~/.vim/plugged/vim-easymotion/,~/.vim/plugged/vim-asterisk/,~/.vim/plugged/vim-operator-user/,~/.vim/plugged/vim-operator-append/,~/.vim/plugged/vim-titlecase/,~/.vim/plugged/vim-sort-motion/,~/.vim/plugged/vissort/,~/.vim/plugged/vim-cutlass/,~/.vim/plugged/vim-crunch/,~/.vim/plugged/vim-selection/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-abolish/,~/.vim/plugged/vim-magnum/,~/.vim/plugged/vim-radical/,~/.vim/plugged/vim-subversive/,~/.vim/plugged/vim-wwwsearch/,~/.vim/plugged/vim-operator-jerk/,~/.vim/plugged/vim-operator-breakline/,~/.vim/plugged/vim-exchange/,~/.vim/plugged/vim-lion/,~/.vim/plugged/vim-grep-operator/,~/.vim/plugged/vim-operator-gsearch/,~/.vim/plugged/vim-express/,~/.vim/plugged/vim-sendtowindow/,~/.vim/plugged/vim-operator-insert/,~/.vim/plugged/vim-operator-goto/,~/.vim/plugged/vim-unimpaired/,~/.vim/plugged/vim-speeddating/,~/.vim/plugged/vim-grammarous/,~/.vim/plugged/vim-better-whitespace/,~/.vim/plugged/vim-indent-object/,~/.vim/plugged/vim-textobj-user/,~/.vim/plugged/vim-textobj-entire/,~/.vim/plugged/vim-textobj-line/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-textobj-function/,~/.vim/plugged/vim-textobj-comment/,~/.vim/plugged/vim-textobj-between/,~/.vim/plugged/vim-textobj-variable-segment/,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/plugged/vim-arpeggio/after,~/.vim/plugged/CSApprox/after,~/.vim/plugged/ctrlsf.vim/after,~/.vim/plugged/vim-textobj-function/after,~/.vim/after
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
set signcolumn=yes
setlocal signcolumn=yes
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.vim
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 81 - ((42 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
81
normal! 07|
tabnext 1
badd +17 ~/dotfiles/vim/coc_config.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSA
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
