*******************************************
*  MATH 5345 - Numerical Optimization   
*  Reinaldo Sanchez - UTEP.  Fall 2009           
*******************************************


Newton's Method Codes

- Content: the following Matlab programs are in this folder
	list.m
	newton.m
	newtonLS.m
	linesearch.m
	runnewtonLS.m

- Description of the programs:

1. list.m		 
    Run list (type list in the command window) to display the list of tested problems and instructions on how to run the problems.

2. newton.m    
    Implementation of the pure Newton's method. 

3. newtonLS.m 	
    Implementation of the globalized Newton's method with linesearch strategy. This program calls the function linesearch.m

4. linesearch.m	
    Implementation of the linesearch stratey for the globalized Newton's method.

5. runnewtonLS.m	
    Driver for running the problems. For example, type runnewtonLS(4,10,2) to solve problem 4, with initial point x0= 10, 
    and using linesearch. It also produces a plot of the function being studied. Instructions on how to run the problems 
    can be read when running list.m ( You can add more test problems by editing this file)

Extra documentation inside each program.