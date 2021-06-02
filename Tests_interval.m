function [var,f,param] = fintervals()

% Script for testing the following operators with intervals:
% width, dual, abs, exp, ln, power(x,n), power(x,r),sin, cos, tan, asin, 
% acos, atan, sinh, cosh, tanh, asinh, acosh, atanh
% join, meet, prop, impr, min, max,+, -, *, /
% <=, >=

  clc
  clear all
  tic

  
  X=interval(1.5,-2.3);   fprintf('X=[%f,%f]\n',X.lower,X.upper);
  Z=width(X);
  fprintf('width(X)=%f\n',Z);
  Z=dual(X);
  fprintf('dual(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=prop(X);
  fprintf('prop(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=impr(X);
  fprintf('impr(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=abs(X);
  fprintf('abs(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=exp(X);
  fprintf('exp(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=-X;
  fprintf('-X=[%f,%f]\n',Z.lower,Z.upper);
  Z=5*X;
  fprintf('5*X=[%f,%f]\n',Z.lower,Z.upper);
pause
  
  X=interval(3.5,2.3);  fprintf('X=[%f,%f]\n',X.lower,X.upper);
  Z=ln(X);
  fprintf('ln(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=power(X,3);
  fprintf('X^3=[%f,%f]\n',Z.lower,Z.upper);
  Z=power(X,-3/5);
  fprintf('X^(-3/5)=[%f,%f]\n',Z.lower,Z.upper);
  Z=1/X;
  fprintf('1/X=[%f,%f]\n',Z.lower,Z.upper);
pause
  
  X=interval(1.5,-2.3);   fprintf('X=[%f,%f]\n',X.lower,X.upper);
  Z=sin(X);
  fprintf('sin(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=cos(X);
  fprintf('cos(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=tan(X);
  fprintf('tan(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=sinh(X);
  fprintf('sinh(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=cosh(X);
  fprintf('cosh(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=tanh(X);
  fprintf('tanh(X)=[%f,%f]\n',Z.lower,Z.upper);
pause
  
  X=interval(0.5,-0.3);   fprintf('X=[%f,%f]\n',X.lower,X.upper);
  Z=asin(X);
  fprintf('asin(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=acos(X);
  fprintf('acos(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=atan(X);
  fprintf('atan(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=asinh(X);
  fprintf('asinh(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=acosh(X);
  fprintf('acosh(X)=[%f,%f]\n',Z.lower,Z.upper);
  Z=atanh(X);
  fprintf('atanh(X)=[%f,%f]\n',Z.lower,Z.upper);
pause  
 
  X=interval(8.8,2.7);    fprintf('X=[%f,%f]\n',X.lower,X.upper);
  Y=interval(-1.5,2.3);   fprintf('Y=[%f,%f]\n',Y.lower,Y.upper);
  Z=X+Y;
  fprintf('X+Y=[%f,%f]\n',Z.lower,Z.upper);
  Z=X-Y;
  fprintf('X-Y=[%f,%f]\n',Z.lower,Z.upper);
  Z=X*Y;
  fprintf('X*Y=[%f,%f]\n',Z.lower,Z.upper);
  Z=X/Y;
  fprintf('X/Y=[%f,%f]\n',Z.lower,Z.upper);
  Z=X&Y;
  fprintf('meet(X,Y)=[%f,%f]\n',Z.lower,Z.upper);
  Z=X|Y;
  fprintf('join(X,Y)=[%f,%f]\n',Z.lower,Z.upper);
  Z=min(X,Y);
  fprintf('min(X,Y)=[%f,%f]\n',Z.lower,Z.upper);
  Z=max(X,Y);
  fprintf('max(X,Y)=[%f,%f]\n',Z.lower,Z.upper);
pause

  if X==Y
    fprintf('X is equal to Y\n');
  end
  if X<=Y
    fprintf('X is less or equal to Y\n');
  end
  if X>=Y
    fprintf('X is greater or equal to Y\n');
  end
  if isin(X,Y)
    fprintf('X is contained in Y\n'); 
  end
  pause
%}


%The extension of the real continuous function 
%f(x,y,z)=exp(x+y)+3^(1/2)*sqrt(x^2+y^(2/3))/sin(z-y)
%to the intervals X=[3,-1.9], Y=[2.3,pi/4] Z=[-0.3,-0.1] is
  X=interval(3,-1.5);
  Y=interval(2.3,pi/4);
  Z=interval(-0.3,-0.1);
  K=interval(3^(1/2),3^(1/2));  
  F=exp(X+Y)+K*sqrt(X^2+Y^(2/3))/sin(Z-Y);
  fprintf('F(X,Y,Z)=[%f,%f]\n',F.lower,F.upper);
  pause
  
  toc
end
