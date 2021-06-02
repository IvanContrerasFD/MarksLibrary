# Marks Library

This repository contains a new library for computation with intervals and marks in the frame of Matlab.

The tool is based on the following files:

1. File " interval.p" which is the Matlab script to perform guaranteed interval computations using modal intervals.

    A modal interval is a pair formed by an ordinary interval $[a_1,a_2]'$ in R and a first order logic quantifier, universal " or existential $\exists$, for example I=([a1,a2]',"). 
    
    In canonical notation:
    - I=[min(a1,a2),max(a1,a2)] if the associated quantifier is $\exists$
    - I=[max(a1,a2),min(a1,a2)] if the associated quantifier is \quad\forall
    
   The numbers $a_1$ and $a_2$ are the bounds of $I$. For example, $[3,5]$ is the modal interval $([3,5]',\exists)$ and [2,-4] is the modal interval $([-4,2]',\forall)$. The set of modal intervals is I*(R) and the association of a logical quantifier with an ordinary interval [a1,a2]' provides logical meaning to the interval computations by means of first order logical formulae.
   
   Let a real function f from $R^n$ to $R$ be with a syntactic tree, where the nodes are the operators, the leaves are the variables and constants, and the branches define the domain of each operator. Function f can be operationally extended to a syntactical interval function $fR$ from the set of the ndimensional modal intervals $I *(R^n)$ to $I *(R)$, by using the computational program implicitly defined by the syntactic tree of the expression of f, transforming the variables and constants into their corresponding intervals and the real operators into their interval extensions (see Chapters 3 and 5 in the book "Modal Interval Analysis" https://link.springer.com/book/10.1007/978-3-319-01721-1).


2. File “Tests_interval” is an example containing several interval computations to test the extensions to modal intervals of the following operators:
    
        - One-variable operators: width, dual, abs, exp, ln, power(x,n), power(x,r), sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh.   
        - Two variable operators: join, meet, prop, impr, min, max, +, -, *, /, min, max  
        - Relational operators: =, <=, >= 
  
  Furthermore, interval input-output commands are included:
      - Input for a modal interval $I$ is $I=interval(a1,a2)$
    
3. File "mark.p" is the Matlab script to perform computations with marks.

    $A$ mark $m$ in $R$ is a tuple of five real numbers:
    
    $m=<center c,tolerance tt,granularity gg,base bb,number of digits nn>$

    where the tolerance tt is previously fixed, bb and nn are specific of the digital scale.
    
    The numbers, $tt$, $nn$ and $bb$ define the type of the mark. For a given type, the mark is defined by center and granularity $m=<c,gg>$. 
    
The set of marks of a given type is denoted by $M(tt,nn)$ because the base bb is often irrelevant.
Let a continuous real function $f$ from $R^n$ to $R$ be with a syntactic tree, where the nodes are the operators, the leaves are the variables and constants, and the branches define the domain of each operator.
Function f can be operationally extended to a mark function $f_M$ from the set of the n-dimensional marks $M(tt,nn)^n$ to $M(tt,nn)$, by using the computational program implicitly defined by the syntactic tree of the expression of $f$, transforming the variables and constants into their corresponding marks
and the real operators into their mark extensions (see Chapter 8 in the book "Modal Interval Analysis").


4. File “Tests_mark” is an example containing several interval computations to test the extensions to marks of the following operators:

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
   <span style="color:blue"> global </span> tt; <span style="color:blue"> global </span> nn; <span style="color:blue"> global </span> bb; <span style="color:blue"> global </span> alpha
    
    
In fact, an interval and a mark are computationally specified by two numbers: left and right bounds
for intervals and center and granularity in the case of marks. They are similar but the rules which
define their operations are different.
