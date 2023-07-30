function red = diffR2(n,j)

len = size(n);
lenT = len(1,2);
arrayRt = zeros(lenT,256);
  for i = 1:length(n)
     compare = (1 - (sum(min(j(:,1),n))));
  end
k = length(compare);
MmeanR = sum(compare)/k;
MvarR = sum((compare - MmeanR).^2)./(k-1);
MstdR = sqrt(MvarR);
MstdR2 = MmeanR + (2.*MstdR')
MstdR3 = MmeanR + (3.*MstdR')
red = [MmeanR MstdR2 MstdR3 MstdR MvarR];
end