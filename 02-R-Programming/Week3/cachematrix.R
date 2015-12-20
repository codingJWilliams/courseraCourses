## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## This function creates a special "matrix" object that can cache its inverse.
themessage <-  "getting cache data"
makeCacheMatrix <- function(a = matrix()) {
  theinv <- NULL
  set <- function(y) {
    a <<- y
    inv <<- NULL
  }
  get <- function() a
  setInverse <- function(inverse) theinv <<- inverse
  getInverse <- function() theinv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'x'
  theinv <- a$getInverse()
  if (!is.null(theinv)) {
    message(themesage)
    return(theinv)
  }
  mat <- a$get()
  theinv <- solve(mat, ...) ##solves mat
  a$setInverse(theinv)
  theinv ##returns the inverse
}