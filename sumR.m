function red = sumR(n)

k1=length(n);
MmeanR = sum(n)/k1;
run = n - MmeanR
%run2 = sum((arrayR - MmeanR),2)
run3 = run.^2
MvarR = sum(run3,2)./(k1-1);
MstdR = sqrt(MvarR);
MstdR2 = MmeanR + (2.*MstdR)
MstdR3 = MmeanR + (3.*MstdR)
red = [MmeanR MstdR2 MstdR3 MstdR];
end

