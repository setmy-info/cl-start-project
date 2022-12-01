# cl-start-project

[A short, one-line description of the project]

# Overview

[A longer description of the project, optionally with sub-sections like
'Features', 'History', 'Motivation', etc.]

## Usage

## Installation

## Usage, tips and tricks

### Setup

```sh
mkdir ~/common-lisp
cd ~/common-lisp
curl -O https://beta.quicklisp.org/quicklisp.lisp
curl -O https://beta.quicklisp.org/quicklisp.lisp.asc
gpg --verify quicklisp.lisp.asc quicklisp.lisp
sbcl --load quicklisp.lisp
```

```clojure
(require "asdf")
; if sbcl without --load quicklisp.lisp
; (load "quicklisp.lisp")
(asdf:already-loaded-systems)
(quicklisp-quickstart:install)
(asdf:already-loaded-systems)
(ql:add-to-init-file); Hit enter
(quit)
```

```sh
sbcl
```

```clojure
(asdf:already-loaded-systems)
;; quicklisp should be installed
(load "quicklisp.lisp")
(asdf:already-loaded-systems)
(ql:add-to-init-file)
(asdf:already-loaded-systems)
(quit)
```

### Execution

```sh
sbcl
```

Building with testing part

```clojure
; Load main system
(asdf:already-loaded-systems)
(pushnew (truename "./") ql:*local-project-directories*)
(ql:register-local-projects)
; Or
;(require "cl-start-project")
(ql:quickload :cl-start-project)
(asdf:already-loaded-systems)

; Load tests system
(ql:quickload :rove)
;(require "cl-start-project/tests")
(ql:quickload :cl-start-project/tests)
(asdf:already-loaded-systems)

; Run tests
(rove:run :cl-start-project/tests)

; Make executable
(asdf:make :cl-start-project)
```

## Derive new project

1. Search and replace in all files **cl-start-project** with new project (system) marker.
2. Rename files **cl-start-project.asd**, **cl-start-project.cmd** and **cl-start-project** with project related names.

## See also

[LISP know how](https://setmy-info.github.io/src/site/markdown/lisp.html)

## Author

* Imre Tabur <info@setmy.info>

## Copyright

Copyright (c) 2022 Imre Tabur <info@setmy.info>

## License

Licensed under the MIT License.
