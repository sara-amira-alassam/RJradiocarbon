#' Title
#'
#' @param rc_determinations A vector of observed radiocarbon determinations
#' @param rc_sigmas A vector of the radiocarbon determinations
#' uncertainties (1-sigma). Must be the same length as `rc_determinations`.
#' @param calibration_curve A dataframe which must contain one column `calendar_age_BP`, and also
#' columns `c14_age` and `c14_sig` or `f14c` and `f14c_sig` (or both sets).
#' This format matches the curves supplied with this package e.g. [carbondate::intcal20], [carbondate::intcal13],
#' which contain all 5 columns.
#'
#' @param use_F14C_space Whether the calculations are carried out in F14C space (default is TRUE).
#' If FALSE, calculations are carried out in 14C yr BP space.
#'
#' @param n_iter  The number of MCMC iterations (optional). Default is 100,000.
#'
#' @param n_thin  How much to thin the output (optional). 1 is no thinning,
#' a larger number is more thinning. Default is 10. Must choose an integer more
#' than 1 and not too close to `n_iter`, to ensure there are enought samples from
#' posterior to potentially use.
#'
#' @param use_F14C_space Whether the calculations are carried out in F14C space (default is TRUE).
#' If FALSE, calculations are carried out in 14C yr BP space.
#'
#' @param show_progress Whether to show a progress bar in the console during
#' execution. Default is `TRUE`.
#'
#' @param sensible_initialisation Whether to use sensible start values and
#' adaptive prior on \eqn{\mu_{\phi}} and  (A, B).
#' If this is `TRUE` (the default), then all the remaining arguments below are
#' ignored.
#' @param calendar_ages  The initial estimate for the underlying calendar ages
#' (optional). If supplied it must be a vector with the same length as
#' `rc_determinations`.  Required if `sensible_initialisation` is `FALSE`.
#' @param s,h Parameters to define/specify the poisson process rate
#' (jumps and heights)
#'
#' @return
#' @export
#'
#' @examples
PPcalibrate <- function(
    rc_determinations,
    rc_sigmas,
    calibration_curve,
    F14C_inputs = FALSE,
    n_iter = 1e5,
    n_thin = 10,
    use_F14C_space = TRUE,
    show_progress = TRUE,
    sensible_initialisation = TRUE,
    s = NA, h = NA,
    calendar_ages = NA) {
}
