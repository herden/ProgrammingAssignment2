## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inversevalue <- NULL
        setvaluematrix <- function(y) {
                x <<- y
                setvaluematrix <<- NULL
        }
        getvaluematrix <- function() x
        setvalueinverse <- function(inv)inversevalue <<- inv
        getinverse <- function() inversevalue
        list(setvaluematrix = setvaluematrix, getvaluematrix = getvaluematrix,
             setvalueinverse  = setvalueinverse ,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inversevalue <- x$getinverse()
        if(!is.null(inversevalue)) {
                message("getting cached data")
                return(inversevalue)
        }
        data <- x$getvaluematrix()
        inversevalue  <- inv(data, ...)
        x$setvalueinverse(inversevalue)
        inversevalue
}
