
#' @title Create an Rmd template
#' @description Create an Rmd template in a specified directory
#' @param template [Character] denoting name of the template. See details.
#' @param path [Character] A directory path with write permissions where the template will be created
#' @param name [Character] An optional character denoting name of the template document and it's parent directory. Defaults to same value as "template".
#' @param verbose [Logical] indicating if message is printed to console.
#' @return None
#' @details
#' Possible options for argument "template" are "nbis-report", "nbis-report-demo", "nbis-slide", "nbis-slide-demo".
#' @export
#' @examples
#' \dontrun{
#' mint("nbis-report", "~/Desktop")
#' mint("nbis-report", "~/Desktop", "my-report")
#' }
#'
mint <- function(template = NULL, path = NULL, name = NULL, verbose = TRUE) {
  templates <- c("nbis-report", "nbis-report-demo", "nbis-slide", "nbis-slide-demo")
  if (is.null(template)) stop("Argument 'template' not specified.")
  if (!template %in% c(templates)) stop(paste0("Specified 'template' does not exist. Valid options are: ", paste(templates, collapse = ", "), "."))

  if (is.null(path)) stop("Argument 'path' not specified.")
  if (file.access(path, 0) != 0) stop("Path is not accessible. Check if path exists.")
  if (file.access(path, 1) != 0) stop("Path does not have execute access.")
  if (file.access(path, 2) != 0) stop("Path does not have write access.")
  if (is.null(name)) name <- template

  invisible(file.copy(system.file(paste0("rmarkdown/templates/", template, "/skeleton"), package = "minty"), path, recursive = TRUE))
  file.rename(file.path(path, "skeleton"), file.path(path, name))
  file.rename(file.path(path, name, "skeleton.Rmd"), file.path(path, name, paste0(name, ".Rmd")))

  if (verbose) message(paste0("Template created at ", file.path(path, name), "."))
}
