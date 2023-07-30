function green = batchG(n)

arrayG = zeros(256,length(n.Files));
  for i = 1:length(n.Files)
     RGB = readimage(n,i);
     G = imhist(RGB(:,:,2)); 
     meanG = G/sum(G);
     arrayG(:,i) = meanG;
  end
 green = arrayG
end