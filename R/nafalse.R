

#' NA False
#'
#'Changes any NAs in a logical object to be false
#'
#' @param x a logical vector/array etc.
#'
#' @return the result of x & !is.na(x)
#' @export
#'
#' @examples
#' try this
nafalse <- function(x) {
  x & !is.na(x)
}
