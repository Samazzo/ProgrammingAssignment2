## Put comments here that give an overall description of what your
## functions do

## To make a cachematrix
rm(list=ls())
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
   m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Returning the inverse value

cacheSolve <- function(x) {
  m <- x$getInverse() 
  if(!is.null(m)) {
    return(m)
  }
        ## Return a matrix that is the inverse of 'x'
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
