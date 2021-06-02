# Marks: a New Interval Tool

This repository contains a new library for computation with intervals and marks in the frame of Matlab.

The tool is based on the following files:

### File "interval.p"
🟢  This file is the Matlab script to perform guaranteed interval computations using modal intervals.

   A modal interval is a pair formed by an ordinary interval [x,y]' in the set of real numbers and a first order logic quantifier, universal or existential. 
   
   See the "readme.pdf" of this repository or the book "Modal Interval Analysis" (Chapters 3 and 5) https://link.springer.com/book/10.1007/978-3-319-01721-1) for more details.

### File "Tests_interval"
🟢 This file is an example containing several interval computations to test the extensions to modal intervals of the following operators:
    
        - One-variable operators: width, dual, abs, exp, ln, power(x,n), power(x,r), sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh.   
        - Two variable operators: join, meet, prop, impr, min, max, +, -, *, /, min, max  
        - Relational operators: =, <=, >= 
  
  
Furthermore, interval input-output commands are included:
        
        - Input for a modal interval is I=interval(x,y)
    
### File "mark.p"    
🟢 This file is the Matlab script to perform computations with marks.

   A mark m in the set of real numbers is a tuple of five real numbers:
    
   ###### m=<c, tt,  gg, bb, nn>
    
   where the tt is the tolerance previously fixed, bb and nn are the base and number of digits specific of the digital scale and, the numbers, tt, nn and bb define the type of the mark. For a given type, the mark is defined by center and granularity m=<c,gg>. 
    
   See the "readme.pdf" of this repository or the book "Modal Interval Analysis" (Chapter 8) https://link.springer.com/book/10.1007/978-3-319-01721-1) for more details.


### File "Tests_mark"    
🟢 This file is an example containing several interval computations to test the extensions to marks of the following operators:

        - One-variable operators; abs, exp, ln, -x, 1/x, power(x,n), power(x,r), sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh, Iv, Ind, Inda, Exsh, Insh.
        - Two variable operators: +, -, *, /, min, max.
        - Relational estrict, material and weak operators: =, <=, >=
        
    Furthermore, interval input-output commands are included:
        - Input for a mark m is m=mark(c,gg)
    
Any Matlab script or marks must be headed by the type of the marks concerned, the tolerance and a parameter 0<alpha £1 (normally 1) which determine a generalized condition of significance for the marks.

    bb=10; % Base of the digital computational scale
    nn=15; % Number of digits
    tt=0.01; % Tolerance
    alpha=1; % Alpha parameter
    global tt; global nn; global bb; global alpha
    
    
In fact, an interval and a mark are computationally specified by two numbers: left and right bounds for intervals and center and granularity in the case of marks. They are similar but the rules which define their operations are different.
