#' Make a frequency table for a factor
#'
#' @param x factor
#'
#' @return tbl_df
#' @export
#' @examples
#'#' freq_out(iris$Species)
#'

freq_out <- function(x) {
  if(!is.factor(x)) {
    stop('I am so sorry, but this function only works for factors!\n',
         'You have provided an object of class: ', class(x)[1])}

  xdf <- dplyr::data_frame(x)
  dplyr::count(xdf, x)
}


