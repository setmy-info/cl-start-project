# cl-start-project

[A short, one-line description of the project]

# Overview

[A longer description of the project, optionally with sub-sections like
'Features', 'History', 'Motivation', etc.]

## Usage

## Installation

## Usage, tips and tricks

### Setup

Have to download, install and load quicklisp into SBCL - in (LISP quide)[https://setmy-info.github.io/src/site/markdown/lisp.html].

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

```clojure
(ql:where-is-system "hunchentoot")
```

/home/has/quicklisp/dists/quicklisp/software/hunchentoot-v1.3.0/

## See also

[LISP know how](https://setmy-info.github.io/src/site/markdown/lisp.html)

## Author

* Imre Tabur <info@setmy.info>

## Copyright

Copyright (c) 2022 Imre Tabur <info@setmy.info>

## License

Licensed under the MIT License.
