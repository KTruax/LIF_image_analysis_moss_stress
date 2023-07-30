function red = batchR(n)

arrayR = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     R = imhist(RGB(:,:,1));
     meanR = R/sum(R);
     arrayR(:,i) = meanR;
  end
  red = arrayR
end