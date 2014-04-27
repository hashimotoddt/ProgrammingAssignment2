## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {

## setting value for the matrix, will store different variable including cahched.

  p<-Null
  set <- function (y) {
    x<<-y
    p<<-NULL
  }

## getting the value

  get<-function() x

## setting for the inversed matrix

  setmat <-function(mat) p <<-mat
  getmat <-function ()p

## getting the inversed matrix list
  list (set= set, get = get,
        setmat=setmat, getmat=getmat)
}


## Return inversed matrix with cached value

  cacheSolve <- function(x, ...) {
    p<- x$getmat()

## check if already calculated

if(!is.null(p)){
      message("getting cached data")
      return (p)
    }

## calc it if not yet done

    data <-x$get()
    p <- solve(data, ...)

## set the inversed mat

    x$setmat(p)
    p
    
  }
