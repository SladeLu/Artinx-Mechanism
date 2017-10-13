function [u,v] = VectorFieldOfWheel(x,y,d)
%
%拨轮向量场生成函数，输出某一点的向量,d为拨轮中径
%equation
% u=((d^2*x+d*y*sqrt(x^2+y^2-d^2))/sqrt(x^2+y^2)^3)
% v=((d^2*y-d*x*sqrt(x^2+y^2-d^2))/sqrt(x^2+y^2)^3)

xyPowerSum = x.^2+y.^2;
temp1 = xyPowerSum-d^2;
mask = (temp1<0);
temp1(mask) = 0;  %remove the points in the circle
temp1 = sqrt(temp1);
temp2 = sqrt(xyPowerSum).^3;

u = ((d^2.*x+d.*y.*temp1)./temp2);
v = ((d^2.*y-d.*x.*temp1)./temp2);
u(mask) = 0;
v(mask) = 0;

% function output = VectorFieldOfWheel(point, d)
%
%拨轮向量场生成函数，输出某一点的向量,d为拨轮中径

% normPoint = norm(point);
% temp1 = sqrt(normPoint^2-d^2);
% temp2 = normPoint^3;
% 
% output(1) = ((d^2*point(1)+d*point(2)*temp1)/temp2);
% output(2) = ((d^2*point(2)-d*point(1)*temp1)/temp2);

end