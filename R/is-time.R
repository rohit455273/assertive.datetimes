# TODO: add more general is_before, is_after, and fns for lubridate objects
# e.g., is_period_longer_than, is_duration_shorter_than, etc.

#' @rdname is_in_past   
#' @export
is_in_future <- function(x)
{
  x <- coerce_to(x, "POSIXct")
  call_and_name(
    function(x)
    {
      ok <- x > Sys.time()
      set_cause(ok, "in past")
    },
    x
  )
}

#' Is the input in the past/future?
#'
#' Checks to see if the input is a time in the past/future.
#'
#' @param x Input to check.
#' @param na_ignore A logical value.  If \code{FALSE}, \code{NA} values
#' cause an error; otherwise they do not.  Like \code{na.rm} in many
#' stats package functions, except that the position of the failing
#' values does not change.
#' @return The \code{is_*} function return \code{TRUE} if the input is 
#' a time in the future/past.  The \code{assert_*} functions return nothing but
#' throw an error if the corresponding \code{is_*} function returns 
#' \code{FALSE}.
#' @details The current time is determined by \code{Sys.time}, and the 
#' input is coerced to \code{POSIXct} format if necessary.
#' @note Note that the print method for \code{POSIXct} objects means that the
#' cause attribute (in the event of failures) is not shown.  You can still 
#' access it via, e.g., \code{cause(is_in_past(x))}.
#' @seealso \code{\link{Sys.time}}.
#' @examples
#' x <- Sys.time() + c(-1, 100)
#' is_in_past(x)
#' is_in_future(x)
#' @export
is_in_past <- function(x)
{
  x <- coerce_to(x, "POSIXct")
  call_and_name(
    function(x)
    {
      ok <- x < Sys.time()
      set_cause(ok, "in future")
    },
    x
  )
}
