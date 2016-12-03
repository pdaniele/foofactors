#' Factor should be character
#'
#' Check to see if a factor should be character. The function checks whether the length of the
#' factor is equal to the length of the unique values.
#'
#'
#' @param a factor
#'
#' @return logical
#' @export
#' @examples
#'#' chr_factor(factor(c('BumbleBees', 'Bees', 'Bears'))

chr_factor <- function(a){
  if(!is.factor(a)) {
    stop('I am so sorry, but this function only works for factors!\n',
         'You have provided an object of class: ', class(a)[1])}
  length(a) == length(unique(a))
}
