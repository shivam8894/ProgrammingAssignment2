## As we know that Inversing a matrix is a difficult compute and it becomes time consuming if have to perfromed multiple times 
## So, We have to perfrom caching of matrix inversion
## And the functions below will help us in doing so.

##The first function, makeVector creates a list containing a function to

##1.set the value of the  matrix 
##2.get the value of the  matrix
##3.set the value of the inverse matrix
##4.get the value of the inverse matrix

makeCacheMatrix <- function(m = matrix()) {
 inv<-NULL  
 set<-function(p){  
 m<<-p  
 inv<<-NULL  
 }  
 get<-function() m  
 setin<-function(inv)inv<<-in  
 getin<-function() inv
 list(set=set,get=get,setinverse=setin,getinverse=getin) 

}


## Write a short comment describing this function

   cacheSolve<-function(p,...)  
 {  
 inv<-p$getin()  
 if(!is.null(inv))  
 {  
 message("getting cached data.")  
 return(inv)  
        }  
 data<-p$get()  
 inv<-solve(data)  
 p$setin(inv)  
 inv
 }  
  


