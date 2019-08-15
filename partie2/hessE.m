function z=hessE(X,lambda)
n=size(X'*X);
z=2*transpose(X)*X+2*lambda*eye(n);
end