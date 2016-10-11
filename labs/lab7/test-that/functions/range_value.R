### Computes the range of a numeric vector (i.e. max - min)
range_value <- function(x, na.rm=TRUE) {
	# Input: a numeric vector x
	# Output: the range value, (max - min)

	return(max(x, na.rm=TRUE) - min(x, na.rm=TRUE))
}