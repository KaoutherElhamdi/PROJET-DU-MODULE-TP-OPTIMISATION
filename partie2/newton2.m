function [z,i]=newton2(X,y,a0,lambda,eps)
H=hessE(X,lambda);
a=a0-(inv(H))*gradE(X,y,a0,lambda);
i=0;
disp(000000);
while (norm((a-a0),2)>eps)
    a0=a;
    a=a0-(inv(H))*gradE(X,y,a0,lambda);
    i=i+1;
    disp(55555);
end
z=a;
end