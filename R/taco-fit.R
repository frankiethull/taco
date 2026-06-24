#' Fit TACO Tabular Foundation Model
#'
#' @param X x training data
#' @param y y training data
#' @param problem_type "classification"
#' @param row_compression_percentage compression percent for rows
#' @param ... for TACO additional parameters
#'
#' @returns a TACO fit
#'
#' @export
taco_fit <- \(
  X,
  y,
  row_compression_percentage = 10,
  problem_type = "classification",
  ...
) {
  if (problem_type == "classification") {
    cls <- .pkg_env$taco$model$tabpfn_arch$taco_classifier$TACOClassifier(
      use_compressor = TRUE,
      row_compression_percentage = row_compression_percentage,
      ...
    )

    fit <- cls$fit(
      X,
      y
    )
  } else if (problem_type == "regression") {
    cli::cli_abort("TACO only supports 'classification' problems")
  }

  return(fit)
}
