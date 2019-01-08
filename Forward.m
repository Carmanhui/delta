function [x,y,z]=Forward(theta1,theta2,theta3)

Lb=100;La=350;R=60;r=35;
A1=sqrt(3)/2*(R+Lb*sind(theta1)-r);
B1=1/2*(R+Lb*sind(theta1)-r);
C1=Lb*cosd(theta1);

A2=-sqrt(3)/2*(R+Lb*sind(theta2)-r);
B2=1/2*(R+Lb*sind(theta2)-r);
C2=Lb*cosd(theta2);

A3=1;
B3=R+Lb*sind(theta3)-r;
C3=Lb*cosd(theta3);

D1=(A1.*A1+B1.*B1+C1.*C1-B3.*B3-C3.*C3)/2;
D2=(A2.*A2+B2.*B2+C2.*C2-B3.*B3-C3.*C3)/2;

B13=B1+B3;
C13=C1-C3;

B23=B2+B3;
C23=C2-C3;

E2=(A2.*C13-A1.*C23)./(A2.*B13-A1.*B23);
F2=(A2.*D1-A1.*D2)./(A2.*B13-A1.*B23);

E1=(B13.*C23-B23.*C13)./(A2.*B13-A1.*B23);
F1=(B13.*D2-B23.*D1)./(A2.*B13-A1.*B23);

a=E1.*E1+E2.*E2+1;
b=2*E2.*F2+2*B3.*E2+2*E1*F1+2*C3;
c=F2.*F2+B3.*B3+2*B3.*F2+F1.*F1+C3.*C3-La^2;
z=(-b-sqrt(b.*b-4*a.*c))./(2*a);
x=E1.*z+F1;
y=E2.*z+F2;
end