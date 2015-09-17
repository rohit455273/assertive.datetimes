#' @include imports.R

#' @rdname is_in_past
#' @export
assert_all_are_in_future <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                            
  .xname = get_name_in_parent(x)                         
  msg <- gettextf("%s are not all in the future.", .xname)
  assert_engine(
    x, 
    .xname = .xname,
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  ) 
}

#' @rdname is_in_past
#' @export
assert_any_are_in_future <- function(x, na_ignore = FALSE, 
  severity = getOption("assertive.severity", "stop"))
{                        
  .xname = get_name_in_parent(x)                              
  msg <- gettextf("%s are all in the past.", .xname)
  assert_engine(
    is_in_future, 
    x, 
    .xname = .xname,
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
  .xname = get_name_in_parent(x)                                     
  msg <- gettextf("%s are not all in the past.", .xname)
  assert_engine(
    is_in_past, 
    x, 
    .xname = .xname,
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
  .xname = get_name_in_parent(x)                                     
  msg <- gettextf("%s are all in the future.", .xname)
  assert_engine(
    is_in_past, 
    x, 
    .xname = .xname,
    msg = msg, 
    what = "any",
    na_ignore = na_ignore,
    severity = severity
  )  
}
