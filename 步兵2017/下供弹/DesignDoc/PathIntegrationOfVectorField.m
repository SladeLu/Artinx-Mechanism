function output=PathIntegrationOfVectorField(startPoint,interval,integralRange)
%
%����������ڼ�����������·�����֣�����startPoint,interval,integralTime�ֱ�Ϊ��ʼ�㣬���ּ�����ܻ��ֳ���

%initialization
nowPoint = startPoint;
%nowRange = 0;
output = zeros(integralRange/interval+1, size(startPoint,2));
output(1,:) = startPoint;

for i = 1:(integralRange/interval)
    %get vector
    [nowVector(1),nowVector(2)] = VectorFieldOfWheel(nowPoint(1),nowPoint(2),startPoint(1));
    %integration and get new point
    nowPoint = nowPoint + nowVector*interval;
    %save point
    output(i+1,:) = nowPoint;
end

end