#' Reorder Factors w/descending option.
#'
#' Hate having to list all of the factors in reverse order when you JUST WANT TO HAVE THEM IN DESCENDING ORDER!?!
#' Look no further friend! This function will cure was ails you, feed the poor, solve the millenium problems....Well, not really.
#' But it does give you the ability to sort your factors in descending order.
#'
#'
#' @param a factor
#'
#' @return factor
#' @export
#' @examples
#'#' chr_factor(factor(c('BumbleBees', 'Bees', 'Bears', 'Creates', 'Capital', 'For','Unicorns'))
reorder_desc <- function(a) {
  if(!is.factor(a)) {
    stop('I am so sorry, but this function only works for factors!\n',
         'You have provided an object of class: ', class(a)[1])}
  reorder(a, dplyr::desc(a))
}
