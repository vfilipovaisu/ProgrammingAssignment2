## These functions cache the inverse of the matrix
##

## This functions creates the cache object
# m is the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<<-function(y){
 
x<<-y
m<<-NULL

}
get<-function () x
setinverse<-function(solve) m<<-solve
getinverse<<-function () m

list(set=set,get=get,setinverse=setinverse,
getinverse=getinverse)


}


## This function calculates the inverse of a matrix

cacheSolve <- function(x, ...) {
  
m<-x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}

data<-x$get()
m<-solve(data,...)
x$setinverse(m)
m
        
}
