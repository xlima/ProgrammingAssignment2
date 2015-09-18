## Matrix Inversion Script - Programming Assignment 2
## for the R programming course at COURSERA

## As matrix inversion is usually a costly computation, with the following
## functions one can save time by retreaving an inverted matrix
## previously computed and stored on the cache.
## If the inverted matrix was not previously computed, these
## functions will compute it and store it on cache for further use.


## The makeCacheMatrix is a function that creates a matrix and can store its inverse on the cache.
makeCacheMatrix <- function(x = matrix()) {
        
}


## The cacheSolve function takes the matrix produced by the previous function,
## makeCacheMatrix, and computes the inverse of it.
## In case an inverse is already stored on the cache, and no changes
## were made to the initial matrix, it will retrieve the stored matrix.
## When using a stored matrix, this function will print out a warning.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
}
