#' 
#' @param time time for ode solver
#' @param C forest size (units of carbon)
#' @param parms as list with r, g, K, thresh
#' @param r exponential growth rate below threshold canopy closure
#' @param g linear growth rate when canopy closure is reached
#' @param K carrying capacity
#' @param thresh canopy closure threshold
#' @return derivative of forest size with time
#'


forest_growth <- function(time, C, parms) {
  
  if (C < parms$thresh)
  dC = parms$r * C
  
  else 
  dC = parms$g * (1 - C/parms$K) 
  
  return(list(dC))
  
}