## Matrix Inversion Script - Programming Assignment 2
## for the R programming course at COURSERA

## As matrix inversion is usually a costly computation, with the following
## functions one can save time by retreaving an inverted matrix
## previously computed and stored on the cache.
## If the inverted matrix was not previously computed, these
## functions will compute it and store it on cache for further use.


## The makeCacheMatrix is a function that creates a matrix and can store its inverse on the cache.
## It assumes that the supplied matrix is always invertible!
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        # set is a function that changes the matrix stored in the main function.
        set <- function(y) {
                #  "x <<- y" substitutes the matrix x with y (the input) in the main function (makeCacheMatrix). 
                # If it was "x <- y" it would have substitute the vector x with y only in the set function. 
                x <<- y
                # "m <<- NULL" restores to null the value of the inverse of the matrix m, 
                # because the old inverse of the old matrix is not needed anymore. 
                # The new inverted matrix needs to be recalculated through the function cacheSolve.
                m <<- NULL
        }
        # get is a function that returns the inverted matrix x stored in the main function. Doesn't require any input.
        get <- function() x
        
        # setsolve and getsolve are functions very similar to set and get. 
        # They don't calculate the inverse, they simply 
        # store the value of the input in a variable m into the main function makeCacheMatrix (setsolve) 
        # and return it (getsolve).
        # The input of setsolve, is supposed to be the inverse of the matrix x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        
        #  To store the 4 functions in the function makeCacheMatrix, we need the function list(), 
        # so that when we assign makeCacheMatrix to an object, the object has all the 4 functions.
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}



## The cacheSolve function takes the matrix produced by the previous function,
## makeCacheMatrix, and computes the inverse of it.
## In case an inverse is already stored on the cache, and no changes
## were made to the initial matrix, it will retrieve the stored matrix.
## When using a stored matrix, this function will print out a warning.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # The first thing cacheSolve does is to verify if the value m, stored previously with getsolve, exists and is not NULL.
        m <- x$getsolve()
        # If it exists in memory, it simply returns a message and the value m, that is supposed to be the inverse of the matrix
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        # everything that follows this if() is a sort of else {}. 
        # data gets the vector stored with makeCacheMatrix, 
        data <- x$get()
        # m calculates the inverse of the matrix 
        m <- solve(data, ...)
        # x$setsolve(m) stores it in the object generated assigned with makeCacheMatrix
        x$setsolve(m)
        m
}


# The input of cacheSolve is the object where makeCacheMatrix is stored. 
# Example of usage for a matrix with the numbers c(10,15,25,40), on 2 rows and 2 columns,
# created with
# matrix <- matrix(c(10,15,25,40),2,2)
# Use the following commands to compute and store the inverse of the matrix:
# a <- makeCacheMatrix(matrix)
# cacheSolve(a)


# In order to check the result, we can make:
# solve(matrix)

# If we obtain the same result as with cacheSolve(a), then the functions work!
# If we type cacheSolve(a) once again, it should display the message "getting cached data".



