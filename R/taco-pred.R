#' TACO Predictions
#'
#' @param fit a fitted model
#' @param data a dataset
#' @param type 'proba'
#' @param ... for passing parameters to the predict method
#'
#' @returns predictions
#'
#' @export
taco_predict <- \(fit, data, type = 'proba', ...) {
  if (type == 'proba') {
    predictions <- fit$predict_proba(data, ...)
  }
  return(predictions)
}
