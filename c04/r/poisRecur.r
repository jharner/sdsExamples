recur.pois <- function(y, lambda){
if(y==0)
	return(exp(-lambda))
else
	return(recur.pois(y-1, lambda) * (lambda/y))
}