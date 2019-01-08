f = fopen('C:\Users\Liu\Desktop\delta’˝ƒÊΩ‚\plot.txt','w');
for theta1=2.9:5.485:112.6;
    for theta2=2.9:5.485:112.6;
        for theta3=2.9:5.485:112.6;
%             [theta2,theta3]=meshgrid(2.9:5.485:112.6,2.9:5.485:112.6);
            [x,y,z]=Forward(theta1,theta2,theta3);
            fprintf(f,'%f %f %f\r\n',x,y,z);
            
            plot3(x,y,z);
            hold on;
        end
    end
end
fclose(f);
xlabel('X ÷·');ylabel('Y ÷·');zlabel('Z ÷·');
title('X-Y-Zø’º‰')
axis([-350 350 -350 350 -600 0]);