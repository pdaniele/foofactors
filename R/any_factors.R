#' Check a dataframe for factors!
#'
#' Factors are sneaky little buggers. The stealth-factor is a constant source of annoyance. Use this to check if your
#' dataframe contains any factors you don't expect.
#'
#'
#' @param a dataframe
#'
#' @return vector
#' @export
#' @examples
#'#' any_factors(iris)
#'#' any_factors(mtcars)

any_factors <- function(a){
  if(!is.data.frame(a)) {
    stop('I am so sorry, but this function only works for Dataframes!\n',
         'You have provided an object of class: ', class(a)[1])}
  names(Filter(is.factor, a))
}

