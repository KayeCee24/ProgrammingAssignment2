## Put comments here that give an overall description of what your
## functions do

## Set input to 'a' as a matrix
## Set value 'm' to NULL
## changed 'mean' to 'solve'

makeCacheMatrix <- function(a = matrix(sample(1:100,9),3,3)) {
  m <- NULL
  set <- function(y) {
    a <<- y
    m <<- NULL
  }
  get <- function() a
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Changed 'mean' to 'solve'

cacheSolve <- function(a, ...) {
  m <- a$getsolve()
  if(!is.null(m)) {
    message("getting inversed matrix")
    return(m)
  }
  data <- a$get()
  m <- solve(data, ...)
  a$setsolve(m)
  m
}
