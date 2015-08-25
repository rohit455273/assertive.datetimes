#' @rdname is_date_string
#' @export
assert_all_are_date_strings <- function(x, format = "%F %T", na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf(
    "%s is not a character vector of dates.", 
    get_name_in_parent(x)
  )
  assert_engine(
    is_date_string, 
    x, 
    format = format,
    msg = msg, 
    na_ignore = na_ignore,
    severity = severity
  )
}

#' @rdname is_date_string
#' @export
assert_any_are_date_strings <- function(x, format = "%F %T", na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf(
    "%s is not a character vector of dates.", 
    get_name_in_parent(x)
  )
  assert_engine(
    is_date_string, 
    x, 
    format = format,
    msg = msg, 
    what = "any", 
    na_ignore = na_ignore,
    severity = severity
  )      
}
