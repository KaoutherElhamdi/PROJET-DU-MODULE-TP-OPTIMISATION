function z=gradE(X,y,a,lambda)
n=size(X'*X);
z=-2*X'*y+2*X'*X*a+2*lambda*a;
end