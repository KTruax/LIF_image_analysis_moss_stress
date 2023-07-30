%MASTER is for the control only!  mean of total curves and std
function meanSTDB = batchMB(n)

arrayR = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     B = imhist(RGB(:,:,3));
     meanB = B./sum(B);
     arrayB(:,i) = meanB;
  end
k1=length(arrayB);
MmeanB = mean(arrayB,2);
run = arrayB - MmeanB
%run2 = sum((arrayR - MmeanR),2)
run3 = run.^2
MvarB = sum(run3,2)./(k1-1);
MstdB = sqrt(MvarB);
MstdB2 = MmeanB + (2.*MstdB)
MstdB3 = MmeanB + (3.*MstdB)
meanSTDB = [MmeanB MstdB2 MstdB3];
end

