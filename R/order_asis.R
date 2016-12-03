#' Order Factors Based on order in Data
#'
#' Ever just wish R would order things in the order they appear? I do. I also wish factors made some friggen sense.
#' I can't help factors make anymore sense, but this function will order factors in the order they appear in the data!
#'
#' @param a vector
#'
#' @return factor
#' @export
#' @examples
#'#' order_asis(mtcars$cyl)

order_asis <- function(a) {
  if(!is.vector(a)) {
    stop('I am so sorry, but this function only works for Vectors!\n',
         'You have provided an object of class: ', class(a)[1])}
  factor(a, levels=unique(a))
}

## Found help here http://stackoverflow.com/questions/24157526/order-factor-levels-in-order-of-appearance-in-data-set

