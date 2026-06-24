.pkg_env <- new.env()

.pkg_env$taco <- NULL

.onLoad <- function(...) {
  reticulate::py_require("taco@https://github.com/machinelearningnuremberg/TACO.git")
  .pkg_env$taco <- reticulate::import(
    "taco",
    delay_load = TRUE
  )
}