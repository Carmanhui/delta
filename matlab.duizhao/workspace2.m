for theta1=2.9:5.485:112.6;
    for theta2=2.9:5.485:112.6;
        for theta3=2.9:5.485:112.6;
            [x,y,z]=Forward(theta1,theta2,theta3);
            
            plot3(x,y,z,'*');
            grid on;
            hold on;
        end
    end
end
xlabel('X Öá');ylabel('Y Öá');zlabel('Z Öá');
title('X-Y-Z¿Õ¼ä')
% axis([-350 350 -350 350 -600 0]);