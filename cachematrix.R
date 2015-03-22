## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    
    # change matrix
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    # to check if the matriz has been cached
    get <- function() {
        x
    } 
    # save inverse matrix calculation to cache
    setinverse <- function(z){
        inverse <<- z
    }
    # returns cached inverse matrix
    getinverse <- function (){
        inverse
    }
    # returns special matrix
    list(set=set,
         get=get,   
         setinverse=setinverse, 
         getinverse=getinverse
    )


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if (!is.null(inv)){
            # inverse is cached
            message("Inverse is cached")
            return(inv) 
        }
        # else
        mat<-x$get()
        inv<-solve(mat)   #solve inverse calc
        x$setinverse(inv) # cache inverse calc
        return(i)
}
 

#> x = rbind(c(1, 0,1), c(1,0, -1),c(-1,1,0))
#> m$set(x)
#> cacheSolve(m)
#     [,1] [,2] [,3]
#[1,]  0.5  0.5    0
#[2,]  0.5  0.5    1
#[3,]  0.5 -0.5    0
#> cacheSolve(m)
#Inverse is cached
#     [,1] [,2] [,3]
#[1,]  0.5  0.5    0
#[2,]  0.5  0.5    1
#[3,]  0.5 -0.5    0
        

