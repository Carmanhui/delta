for theta1=2.9:5.485:112.6;
          [theta2,theta3]=meshgrid(2.9:5.485:112.6,2.9:5.485:112.6);
          [x,y,z]=Forward(theta1,theta2,theta3);
          mesh(x,y,z);
          hold on;
    
        
   
end
xlabel('X ��');ylabel('Y ��');zlabel('Z ��');
title('X-Y-Z�ռ�');
% axis([-350 350 -350 350 -600 0]);