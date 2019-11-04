function newtoniteration(fun,dfun,x0,delta)
 %syms x;%定义符号变量x，用于求导和代入
%对f(x)进行求导
if(subs(dfun,x0)==0)
    x0=x0+10^-2;
end
for i=1:2000
    x1=x0-subs(fun,x0)/subs(dfun,x0);
   if abs(x1-x0)<delta
        break;
   end
    x0=x1;
end
x1=vpa(x1,4)
i
