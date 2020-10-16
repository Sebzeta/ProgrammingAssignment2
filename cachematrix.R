## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Special matrix to "cache" the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setvalue <- function(solvedmatrix) m <<- solvedmatrix
  getvalue <- function() m
  list(set = set, get = get, setvalue = setvalue, getvalue = getvalue)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getvalue()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
  data <- x$get()
  m <- solve(data)
  x$setvalue(m)
  m
}
