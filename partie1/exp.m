M = [ones(size(x)) x]; 
theta = newton(M,m,[0;1],0.001);
yfit = M * theta;
plot(x, y, '+'); hold on; 
plot(x, yfit, '-');   
legend('le nuage des points','La droite de regréssion linéaire')                