function blue = batchB(n)

arrayB = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     B = imhist(RGB(:,:,3))
     meanB = B/sum(B);
     arrayB(:,i) = meanB;
  end
  blue = arrayB
end