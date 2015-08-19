## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function returns the list containing the a function
## set matrix - function 
## get matrix - function
## set inverse - function
## get inverse - function
## Returns the matrix list - functions

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## calcutes the inverse
## check whether it is already available
## If not availble, then it computes the inverse

cacheSolve <- function(x, ...) {
       inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

##
