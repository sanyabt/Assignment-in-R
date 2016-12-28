makeCacheMatrix<-function(x=matrix()){
     inverse<-NULL
     set<-function(y){
          x<<-y
          inverse<<-NULL
     }
     get<-function() x
     setinverse<-function(i) inverse<<-i
     getinverse<-function() inverse
     list(set = set, get = get,
          setinverse
          = setinverse,
          getinverse = getinverse)
}

cacheSolve<-function(x){
     inverse<-x$getinverse()
     if(!is.null(inverse)){
          message("Getting cached data")
          return(inverse)
          
     }
     data<-x$get()
     inverse<-solve(x)
     x$setinverse(inverse)
     inverse
}