 # Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#   https://annakrystalli.me/rrresearchACCE20/packaging-functionality.html#create-your-first-package
#   or
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Hello World!
#'
#' Print hello greeting
#' @return prints hello greeting to console
#' @export
#'
#' @examples
#' hello()
hello <- function() {
  print("Hello, world!")
}
