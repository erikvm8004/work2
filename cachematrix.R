## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function(w){
			x<<- w
			m<<- NULL
		}
		get <- function() x
		setmatrix <- function(solve) m <<- solve
		getmatrix <- function() m
		list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
	}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getmatrix()
 	if (!is.null(m)) {
      message("se obtubvo datos cachados")
	return (m)
	}
	matrix <- x$get()
	m <- solve(matrix, ...)
	x$setmatrix(m)
	m
}
