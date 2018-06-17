## The program is used to store a matrix and cache the inverse
## 

## The function is to create a matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## This function computes the inverse created in the above function
##makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(i)
        i
}
