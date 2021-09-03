(TeX-add-style-hook
 "rajeev"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("xcolor" "dvipsnames") ("tcolorbox" "many")))
   (TeX-run-style-hooks
    "geometry"
    "mathtools"
    "inputenc"
    "xcolor"
    "titlesec"
    "amsfonts"
    "amsthm"
    "bm"
    "lastpage"
    "fancyhdr"
    "tcolorbox")
   (TeX-add-symbols
    '("recitation" 1)
    '("lecture" 1)
    '("vect" 1)
    '("set" 1)
    '("brak" 1)
    '("pars" 1)
    '("abs" 1)
    '("E" 1)
    "argmin"
    "argmax"
    "CC"
    "FF"
    "NN"
    "QQ"
    "RR"
    "RRN"
    "RRM"
    "ZZ"
    "Real"
    "Img"
    "spn")
   (LaTeX-add-counters
    "lecture"
    "recitation"))
 :latex)

