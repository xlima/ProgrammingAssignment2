## Put comments here that give an overall description of what your
## functions do:
## As matrix inversion is usually a costly computation, with these
## functions one can save time by retreaving an inverted matrix
## previously computed and stored on the cache.
## If the inverted matrix was not previously computed, these
## functions will compute it and store it on cache for further use.

## Write a short comment describing this function
## This function creates a matrix and can store its inverse on the cache.

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function:
## The cacheSolve function takes the matrix produced by the previous function,
## makeCacheMatrix, and computes the inverse of it.
## In case an inverse is already stored on the cache, and no changes
## were made to the initial matrix, it will retrieve the stored matrix.
## When using a stored matrix, this function will print out a warning.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
