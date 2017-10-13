%拨盘曲线生成代码
%% 生成大球拨盘曲线
r = 22; %球孔半径
path_n4 = PathIntegrationOfVectorField([sqrt(42^2-r^2),0],0.06,60);    %球数n=4, 拨轮中径d=42(半径)
path_n5 = PathIntegrationOfVectorField([sqrt(51^2-r^2),0],0.05,50);    %球数n=5, 拨轮中径d=51
path_n6 = PathIntegrationOfVectorField([sqrt(59^2-r^2),0],0.04,40);    %球数n=6, 拨轮中径d=59
path_n7 = PathIntegrationOfVectorField([sqrt(68^2-r^2),0],0.04,40);    %球数n=7, 拨轮中径d=68

%output to file
fid = fopen("wheelcurve_n4.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n4(:,1)';zeros(1,size(path_n4,1));-1.*path_n4(:,2)']);
fclose(fid);
fid = fopen("wheelcurve_n5.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n5(:,1)';zeros(1,size(path_n5,1));-1.*path_n5(:,2)']);
fclose(fid);
fid = fopen("wheelcurve_n6.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n6(:,1)';zeros(1,size(path_n6,1));-1.*path_n6(:,2)']);
fclose(fid);
fid = fopen("wheelcurve_n7.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n7(:,1)';zeros(1,size(path_n7,1));-1.*path_n7(:,2)']);
fclose(fid);

%figure code
% path = PathIntegrationOfVectorField([5,0],0.001,10); %get the curve
% [x,y] = meshgrid(4.5:0.2:8,0.5:-0.2:-6);
% [u,v] = VectorFieldOfWheel(x,y,5);
% quiver(x,y,u,v);    %get vector field
% hold;   %hold the vector field
% plot(path(:,1),path(:,2));

%% 生成小球拨盘曲线
r = 9; %球孔半径
path_n6_s = PathIntegrationOfVectorField([sqrt(24.5^2-r^2),0],0.04,20);    %球数n=6, 拨轮中径d=24.5(半径)
path_n7_s = PathIntegrationOfVectorField([sqrt(28.5^2-r^2),0],0.04,20);    %球数n=7, 拨轮中径d=28.5(半径)
path_n8_s = PathIntegrationOfVectorField([sqrt(32^2-r^2),0],0.04,15);    %球数n=8, 拨轮中径d=32(半径) 精度太高SW建模失败
%output to file
fid = fopen("wheelcurve_n6_s.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n6_s(:,1)';zeros(1,size(path_n6_s,1));-1.*path_n6_s(:,2)']);
fclose(fid);
fid = fopen("wheelcurve_n7_s.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n7_s(:,1)';zeros(1,size(path_n7_s,1));-1.*path_n7_s(:,2)']);
fclose(fid);
fid = fopen("wheelcurve_n8_s.txt","w");
fprintf(fid,"%g\t%g\t%g\n",[path_n8_s(:,1)';zeros(1,size(path_n8_s,1));-1.*path_n8_s(:,2)']);
fclose(fid);