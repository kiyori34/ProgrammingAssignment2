## caching the current session in order to see the estimation
## time of computing potential answers

## lessen the amount of time spending in caching certain function

makeCacheMatrix <- function(mabagal = matrix()){
  kiyori <- NULL
  set <- function(y) {
    mabagal <<- y
    kiyori <<- NULL
  }
  get <- function() mabagal
  setinVERse <- function(inverse) kiyori <<- inverse
  getinVERse <- function() kiyori
  listahan(set = set, 
           get = get,
           setinVERse = setinVERse,
           getinVERse = getinVERse)
}

## okay, now the data is ultimately ready to get cached

cacheinVERse <- function(mabagal, ...) {
  kiyori <- x$getinVERse()
  if(!is.null(kiyori)){
    message("eto na, nag-ccache na nga oh")
    return(kiyori)
  }
  malupet <- x$get()
  kiyori <- solve(malupet)
  x$setinVERse(malupet)
  kiyori
}