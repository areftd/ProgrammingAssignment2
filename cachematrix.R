## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# browser()
makeCacheMatrix <- function(x = matrix()) { 
    m<-NULL
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    get<-function() x
    setInverse<-function(solve) m<<- solve
    getInverse<-function() m
    list(set=set, get=get,
         setInverse=setInverse,
         getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setInverse(m)
    m
}
