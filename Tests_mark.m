 function fmarks() 
  
% Script for testing the following operators with marks:
% sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh
% join, meet, min, max,+, -, *, /
% <=, >=

  clc
  clear all
  tic
      
  bb=10; % Base of the digital computational scale
  nn=15; % Number of digits
  tt=0.1; % Tolerance
  alpha=1; %alpha parameter
  global tt;  global nn;  global bb;  global alpha

  
  mX=mark(1.5,0.0003);   fprintf('mX=<%f,%f>\n',mX.lower,mX.upper);
  mZ=abs(mX);
  fprintf('abs(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=exp(mX);
  fprintf('exp(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=-mX;
  fprintf('-mX=<%f,%f>\n',mZ.lower,mZ.upper);
pause

  mX=mark(3.5,0.005);  fprintf('mX=<%f,%f>\n',mX.lower,mX.upper);
  mZ=ln(mX);
  fprintf('ln(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=power(mX,1.1);
  fprintf('mX^3=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=power(mX,-3/5);
  fprintf('mX^(-3/5)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=mark(1,bb^(-nn))/mX; %Constant 1 must be converted to a mark with granularity equal to bb^(-nn)
  fprintf('1/mX=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=-mX;
  fprintf('-mX=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=5*mX;
  fprintf('5*mX=<%f,%f>\n',mZ.lower,mZ.upper);
pause
  
  mX=mark(1.5,0.005);   fprintf('mX=<%f,%f>\n',mX.lower,mX.upper);
  mZ=sin(mX);
  fprintf('sin(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=cos(mX);
  fprintf('cos(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=tan(mX);
  fprintf('tan(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=sinh(mX);
  fprintf('sinh(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=cosh(mX);
  fprintf('cosh(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=tanh(mX);
  fprintf('tanh(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
pause
  
  mX=mark(1,0.005);   fprintf('mX=<%f,%f>\n',mX.lower,mX.upper);
  mZ=asin(mX);
  fprintf('asin(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=acos(mX);
  fprintf('acos(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=atan(mX);
  fprintf('atan(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=asinh(mX);
  fprintf('asinh(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=acosh(mX);
  fprintf('acosh(mX)=<%f,%f>\n',mZ.lower,mZ.upper);
  mh=mark(2,bb^(-nn));
  mZ=atanh(mX/mh);
  fprintf('atanh(mX/2)=<%f,%f>\n',mZ.lower,mZ.upper);
pause
   
  mX=mark(8.8,0.001);    fprintf('mX=<%f,%f>\n',mX.lower,mX.upper);
  mY=mark(-1.5,0.005);   fprintf('mY=<%f,%f>\n',mY.lower,mY.upper);
  mZ=mX+mY;
  fprintf('mX+mY=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=mX-mY;
  fprintf('mX-mY=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=mX*mY;
  fprintf('mX*mY=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=mX/mY;
  fprintf('mX/mY=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=min(mX,mY);
  fprintf('min(mX,mY)=<%f,%f>\n',mZ.lower,mZ.upper);
  mZ=max(mX,mY);
  fprintf('max(mX,mY)=<%f,%f>\n',mZ.lower,mZ.upper);
pause

  if me(mX,mY)
    fprintf('mX is strong equal to mY\n');
  end
  if we(mX,mY)
    fprintf('mX is week equal to mY\n');
  end
  if wge(mX,mY)
    fprintf('mX is weakly greater than or equal to mY\n');
  end
  pause
%}  
  
   
%The extension of the real continuous function 
%f(x,y,z)=exp(x+y)+3^(1/2)*sqrt(x^2+y^(2/3))/sin(z-y)
%to the marks X=<3,0.001>, Y=<pi/4,0.005> Z=<-0.3,0.0002> is
  mx=mark(3,0.001);
  my=mark(pi/4,0.005);
  mz=mark(-0.3,0.0002);
  mk=mark(3^(1/2),bb^(-nn));  
  F=exp(mx+my)+mk*power(mx^2+my^(2/3),1/2)/sin(mz-my);
  fprintf('F(mx,Y,Z)=[%f,%f]\n',F.lower,F.upper);
  pause
  
  toc
end


