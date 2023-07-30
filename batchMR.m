%MASTER is for the control only!  mean of total curves and std
function meanSTDR = batchMR(n)

arrayR = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     R = imhist(RGB(:,:,1));
     meanR = R/sum(R);
     arrayR(:,i) = meanR;
  end
k1=length(arrayR);
MmeanR = mean(arrayR,2);
run = arrayR - MmeanR
%run2 = sum((arrayR - MmeanR),2)
run3 = run.^2
MvarR = sum(run3,2)./(k1-1);
MstdR = sqrt(MvarR);
MstdR2 = MmeanR + (2.*MstdR)
MstdR3 = MmeanR + (3.*MstdR)
meanSTDR = [MmeanR MstdR2 MstdR3];
end