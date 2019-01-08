function [theta1,theta2,theta3]=Inverse(x,y,z)
Lb=100;La=350;R=60;r=35;
K1=2*z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2+(R-r)*(sqrt(3)*x+y))/Lb;
U1=-2*(2*(R-r)-sqrt(3)*x-y);
V1=-2*z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2+(R-r)*(sqrt(3)*x+y))/Lb;

K2=2*z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2+(R-r)*(sqrt(3)*x-y))/Lb;
U2=-2*(2*(R-r)+sqrt(3)*x-y);
V2=-2*z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2+(R-r)*(sqrt(3)*x-y))/Lb;

K3=z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2-2*y*(R-r))/(2*Lb);
U3=-2*(R-r+y);
V3=-z+(La^2-Lb^2-x^2-y^2-z^2-(R-r)^2-2*y*(R-r))/(2*Lb);

t1=(-U1-sqrt(U1^2-4*K1*V1))/(2*K1);
t2=(-U2-sqrt(U2^2-4*K2*V2))/(2*K2);
t3=(-U3-sqrt(U3^2-4*K3*V3))/(2*K3);

theta1=2*atand(t1);
theta2=2*atand(t2);
theta3=2*atand(t3);

end