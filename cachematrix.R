## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this is a coment
makeCacheMatrix <- function(x = matrix()) {
  m<<-NULL
  set<-function(y){  ## the function set y to global variable x
    x<<-y
    m<<-NULL
  }
  get <- function() x  ## get the matrix 
  setsolve <- function(solve) m <<- solve ## apply solve function over a matrix
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {                     ## checks if the matrix eksist
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m  ## Return a matrix that is the inverse of 'x'
}
