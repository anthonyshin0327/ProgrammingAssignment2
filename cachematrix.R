## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        } #This sets your cached info 
        get <- function(){
                x
        }#This prints your cached info 
        setInverse <- function(inverse){
                m <<- inverse
        } #This sets your inverse info 
        getInverse <- function(){
                m
        }#This gets your inverse info 
        list(set=set, get=get, setInverse=setInverse,
             getInverse=getInverse)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        mat <- x$get()
        m <- solve(mat, ...)
        x$setInverse(m)
        m
}


