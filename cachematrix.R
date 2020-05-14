## Put comments here that give an overall description of what your
## functions do

## The Matrix is generated here

makeCacheMatrix <- function(x = matrix()) {

  
  j <- NULL
  set <- function(y) {
    x <<- y
    j <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) j <<- solveMatrix 
  getInverse <- function() j
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
  
}






## This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

cacheSolve <- function(x, ...) {
       
  j <- x$getInverse()
  if(!is.null(j)) {
    message("getting cached data")
    return(j)
  }
  data <- x$get()
  j <-solve(data)
  x$setInverse(j)
  
  j
  
}
