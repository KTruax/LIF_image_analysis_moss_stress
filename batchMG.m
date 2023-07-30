%MASTER is for the control only!  mean of total curves and std
function meanSTDG = batchMG(n)

arrayR = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     G = imhist(RGB(:,:,2));
     meanG = G/sum(G);
     arrayG(:,i) = meanG;
  end
k1=length(arrayG);
MmeanG = mean(arrayG,2);;
run = arrayG - MmeanG
%run2 = sum((arrayR - MmeanR),2)
run3 = run.^2
MvarG = sum(run3,2)./(k1-1);
MstdG = sqrt(MvarG);
MstdG2 = MmeanG + (2.*MstdG)
MstdG3 = MmeanG + (3.*MstdG)
meanSTDG = [MmeanG MstdG2 MstdG3];
end

