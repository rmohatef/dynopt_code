function sys = process(t,x,u,p,flag)

% do not modify the individual IF,ELSE conditions !!
    if flag == 5
        % initial conditions for ODE system:
        sys = [0.1883;0.2507;0.0467;0.0899;0.1804;0.1394;0.1046;0];
    else
        % ODE system :
        q = u(1)+u(2)+u(4);
        sys = [u(4)-q*x(1)-17.6*x(1)*x(2)-23.0*x(1)*x(6)*u(3);
               u(1)-q*x(2)-17.6*x(1)*x(2)-146.0*x(2)*x(3);
               u(2)-q*x(3)-73.0*x(2)*x(3);
               -q*x(4)+35.20*x(1)*x(2)-51.30*x(4)*x(5);
               -q*x(5)+219.0*x(2)*x(3)-51.30*x(4)*x(5);
               -q*x(6)+102.60*x(4)*x(5)-23.0*x(1)*x(6)*u(3);
               -q*x(7)+46.0*x(1)*x(6)*u(3);
               5.80*((q*x(1))-u(4))-3.70*u(1)-4.10*u(2)+q*(23.0*x(4)+11.0*x(5)+28.0*x(6)+35.0*x(7))-5.0*u(3)^2-0.099];
    end
end