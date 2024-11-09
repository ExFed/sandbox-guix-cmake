(use-modules
  (guix)
  (ice-9 popen)
  (ice-9 rdelim)
  (guix build-system cmake)
  (guix packages)
  (guix licenses))

(define %source-dir (dirname (current-filename)))

(define %git-describe
  (read-string (open-pipe "git describe --always --tags --dirty | tr -d '\\n'" OPEN_READ)))

(package
  (name "guix-with-cmake")
  (version %git-describe)
  (source (local-file %source-dir #:recursive? #t))
  (build-system cmake-build-system)
  (synopsis "Guix with CMake")
  (description "Guix wrapper for CMake")
  (license public-domain)
  (home-page "https://example.com"))
