function sys = process(t,x,flag,u,p)
  
  if flag == 5 % initial conditions for ODE system:
    sys = [0;-1;-sqrt(5);0];        
  else % ODE system :
    sys = [x(2);
	   -x(3)*u(1)+16*t-8;
	   u;
	   x(1)^2+x(2)^2+0.0005*(x(2)+16*t-8-0.1*x(3)*u(1)^2)^2];
  end
end