for theta1=1:3;
    for theta2=2:1:4;
        for theta3=4:1:6;
           [x,y,z]=Forward(theta1,theta2,theta3);
         
         plot3(x,y,z,'*');
         grid on;
         hold on;
        end
    end  
end
xlabel('X ��');ylabel('Y ��');zlabel('Z ��');
title('X-Y-Z�ռ�');