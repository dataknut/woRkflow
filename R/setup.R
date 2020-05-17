#' Set up the project
#'
#' \code{setup} sources env.R in the repo/project top level folder.
#'
#' @author Ben Anderson, \email{b.anderson@@soton.ac.uk}
#' @export
#'
setup <- function() {
  source(here::here("env.R"))
}