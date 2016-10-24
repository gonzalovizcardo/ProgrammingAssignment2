## This function creates a matrix object that can cache its inverse
## The benefit of this is that inversion of matrices is typically
## complex computation

## 

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

set <- function(y) {

x <<- y

inv <<- NULL

}

get <- function() x

setinv <- function(invers) inv <<- invers

getinv <- function() inv

list(set = set, get = get, setinv = setinv, getinv = getinv)

}

}


## This function computers the inverse of the matrix referenced above in makeCacheMatrix.. 

cacheSolve <- function(x, ...) {
      inv <- x$getinv()

if(!is.null(inv)) {

message("getting cached data")

return(inv)

}

data <- x$get()

inv <- solve(data)

x$setinv(inv)

inv

}

}
