## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  p<-Null
  set <- function (y) {
    x<<-y
    p<<-NULL
  }
  
  get<-function() x
  setmat <-function(mat) p <<-mat
  getmat <-function ()p
  list (set= set, get = get,
        setmat=setmat, getmat=getmat)
}

  cacheSolve <- function(x, ...) {
    p<- x$getmat()
    if(!is.null(p)){
      message("getting cached data")
      return (p)
    }
    data <-x$get()
    p <- solve(data, ...)
    x$setmat(p)
    p
    
  }
