M = load('C:\Users\Liu\Desktop\matlab.duizhao\plot.txt');
x=M(:,1)';
y=M(:,2)';
z=M(:,3)';
X=reshape(x,21*21,21);
Y=reshape(y,21*21,21);
Z=reshape(z,21*21,21);
% t1=linspace(min(x),max(x)); 
% t2=linspace(min(y),max(y));
% [X,Y]=meshgrid(t1,t2);
meshgrid(1:21,1:21*21);
% VI=interp3(x,y,z,V,XI,YI,ZI);
% ZI=interp2(x,y,z,XI,YI);
% Z=griddata(x,y,z,X,Y,'linear');
% Z = griddata(x,y,z,X,Y, 'cubic') ;          % triangle based cubic interpolation
% Z= griddata(x,y,z,X,Y, 'nearest') ;% triangle based nearest neighbor
% Z = griddata(x,y,z,X,Y, 'invdist') ;        % inverse distance method

% s=[X;Y;Z];

% figure(1)
 mesh(X,Y,Z);
% mesh(XI,YI,ZI);
% figure(2)
% surf(X,Y,Z);
% colorbar
% figure(3)
% % plot3(x,y,z);
% plot3(x,y,z,'*');
% figure(4)
% contour(s);
% figure(5)
% [c,h]=contour(X,Y,Z);%进行等值线剖面计算
% clabel(c,h);
hold on;
xlabel('X 轴');ylabel('Y 轴');zlabel('Z 轴');
title('X-Y-Z空间');
axis([-350 350 -350 350 -600 0]);