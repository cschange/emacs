(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (Dtango)))
 '(display-time-mode t)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "YaHei Consolas Hybrid" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
;;'(default ((t (:family "YaHei Consolas Hybrid" :foundry "microsoft" :slant normal :weight normal :height 120 :width normal))))
; (load-theme ' t)
;;-------------------------Custom Start--------------------------------------

;;-------------------------Frame Custom--------------------------------------
(set-frame-width (selected-frame) 180)                ;设置宽度
(set-frame-height (selected-frame) 45)                ;设置高度
(set-frame-position (selected-frame) 150 15)          ;设置左和top间距
;;启动自动最大化(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))
;;-----------------------Frame Custom End-------------------------------------

;;-----------------------功--能--设--置----------------------------------------
(global-linum-mode 'linum-mode)               ; 显示行号
(setq linum-format "%d|")                     ; 行号显示格式
(column-number-mode 1)                        ; 显示列号
(blink-cursor-mode 1)  		              ; 0-光标闪烁
(display-time-mode t)                         ; 显示时间
(setq display-time-24hr-format t)             ; 设置时间为24小时
(setq display-time-day-and-date t)            ; 时间显示包括日期和具体时间
(setq-default cursor-type 'bar)               ; 设置光标为|
(desktop-save-mode 1)                         ; 记住上一次打开的文件
(tool-bar-mode 0)                             ; 取消工具栏
(set-scroll-bar-mode nil)                     ; 取消滚动栏
(setq visible-bell t)                         ; 关闭出错时的提示声
(setq inhibit-startup-message t)              ; 关闭emacs启动时的画面
(setq gnus-inhibit-startup-message t)         ; 关闭gnus启动时的画面
(global-font-lock-mode 1)                     ; 高亮显示区域选择
(setq make-backup-files nil)                  ; 设定不产生备份文件
(setq auto-save-mode nil)                     ; 自动保存模式
(setq-default make-backup-files nil)          ; 不生成临时文件
(setq require-final-newline t)                ; 自动的在文件末增加一新行
(fset 'yes-or-no-p 'y-or-n-p)                 ; 将yes 和 no变成 y-s
(global-visual-line-mode 1)                   ; 去掉换行的小箭头

;;------------------------功--能--设--置--End----------------------------------
;;------------------------全--局--快--捷--键--设--置----------------------------
(global-set-key [f4] 'kill-this-buffer)       ;F4,关闭当前buffer
(global-set-key [f5] 'kill-buffer)            ;Opensuse 不能使用F4
(global-set-key [f9] 'eshell)                 ;打开eshell命令模式
(global-set-key [f12] 'menu-bar-mode)         ;F12开关菜单栏
;;------------------------快--捷--键--设--置--End-------------------------------
;;------------------------语--法--高--亮----------------------------------------
(setq global-font-lock-mode t)                ; 进行语法加亮。
;;c-c++语法高亮设置
;;把c语言风格设置为k&r风格
(add-hook 'c-mode-hook
'(lambda ()
(c-set-style "k&r")))
;;set c++ style as stroustrup style
(add-hook 'c++-mode-hook
'(lambda()
   (c-set-style "stroustrup")))
;;---------------------Frame Switch-----------------------------------------
;;窗口切换快捷键
(global-set-key (kbd "C-<left>") 'windmove-left)    ;左边窗口
(global-set-key (kbd "C-<right>") 'windmove-right)  ;右边窗口
(global-set-key (kbd "C-<up>") 'windmove-up)        ;上边窗口
(global-set-key (kbd "C-<down>") 'windmove-down)    ;下边窗口
;;---------------------Frame  switch End-------------------------------------
;;---------------------About Users--------------------------------------------
(setq user-full-name "cschange")
(setq user-mail-address "imcsch@163.com")
;;---------------------About Users End----------------------------------------
;;-----------------------------语法高亮显示背景和二次选择背景--------------------
;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
;;二次选择设置在themes:region中
;;----------------------------二次选择设置结束----------------------------------
;;-------------------------------定制操作习惯-----------------------------------
(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; 语法高亮。除 shell-mode 和 text-mode 之外的模式中使用语法高亮。
(setq-default auto-fill-function 'do-auto-fill)
 ; Autofill in all modes;;
(setq default-fill-column 120)
;;把 fill-column 设为 120. 这样的文字更好读
(setq scroll-margin 3 scroll-conservatively 10000)
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(show-paren-mode t)
;;打开括号匹配显示模式
(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(setq frame-title-format "cschange@%f") ;cschange@%b%f
;;在标题栏显示buffer名，去掉emacs@xxx.com
(setq uniquify-buffer-name-style 'forward);;好像没起作用
;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的foobar 形式。
(setq auto-image-file-mode t)            ;让 Emacs 可以直接打开和显示图片。
;(auto-compression-mode 1)
;打开压缩文件时自动解压缩。

;;------------------------ -定--制--操--作--习--惯--End-----------------------
;;--------------------------自--动--补--全--括--号----------------------------
;;括号补全+自动换行匹配格式
(when (fboundp 'electric-pair-mode) 
(electric-pair-mode)) 
(when (eval-when-compile (version< "24.4" emacs-version)) 
(electric-indent-mode 1))
;;支持() {} [] '' ""
;;------------------------自--动--补--全--括--号--End--------------------------
;;----------------------Tabbar--Custon--Start--------------------------------
(add-to-list 'load-path "~/.emacs.d/elpa/tabbar-20141109.143/")
(require 'tabbar)
(tabbar-mode t)
; define all tabs to be one of 3 possible groups: “Emacs Buffer”, “Dired”,
;“User Buffer”.
(set-face-attribute 'tabbar-default nil
                    ;:family "ziti" ;;可设置字体前景背景等
                    ;:background "gre30"
		    :height 1.0)

(global-set-key [C-M-left] 'tabbar-backward-tab)
(global-set-key [C-M-right] 'tabbar-forward-tab)
(global-set-key (kbd "<M-up>")    'tabbar-backward-group)  
(global-set-key (kbd "<M-down>")  'tabbar-forward-group)  
;;---------------------Tabbar--Custon--End----------------------------------
;;---------------------Tab--Custom------------------------------------------
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())
;;-------------------Tab--Custom--End---------------------------------------
;;-------------------ECB--Custon--Start-------------------------------------
(add-to-list 'load-path "~/.emacs.d/elpa/ecb-20140215.114")
(require 'ecb)
(global-set-key (kbd "<f7>") 'ecb-minor-mode)
;(global-set-key (kbd "<f7>") 'ecb-activate)
(setq   ecb-tip-of-the-day nil               ;;不显示每日的提醒功能
               ecb-tree-indent 4 
               ecb-windows-height 0.5 
               ecb-windows-width 0.15 
               ecb-auto-compatibility-check nil 
               ecb-version-check nil) 
;----------------------ECB--Custom--End-------------------------------------
;;---------------------CEDET------------------------------------------------
(require 'cedet)
;;  Helper tools.
(custom-set-variables
 '(semantic-default-submodes (quote (;;global-semantic-decoration-mode          ;;类和函数下加蓝线
                                     ;global-semantic-idle-completions-mode      ;;打开后，光标在某处停留一段时间后，自动提示此处可以补全的内容。
                                     global-semantic-idle-scheduler-mode
                                     global-semanticdb-minor-mode  ;;database
                                     global-semantic-idle-summary-mode  
                                     global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 0.1))
(semantic-mode)
;; smart complitions
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq semanticdb-default-save-directory "~/.emacs.d/semanticdb/")
;;-------------------CEDET--END--------------------------------------------
;;-------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet")
(require 'yasnippet)
(yas-global-mode t)


;;------------------COMPANY-----------------------------------------------
;(add-to-list 'load-path "~/.emacs.d/company")
(autoload 'company-mode "company" nil t)
(setq company-idle-delay  0)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)  ;触发补全的字符数量

(defun my-c-common-mode-hook ()
(setq-local company-backends '((company-clang company-dabbrev-code))))
(add-hook 'c-mode-hook 'my-c-common-mode-hook)
(add-hook 'c++-mode-hook 'my-c-common-mode-hook)
;;---------------------Custom End-------------------------------------------
;;#####################ORG--MODE############################################
;;---------------------ORG--MODE--------------------------------------------
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))   ;;ORG自动换行
(setq org-log-done 'time)
;;#####################Python-Mode#########################################
;;elpy
(package-initialize)
(elpy-enable)
;;ipython
(elpy-use-ipython)

