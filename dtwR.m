function red = dtwR(i,j)

DTW1 = dtw(i,j(:,1));
DTW2 = dtw(i,j(:,2));
DTW3 = dtw(i,j(:,3));
DTW4 = dtw(i,j(:,4));
DTW5 = dtw(i,j(:,5));
DTW6 = dtw(i,j(:,6));
DTW7 = dtw(i,j(:,7));
DTW8 = dtw(i,j(:,8));
DTW9 = dtw(i,j(:,9));
DTW10 = dtw(i,j(:,10));

dtwTOT = [DTW1 DTW2 DTW3 DTW4 DTW5 DTW6 DTW7 DTW8 DTW9 DTW10];
meandtw = sum(dtwTOT)/10;
vardtw = sum((dtwTOT - meandtw).^2)./(9);
stddtw = sqrt(vardtw);
std2dtw = meandtw + (2.*stddtw);
std3dtw = meandtw + (3.*stddtw);

red = [meandtw std2dtw std3dtw stddtw];
end