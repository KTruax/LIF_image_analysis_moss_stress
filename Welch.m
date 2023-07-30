function ret = Welch(a,b,c,d)

%a = mean of control (specific day)
%b = mean of trial (specific day)
%c = variance of control
%d = variance of trial

x1 = 10;
x2 = 10;

tab = abs((a-b)./sqrt((c./x1)+(d./x2)));
dfab = ((c./x1)+(d./x2)).^2./(((c./x1).^2./(x1-1))+((d./x2).^2./(x2-1)));
tcritab = tinv(.95,dfab);
TF = gt(tab,tcritab)

ret = [tab dfab tcritab TF];