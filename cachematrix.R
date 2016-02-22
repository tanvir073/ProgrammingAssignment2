## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinver <- function(inver) m <<- inver
  getinver <- function() m
  list(set = set, get = get,
       setinvers = setinver,
       getinvers = getinver)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinvers()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvers(m)
  m
}
