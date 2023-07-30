function one = one(x,y); 
%C = cell(length(x));
%C = cell(length(x),length(y));
M1 = min(size(x));
M2 = min(size(y));

C = cell(M1,M2);

for m = 1:1:M1
    for j = 1:1:M2
        C{m,j} = dtw(x(:,m),y(:,j));
    end
end
%one = C
k1=length(C)
ABC = cell2mat(C);
meanR = mean(ABC,2);
meanC = mean(meanR);
run = meanR - meanC
%run2 = sum((arrayR - MmeanR),2)
run3 = run.^2
MvarR = sum(run3)./(k1-1);
MstdR = sqrt(MvarR);
MstdR2 = meanC + (2.*MstdR)
MstdR3 = meanC + (3.*MstdR)
MS2 = 2.*MstdR
MS3 = 3.*MstdR
one = [meanC MS2 MS3 MstdR MvarR];


%take mean of each row, then mean of the column and std. 
%n = MasterCS
%arrayR = zeros(256,length(n.Files));
%  for i = 1:length(n.Files)
%     RGB = readimage(n,i);
%     R = imhist(RGB(:,:,1));
%     meanR = R/sum(R);
%     arrayR(:,i) = meanR;
%  end

%x = [Cu0R(:,1) Cu0R(:,2)]
%y = [arrayR(:,1) arrayR(:,2)]
%m = 1:1:(min(size(x)));
%k = dtw(x(:,2),y(:,2));%

%C = cell(length(x),length(y));
%for m = 1:1:(min(size(x)));
%    C{m,j} = dtw(x(:,m),y(:,j));
%end



%A = [dtw(x(:,1),y(:,1)) dtw(x(:,2),y(:,1)); dtw(x(:,1),y(:,2)) dtw(x(:,2),y(:,2))];
    
%x = [2 3 4 5 6 7 2 3];
%y = [4 3 5 2 3 4 7 2];

%t = x.*y';
%i = 1:1:length(x);
%j = 1:1:length(y);
%t3 = x(:,i)*y(:,j);
%t2 = corr2(x(:,i),y(:,j));
%size = size(x)