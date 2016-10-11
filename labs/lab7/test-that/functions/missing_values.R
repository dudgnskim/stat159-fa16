### Computes the number of missing values
missing_values <- function(x) {
	# Input: numeric vector x
	# Output: the number of missing values
	
	return(sum(is.na(x)))
}