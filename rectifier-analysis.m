%calcul de mu
I=[ 1.5 3 5.1 5.7 7];
u=[0.02513 0.03455 0.0455 0.055 0.0785];
I1=[0 1.5 3 5.1 5.7 7];
u1=[0 0.02513 0.03455 0.0455 0.055 0.0785];
U=[156 155 153 152 151];

n=length(I);
veff=137;
sum=0;
Um=3*sqrt(6)*veff/(2*pi);
U1=[Um 156 155 153 152 151];
for i=1:1:n
    X(i)=sqrt(3/2)*veff*(1-cos(u(i)))/I(i);
    sum=X(i)+sum;
end
X
m=sum/n
p = polyfit(I1, u1, 2);
alpha_fit = linspace(0, 7, 150);
Ud_fit = polyval(p, alpha_fit);
plot(alpha_fit, Ud_fit, 'r');hold on;
% %tracage de mu=f(I)
Id=0:0.001:7;
uth=acos(1-(m*Id)/(sqrt(3/2)*veff));
% N = length(I1)-1;
% DD = zeros(N + 1,N + 1);
% DD(1:N + 1,1) = u1;
% %file name : Project MNSI NEWTON
% for k = 2:N + 1
% for m = 1: N + 2 - k 
% DD(m,k) = (DD(m + 1,k - 1) - DD(m,k - 1))/(I1(m + k - 1)- I1(m));
% end
% end
% a = DD(1,:); 
% n = a(N+1); 
% for k = N:-1:1 
% n = [n a(k)] - [0 n*I1(k)];
% end
% syms x;
% z=0;
% T=flip(n)
% d=length(n);
% for i=1:d
%     z=z+T(i)*x^(i-1);
% end
% disp('le polynôme de newton est ');
% z
% ezplot(z,[0,7,0,0.08]);grid on;hold on;
title("μ = f(I)",'FontSize', 18);
set(gca, 'FontSize', 16);legend;
xlabel("courant I (A)");ylabel("μ(rad)");
plot(Id,uth);grid on;hold on;
% scatter(I1,u1);
%tracage de U=f(I)
% j=0:0.001:7
% Uth=Um-(3/2*pi)*m*j;

title("U = f(I)",'FontSize', 18);
set(gca, 'FontSize', 16);legend;
xlabel("courant I (A)");ylabel("U(V)");
plot(j,Uth);axis([0 7 0 0.08]);grid on;