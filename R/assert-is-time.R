#' @include imports.R

#' @rdname is_in_past
#' @export
assert_all_are_after <- function(x, y, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are not all after %s.", get_name_in_parent(x), format(y))
  assert_engine(
    is_after,
    x, 
    msg = msg, 
    na_ignore = na_ignore,
    severity = severity
  ) 
}

#' @rdname is_in_past
#' @export
assert_any_are_after <- function(x, y, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are all before %s.", get_name_in_parent(x), format(y))
  assert_engine(
    is_after,
    x, 
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  )   
}
 
#' @rdname is_in_past
#' @export
assert_all_are_before <- function(x, y, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are not all before %s.", get_name_in_parent(x), format(y))
  assert_engine(
    is_before,
    x, 
    msg = msg, 
    na_ignore = na_ignore,
    severity = severity
  ) 
}

#' @rdname is_in_past
#' @export
assert_any_are_before <- function(x, y, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are all after %s.", get_name_in_parent(x), format(y))
  assert_engine(
    is_before,
    x, 
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  )   
}
 
#' @rdname is_in_past
#' @export
assert_all_are_in_future <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are not all in the future.", get_name_in_parent(x))
  assert_engine(
    is_in_future,
    x, 
    msg = msg, 
    na_ignore = na_ignore,
    severity = severity
  ) 
}

#' @rdname is_in_past
#' @export
assert_any_are_in_future <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are all in the past.", get_name_in_parent(x))
  assert_engine(
    is_in_future, 
    x, 
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  )   
}
 
#' @rdname is_in_past
#' @export
assert_all_are_in_past <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are not all in the past.", get_name_in_parent(x))
  assert_engine(
    is_in_past, 
    x, 
    msg = msg, 
    na_ignore = na_ignore,
    severity = severity
  )    
}

#' @rdname is_in_past
#' @export
assert_any_are_in_past <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                                                     
  msg <- gettextf("%s are all in the future.", get_name_in_parent(x))
  assert_engine(
    is_in_past, 
    x, 
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  )  
}
