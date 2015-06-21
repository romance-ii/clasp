(format t "Building cleavir clasp full version~%")
(format t "Loading ASDF...~%")
(require :asdf)
(format t "Loading :clasp-cleavir system~%")
(require :clasp-cleavir)
(load "sys:kernel;cleavir;cmpclasp.lisp")
(clasp-cleavir:compile-clasp :bclasp :cclasp :dont-link t)
(clasp-cleavir:link :init :cclasp)
(core:quit)