for theta1=1:3;
    
           [theta2,theta3]=meshgrid(2:1:4,4:1:6);
           [x,y,z]=Forward(theta1,theta2,theta3);
        
         mesh(x,y,z);
         hold on;
   
        
   
end
xlabel('X Öá');ylabel('Y Öá');zlabel('Z Öá');
title('X-Y-Z¿Õ¼ä');

