;;; tango-dark-theme.el --- Tango-based custom theme for faces

;; Copyright (C) 2010-2015 Free Software Foundation, Inc.

;; Authors: Chong Yidong <cyd@stupidchicken>
;;          Jan Moringen <jan.moringen@uni-bielefeld.de>

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary

;; The colors in this theme come from the Tango palette, which is in
;; the public domain: http://tango.freedesktop.org/

;;; Code:

(deftheme Dtango
  "Face colors using the Tango palette (dark background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))
      ;; Tango palette colors.
      (func-1 "#CCFF66") (butter-2 "#edd400") (butter-3 "#c4a000")
      (var-1  "#FFFFFF") (orange-2 "#f57900") (orange-3 "#ce5c00")
      
      (string-1 "#FFFFFF") (choc-2  "#c17d11") (choc-3  "#8f5902")
      (cham-1   "#8ae234") (comment-1 "grey50") (cham-3 "#4e9a06") 
      (blue-1   "#729fcf") (blue-2 "#3465a4")  (blue-3 "#204a87") 
      (builtin-1 "#bf8dfb") (plum-2 "#a4a4fd") (plum-3 "#8b8bfb") ;;builtin-1 #e090d7
      (red-1   "#ef2929")  (red-2  "#cc0000")  (red-3  "#a40000")
      (alum-1  "#eeeeec")  (alum-2 "#d3d7cf")  (alum-3 "#babdb6")
      (alum-4  "#888a85")  (alum-5 "#808080")  (alum-6 "#2b303b")
      ;; Not in Tango palette; used for better contrast.
      (keyword-1  "#f9067f")  (type-1   "#6666CC")  (cons-1   "#66CCFF")
      (red-0      "#ff4b4b")  (alum-5.5 "#41423f")  (alum-7   "#2b303b")
      (region-f   "#FFFFFF")  (region-b "#808080")  (cursor-f "#e9e9e9")
      (pre-1      "#f9067f"))
      ;;custom by myself
      ;; region :   二次选择  前景 ： (region-f   "#FFFFFF")  背景： (region-b "#808080")
      ;; cursor-b   光标颜色       (cursor-f "#e9e9e9")
      ;; var-1      变量           (var-1      "#FFFFFF")  
      ;; type-1     类型           (type-1   "#6666CC")
      ;; string-1   字符串         (string-1 "#FFFFFF")
      ;; keyword-1  关键字         (keyword-1  "#f9067f")
      ;; func-1     函数           (func-1   "#CCFF66") 
      ;; cons       常量域作用符   (cons-1   "#66CCFF")
      ;; builtin-1  BIF           (builtin-1  "#bf8dfb")
      ;; comment-1  注释           (comment-1 "grey50")
      
  ;;#FF9966
  (custom-theme-set-faces
   'Dtango
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((((class color) (min-colors 4096))
	       (:foreground ,alum-1 :background ,alum-6))
	      (((class color) (min-colors 256))
	       (:foreground ,alum-1 :background "#222"))
	      (,class
	       (:foreground ,alum-1 :background "black"))))
   `(cursor ((,class (:background ,cursor-f))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,alum-7))))
   `(highlight ((,class (:foreground ,alum-6 :background ,butter-2))))
   `(region ((,class (:background ,region-b  :foreground ,region-f))))
   `(secondary-selection ((,class (:background ,blue-3))))
   `(isearch ((,class (:foreground ,alum-1 :background ,orange-3))))
   `(lazy-highlight ((,class (:background ,choc-3))))
   `(trailing-whitespace ((,class (:background ,red-3))))
   ;; Mode line faces
   `(mode-line ((,class
		 (:box (:line-width -1 :style released-button)
		  :background ,alum-2 :foreground ,alum-6))))
   `(mode-line-inactive ((,class
			  (:box (:line-width -1 :style released-button)
			   :background ,alum-5 :foreground ,alum-1))))
   `(compilation-mode-line-fail ((,class (:foreground ,red-3))))
   `(compilation-mode-line-run  ((,class (:foreground ,orange-3))))
   `(compilation-mode-line-exit ((,class (:foreground ,cham-3))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,keyword-1))))
   `(escape-glyph ((,class (:foreground ,butter-3))))
   `(error ((,class (:foreground ,red-0))))
   `(warning ((,class (:foreground ,var-1))))
   `(success ((,class (:foreground ,cham-1))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,builtin-1))))
   `(font-lock-comment-face ((,class (:foreground ,comment-1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comment-1))))  ;;分隔符 注释
   `(font-lock-doc-face ((t (:foreground ,"#e69138")))) 
   ;'(font-lock-doc-string-face    ((t (:foreground "red"))))
   `(font-lock-negation-char-face ((t (:foreground ,"red" :weight bold)))) ;;否定
   `(font-lock-preprocessor-face ((t (:foreground , pre-1)))) ;;预处理器 
   `(font-lock-warning-face ((t (:foreground ,"red" :weight bold))))
   `(c-annotation-face ((t (:inherit font-lock-constant-face))))
   `(font-lock-constant-face ((,class (:foreground ,cons-1))))
   `(font-lock-function-name-face ((,class (:foreground ,func-1))))
   ;;`(font-lock-regexp-grouping-construct ((t (:foreground ,"red" :weight bold)))) ;正则表达式
   ;;`(font-lock-regexp-grouping-backslash ((t (:foreground ,"red" :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword-1)))) 
   `(font-lock-string-face ((,class (:foreground ,string-1))))
   `(font-lock-type-face ((,class (:foreground ,type-1))))
   `(font-lock-variable-name-face ((,class (:foreground ,var-1))))
   ;;ECB-background
   `(header-line ((,class (:foreground "black" :background "white"))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue-1))))
   `(link-visited ((,class (:underline t :foreground ,blue-2))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:foreground ,builtin-1))))
   `(gnus-group-news-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-news-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-news-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-news-3-low ((,class (:foreground ,comment-1))))
   `(gnus-group-news-4 ((,class (:foreground ,cons-1))))
   `(gnus-group-news-4-low ((,class (:foreground ,choc-2))))
   `(gnus-group-news-5 ((,class (:foreground ,var-1))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-2))))
   `(gnus-group-news-low ((,class (:foreground ,butter-2))))
   `(gnus-group-mail-1 ((,class (:foreground ,builtin-1))))
   `(gnus-group-mail-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-mail-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-mail-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-mail-3-low ((,class (:foreground ,comment-1))))
   `(gnus-group-mail-low ((,class (:foreground ,butter-2))))
   `(gnus-header-content ((,class (:weight normal :foreground ,butter-3))))
   `(gnus-header-from ((,class (:foreground ,butter-2))))
   `(gnus-header-subject ((,class (:foreground ,cham-1))))
   `(gnus-header-name ((,class (:foreground ,blue-1))))
   `(gnus-header-newsgroups ((,class (:foreground ,choc-2))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,blue-1))))
   `(message-header-cc ((,class (:foreground ,butter-3))))
   `(message-header-other ((,class (:foreground ,choc-2))))
   `(message-header-subject ((,class (:foreground ,cham-1))))
   `(message-header-to ((,class (:foreground ,butter-2))))
   `(message-cited-text ((,class (:foreground ,cham-1))))
   `(message-separator ((,class (:foreground ,builtin-1))))
   ;; SMerge faces
   `(smerge-refined-change ((,class (:background ,blue-3))))
   ;; Ediff faces
   `(ediff-current-diff-A ((,class (:background ,alum-5))))
   `(ediff-fine-diff-A ((,class (:background ,blue-3))))
   `(ediff-even-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-current-diff-B ((,class (:background ,alum-5))))
   `(ediff-fine-diff-B ((,class (:background ,choc-3))))
   `(ediff-even-diff-B ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-B ((,class (:background ,alum-5.5))))
   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline ,var-1))))
   `(flyspell-incorrect ((,class (:underline ,red-1))))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,alum-4))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,plum-3))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,choc-3))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,red-3))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,alum-5.5))))
   `(semantic-tag-boundary-face ((,class (:overline ,blue-1))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,red-1)))))

  (custom-theme-set-variables
   'Dtango
   `(ansi-color-names-vector [,alum-7 ,red-0 ,keyword-1 ,func-1
			      ,blue-1 ,builtin-1 ,type-1 ,alum-1])))

(provide-theme 'Dtango)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; tango-dark-theme.el ends here
