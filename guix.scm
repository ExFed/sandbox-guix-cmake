(use-modules (guix)
             (guix build-system cmake)
             (guix packages)
             (guix licenses))

(define %source-dir (dirname (current-filename)))

(package
  (name "guix-with-cmake")
  (version "0.0.1")
  (source (local-file %source-dir #:recursive? #t))
  (build-system cmake-build-system)
  (synopsis "Guix with CMake")
  (description "Guix wrapper for CMake")
  (license public-domain)
  (home-page "https://example.com"))
