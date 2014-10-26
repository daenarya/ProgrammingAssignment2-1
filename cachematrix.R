## function to create a matrix, find the inverse, and cache it.
makeCacheMatrix <- function(x = mat.or.vec()) { 
        s <- NULL
        set <- function(y) {                    ## set the function to a variable  
                x <<- y
                s <<- NULL
        }
        get <- function() x                     ## get the matrix 'x'
        setInverse <- function(solve) s <<- solve  ## solve the inverse of the matrix and cache it in 's'
        getInverse <- function() s                 ## get the inverse of the matrix 'x'
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Create function to Cache the inverse of a matrix
cacheSolve <- x$getInverse()              
if(!is.null(s)) {                          ## check to see if the matrix is already been calculated 
        message("getting cached data")     
        return(s)                          ## return the cached data
}
data <- x$get()                            ## if answer isn't cached, get the matrix 'x'
s <- solve(data, ...)                      ##  get the inverse of the matrix 'x'
x$setInverse(s)                            ## cache the answer 
s                                          ## print the answer 
}
