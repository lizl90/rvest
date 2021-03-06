#' Extract attributes, text and tag name from html.
#'
#' @return \code{html_attr}, \code{html_tag} and \code{html_text}, a character
#'   vector; \code{html_attrs}, a list.
#' @inheritParams xml2::xml_text
#' @export
#' @examples
#' movie <- read_html("http://www.imdb.com/title/tt1490017/")
#' cast <- html_nodes(movie, "#titleCast span.itemprop")
#' html_text(cast)
#' html_name(cast)
#' html_attrs(cast)
#' html_attr(cast, "class")
html_text <- function(x, trim = FALSE) {
  xml2::xml_text(x, trim = trim)
}

#' @rdname html_text
#' @export
html_name <- function(x) {
  xml2::xml_name(x)
}

#' @rdname html_text
#' @export
html_children <- function(x) {
  xml2::xml_children(x)
}

#' @rdname html_text
#' @export
html_attrs <- function(x) {
  xml2::xml_attrs(x)
}

#' @rdname html_text
#' @param name Name of attribute to retrieve.
#' @param default A string used as a default value when the attribute does
#'   not exist in every node.
#' @export
html_attr <- function(x, name, default = NA_character_) {
  xml2::xml_attr(x, name, default = default)
}

