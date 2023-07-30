%This code is for density overlap for single color only

MasterC = 'E:\Batch\10B\Control';
%MasterC = 'E:\Batch\10B\Extra'; - NOPE
%MasterC = 'E:\Batch\10B\All';
%MasterC = 'E:\Batch\10B\Cont';

MasterCS = imageDatastore(MasterC);

%Master Control
MCR = batchMR(MasterCS);
MSR = batchR(MasterCS);

MSRrday = diffR2(MSR,MCR);
%MSRrdiff = (1-(MSRrday(1,:)));
%MSRrmeanstd = sumR(MSRrdiff);

Mmean = MSRrday(:,1);
Mstd2pos = MSRrday(:,2);
Mstd3pos = MSRrday(:,3);
%Mstd2neg = MSRrdiff(:,2);
%Mstd3neg = MSRrdiff(:,3);


%Copper - Trial 1
CuC = 'E:\Batch\10B\T1Cu\0';
Cu1 = 'E:\Batch\10B\T1Cu\1';
Cu2 = 'E:\Batch\10B\T1Cu\2';
Cu3 = 'E:\Batch\10B\T1Cu\3';
Cu4 = 'E:\Batch\10B\T1Cu\4';
Cu5 = 'E:\Batch\10B\T1Cu\5';
Cu6 = 'E:\Batch\10B\T1Cu\6';
Cu7 = 'E:\Batch\10B\T1Cu\7';
CuCS = imageDatastore(CuC);
Cu1S = imageDatastore(Cu1);
Cu2S = imageDatastore(Cu2);
Cu3S = imageDatastore(Cu3);
Cu4S = imageDatastore(Cu4);
Cu5S = imageDatastore(Cu5);
Cu6S = imageDatastore(Cu6);
Cu7S = imageDatastore(Cu7);

Cu0R = batchR(CuCS);
Cu1R = batchR(Cu1S);
Cu2R = batchR(Cu2S);
Cu3R = batchR(Cu3S);
Cu4R = batchR(Cu4S);
Cu5R = batchR(Cu5S);
Cu6R = batchR(Cu6S);
Cu7R = batchR(Cu7S);

rday0 = diffR2(Cu0R,MSR);
rday1 = diffR2(Cu1R,MSR);
rday2 = diffR2(Cu2R,MSR);
rday3 = diffR2(Cu3R,MSR);
rday4 = diffR2(Cu4R,MSR);
rday5 = diffR2(Cu5R,MSR);
rday6 = diffR2(Cu6R,MSR);
rday7 = diffR2(Cu7R,MSR);

rmean = [rday0(:,1); rday1(:,1); rday2(:,1); rday3(:,1); rday4(:,1); rday5(:,1); rday6(:,1); rday7(:,1)];
%rstd2 = [rmeanstd0(:,2); rmeanstd1(:,2); rmeanstd2(:,2); rmeanstd3(:,2); rmeanstd4(:,2); rmeanstd5(:,2); rmeanstd6(:,2); rmeanstd7(:,2)];
%rstd3 = [rmeanstd0(:,3); rmeanstd1(:,3); rmeanstd2(:,3); rmeanstd3(:,3); rmeanstd4(:,3); rmeanstd5(:,3); rmeanstd6(:,3); rmeanstd7(:,3)];

%Zinc - Trial 2
ZnC = 'E:\Batch\10B\T2Zn\0';
Zn1 = 'E:\Batch\10B\T2Zn\1';
Zn2 = 'E:\Batch\10B\T2Zn\2';
Zn3 = 'E:\Batch\10B\T2Zn\3';
Zn4 = 'E:\Batch\10B\T2Zn\4';
Zn5 = 'E:\Batch\10B\T2Zn\5';
Zn6 = 'E:\Batch\10B\T2Zn\6';
Zn7 = 'E:\Batch\10B\T2Zn\7';
ZnCS = imageDatastore(ZnC);
Zn1S = imageDatastore(Zn1);
Zn2S = imageDatastore(Zn2);
Zn3S = imageDatastore(Zn3);
Zn4S = imageDatastore(Zn4);
Zn5S = imageDatastore(Zn5);
Zn6S = imageDatastore(Zn6);
Zn7S = imageDatastore(Zn7);

Zn0R = batchR(ZnCS);
Zn1R = batchR(Zn1S);
Zn2R = batchR(Zn2S);
Zn3R = batchR(Zn3S);
Zn4R = batchR(Zn4S);
Zn5R = batchR(Zn5S);
Zn6R = batchR(Zn6S);
Zn7R = batchR(Zn7S);

zrday0 = diffR2(Zn0R,MSR);
zrday1 = diffR2(Zn1R,MSR);
zrday2 = diffR2(Zn2R,MSR);
zrday3 = diffR2(Zn3R,MSR);
zrday4 = diffR2(Zn4R,MSR);
zrday5 = diffR2(Zn5R,MSR);
zrday6 = diffR2(Zn6R,MSR);
zrday7 = diffR2(Zn7R,MSR);

zrmean = [zrday0(:,1); zrday1(:,1); zrday2(:,1); zrday3(:,1); zrday4(:,1); zrday5(:,1); zrday6(:,1); zrday7(:,1)];

%Lead - Trial 3
PbC = 'E:\Batch\10B\T3Pb\0';
Pb1 = 'E:\Batch\10B\T3Pb\1';
Pb2 = 'E:\Batch\10B\T3Pb\2';
Pb3 = 'E:\Batch\10B\T3Pb\3';
Pb4 = 'E:\Batch\10B\T3Pb\4';
Pb5 = 'E:\Batch\10B\T3Pb\5';
Pb6 = 'E:\Batch\10B\T3Pb\6';
Pb7 = 'E:\Batch\10B\T3Pb\7';
PbCS = imageDatastore(PbC);
Pb1S = imageDatastore(Pb1);
Pb2S = imageDatastore(Pb2);
Pb3S = imageDatastore(Pb3);
Pb4S = imageDatastore(Pb4);
Pb5S = imageDatastore(Pb5);
Pb6S = imageDatastore(Pb6);
Pb7S = imageDatastore(Pb7);
Pb0R = batchR(PbCS);
Pb1R = batchR(Pb1S);
Pb2R = batchR(Pb2S);
Pb3R = batchR(Pb3S);
Pb4R = batchR(Pb4S);
Pb5R = batchR(Pb5S);
Pb6R = batchR(Pb6S);
Pb7R = batchR(Pb7S);

prday0 = diffR2(Pb0R,MSR);
prday1 = diffR2(Pb1R,MSR);
prday2 = diffR2(Pb2R,MSR);
prday3 = diffR2(Pb3R,MSR);
prday4 = diffR2(Pb4R,MSR);
prday5 = diffR2(Pb5R,MSR);
prday6 = diffR2(Pb6R,MSR);
prday7 = diffR2(Pb7R,MSR);

prmean = [prday0(:,1); prday1(:,1); prday2(:,1); prday3(:,1); prday4(:,1); prday5(:,1); prday6(:,1); prday7(:,1)];

%Mix - Trial 4
MC = 'E:\Batch\10B\T4Mix\0';
M1 = 'E:\Batch\10B\T4Mix\1';
M2 = 'E:\Batch\10B\T4Mix\2';
M3 = 'E:\Batch\10B\T4Mix\3';
M4 = 'E:\Batch\10B\T4Mix\4';
M5 = 'E:\Batch\10B\T4Mix\5';
M6 = 'E:\Batch\10B\T4Mix\6';
M7 = 'E:\Batch\10B\T4Mix\7';
MCS = imageDatastore(MC);
M1S = imageDatastore(M1);
M2S = imageDatastore(M2);
M3S = imageDatastore(M3);
M4S = imageDatastore(M4);
M5S = imageDatastore(M5);
M6S = imageDatastore(M6);
M7S = imageDatastore(M7);
M0R = batchR(MCS);
M1R = batchR(M1S);
M2R = batchR(M2S);
M3R = batchR(M3S);
M4R = batchR(M4S);
M5R = batchR(M5S);
M6R = batchR(M6S);
M7R = batchR(M7S);

mrday0 = diffR2(M0R,MSR);
mrday1 = diffR2(M1R,MSR);
mrday2 = diffR2(M2R,MSR);
mrday3 = diffR2(M3R,MSR);
mrday4 = diffR2(M4R,MSR);
mrday5 = diffR2(M5R,MSR);
mrday6 = diffR2(M6R,MSR);
mrday7 = diffR2(M7R,MSR);

mrmean = [mrday0(:,1); mrday1(:,1); mrday2(:,1); mrday3(:,1); mrday4(:,1); mrday5(:,1); mrday6(:,1); mrday7(:,1)];

%Control for comparison
CC = 'E:\Batch\10B\T5Con\0';
C1 = 'E:\Batch\10B\T5Con\1';
C2 = 'E:\Batch\10B\T5Con\2';
C3 = 'E:\Batch\10B\T5Con\3';
C4 = 'E:\Batch\10B\T5Con\4';
C5 = 'E:\Batch\10B\T5Con\5';
C6 = 'E:\Batch\10B\T5Con\6';
C7 = 'E:\Batch\10B\T5Con\7';
CCS = imageDatastore(CC);
C1S = imageDatastore(C1);
C2S = imageDatastore(C2);
C3S = imageDatastore(C3);
C4S = imageDatastore(C4);
C5S = imageDatastore(C5);
C6S = imageDatastore(C6);
C7S = imageDatastore(C7);
C0R = batchR(CCS);
C1R = batchR(C1S);
C2R = batchR(C2S);
C3R = batchR(C3S);
C4R = batchR(C4S);
C5R = batchR(C5S);
C6R = batchR(C6S);
C7R = batchR(C7S);

crday0 = diffR2(C0R,MSR);
crday1 = diffR2(C1R,MSR);
crday2 = diffR2(C2R,MSR);
crday3 = diffR2(C3R,MSR);
crday4 = diffR2(C4R,MSR);
crday5 = diffR2(C5R,MSR);
crday6 = diffR2(C6R,MSR);
crday7 = diffR2(C7R,MSR);

crmean = [crday0(:,1); crday1(:,1); crday2(:,1); crday3(:,1); crday4(:,1); crday5(:,1); crday6(:,1); crday7(:,1)];

ContM = sum(crmean)/8
Contvar = sum((crmean - ContM).^2)./(7);
Contstd = sqrt(Contvar);
Contstd2 = ContM + (2.*Contstd')
Contstd3 = ContM + (3.*Contstd')

%Wet - Trial 6
WC = 'E:\Batch\10B\T6Wet\0';
W1 = 'E:\Batch\10B\T6Wet\1';
W2 = 'E:\Batch\10B\T6Wet\2';
W3 = 'E:\Batch\10B\T6Wet\3';
W4 = 'E:\Batch\10B\T6Wet\4';
W5 = 'E:\Batch\10B\T6Wet\5';
W6 = 'E:\Batch\10B\T6Wet\6';
W7 = 'E:\Batch\10B\T6Wet\7';
WCS = imageDatastore(WC);
W1S = imageDatastore(W1);
W2S = imageDatastore(W2);
W3S = imageDatastore(W3);
W4S = imageDatastore(W4);
W5S = imageDatastore(W5);
W6S = imageDatastore(W6);
W7S = imageDatastore(W7);
W0R = batchR(WCS);
W1R = batchR(W1S);
W2R = batchR(W2S);
W3R = batchR(W3S);
W4R = batchR(W4S);
W5R = batchR(W5S);
W6R = batchR(W6S);
W7R = batchR(W7S);

wrday0 = diffR2(W0R,MSR);
wrday1 = diffR2(W1R,MSR);
wrday2 = diffR2(W2R,MSR);
wrday3 = diffR2(W3R,MSR);
wrday4 = diffR2(W4R,MSR);
wrday5 = diffR2(W5R,MSR);
wrday6 = diffR2(W6R,MSR);
wrday7 = diffR2(W7R,MSR);

wrmean = [wrday0(:,1); wrday1(:,1); wrday2(:,1); wrday3(:,1); wrday4(:,1); wrday5(:,1); wrday6(:,1); wrday7(:,1)];

%Dry - Trial 7
DC = 'E:\Batch\10B\T7Dry\0';
D1 = 'E:\Batch\10B\T7Dry\1';
D2 = 'E:\Batch\10B\T7Dry\2';
D3 = 'E:\Batch\10B\T7Dry\3';
D4 = 'E:\Batch\10B\T7Dry\4';
D5 = 'E:\Batch\10B\T7Dry\5';
D6 = 'E:\Batch\10B\T7Dry\6';
D7 = 'E:\Batch\10B\T7Dry\7';
DCS = imageDatastore(DC);
D1S = imageDatastore(D1);
D2S = imageDatastore(D2);
D3S = imageDatastore(D3);
D4S = imageDatastore(D4);
D5S = imageDatastore(D5);
D6S = imageDatastore(D6);
D7S = imageDatastore(D7);
D0R = batchR(DCS);
D1R = batchR(D1S);
D2R = batchR(D2S);
D3R = batchR(D3S);
D4R = batchR(D4S);
D5R = batchR(D5S);
D6R = batchR(D6S);
D7R = batchR(D7S);

drday0 = diffR2(D0R,MSR);
drday1 = diffR2(D1R,MSR);
drday2 = diffR2(D2R,MSR);
drday3 = diffR2(D3R,MSR);
drday4 = diffR2(D4R,MSR);
drday5 = diffR2(D5R,MSR);
drday6 = diffR2(D6R,MSR);
drday7 = diffR2(D7R,MSR);

drmean = [drday0(:,1); drday1(:,1); drday2(:,1); drday3(:,1); drday4(:,1); drday5(:,1); drday6(:,1); drday7(:,1)];

%Nutrients - Trial 8
NC = 'E:\Batch\10B\T8Nut\0';
N1 = 'E:\Batch\10B\T8Nut\1';
N2 = 'E:\Batch\10B\T8Nut\2';
N3 = 'E:\Batch\10B\T8Nut\3';
N4 = 'E:\Batch\10B\T8Nut\4';
N5 = 'E:\Batch\10B\T8Nut\5';
N6 = 'E:\Batch\10B\T8Nut\6';
N7 = 'E:\Batch\10B\T8Nut\7';
NCS = imageDatastore(NC);
N1S = imageDatastore(N1);
N2S = imageDatastore(N2);
N3S = imageDatastore(N3);
N4S = imageDatastore(N4);
N5S = imageDatastore(N5);
N6S = imageDatastore(N6);
N7S = imageDatastore(N7);
N0R = batchR(NCS);
N1R = batchR(N1S);
N2R = batchR(N2S);
N3R = batchR(N3S);
N4R = batchR(N4S);
N5R = batchR(N5S);
N6R = batchR(N6S);
N7R = batchR(N7S);

nrday0 = diffR2(N0R,MSR);
nrday1 = diffR2(N1R,MSR);
nrday2 = diffR2(N2R,MSR);
nrday3 = diffR2(N3R,MSR);
nrday4 = diffR2(N4R,MSR);
nrday5 = diffR2(N5R,MSR);
nrday6 = diffR2(N6R,MSR);
nrday7 = diffR2(N7R,MSR);

nrmean = [nrday0(:,1); nrday1(:,1); nrday2(:,1); nrday3(:,1); nrday4(:,1); nrday5(:,1); nrday6(:,1); nrday7(:,1)];

%Long - Trial 9
LC = 'E:\Batch\10B\T9Long\0';
L1 = 'E:\Batch\10B\T9Long\1';
L2 = 'E:\Batch\10B\T9Long\2';
L3 = 'E:\Batch\10B\T9Long\3';
L4 = 'E:\Batch\10B\T9Long\4';
L5 = 'E:\Batch\10B\T9Long\5';
L6 = 'E:\Batch\10B\T9Long\6';
L7 = 'E:\Batch\10B\T9Long\7';
LCS = imageDatastore(LC);
L1S = imageDatastore(L1);
L2S = imageDatastore(L2);
L3S = imageDatastore(L3);
L4S = imageDatastore(L4);
L5S = imageDatastore(L5);
L6S = imageDatastore(L6);
L7S = imageDatastore(L7);
L0R = batchR(LCS);
L1R = batchR(L1S);
L2R = batchR(L2S);
L3R = batchR(L3S);
L4R = batchR(L4S);
L5R = batchR(L5S);
L6R = batchR(L6S);
L7R = batchR(L7S);

lrday0 = diffR2(L0R,MSR);
lrday1 = diffR2(L1R,MSR);
lrday2 = diffR2(L2R,MSR);
lrday3 = diffR2(L3R,MSR);
lrday4 = diffR2(L4R,MSR);
lrday5 = diffR2(L5R,MSR);
lrday6 = diffR2(L6R,MSR);
lrday7 = diffR2(L7R,MSR);

lrmean = [lrday0(:,1); lrday1(:,1); lrday2(:,1); lrday3(:,1); lrday4(:,1); lrday5(:,1); lrday6(:,1); lrday7(:,1)];

%Short - Trial 10
SC = 'E:\Batch\10B\T10Shrt\0';
S1 = 'E:\Batch\10B\T10Shrt\1';
S2 = 'E:\Batch\10B\T10Shrt\2';
S3 = 'E:\Batch\10B\T10Shrt\3';
S4 = 'E:\Batch\10B\T10Shrt\4';
S5 = 'E:\Batch\10B\T10Shrt\5';
S6 = 'E:\Batch\10B\T10Shrt\6';
S7 = 'E:\Batch\10B\T10Shrt\7';
SCS = imageDatastore(SC);
S1S = imageDatastore(S1);
S2S = imageDatastore(S2);
S3S = imageDatastore(S3);
S4S = imageDatastore(S4);
S5S = imageDatastore(S5);
S6S = imageDatastore(S6);
S7S = imageDatastore(S7);
S0R = batchR(SCS);
S1R = batchR(S1S);
S2R = batchR(S2S);
S3R = batchR(S3S);
S4R = batchR(S4S);
S5R = batchR(S5S);
S6R = batchR(S6S);
S7R = batchR(S7S);

srday0 = diffR2(S0R,MSR);
srday1 = diffR2(S1R,MSR);
srday2 = diffR2(S2R,MSR);
srday3 = diffR2(S3R,MSR);
srday4 = diffR2(S4R,MSR);
srday5 = diffR2(S5R,MSR);
srday6 = diffR2(S6R,MSR);
srday7 = diffR2(S7R,MSR);

srmean = [srday0(:,1); srday1(:,1); srday2(:,1); srday3(:,1); srday4(:,1); srday5(:,1); srday6(:,1); srday7(:,1)];

%Dark - Trial 11
AC = 'E:\Batch\10B\T11Dark\0';
A1 = 'E:\Batch\10B\T11Dark\1';
A2 = 'E:\Batch\10B\T11Dark\2';
A3 = 'E:\Batch\10B\T11Dark\3';
A4 = 'E:\Batch\10B\T11Dark\4';
A5 = 'E:\Batch\10B\T11Dark\5';
A6 = 'E:\Batch\10B\T11Dark\6';
A7 = 'E:\Batch\10B\T11Dark\7';
ACS = imageDatastore(AC);
A1S = imageDatastore(A1);
A2S = imageDatastore(A2);
A3S = imageDatastore(A3);
A4S = imageDatastore(A4);
A5S = imageDatastore(A5);
A6S = imageDatastore(A6);
A7S = imageDatastore(A7);
A0R = batchR(ACS);
A1R = batchR(A1S);
A2R = batchR(A2S);
A3R = batchR(A3S);
A4R = batchR(A4S);
A5R = batchR(A5S);
A6R = batchR(A6S);
A7R = batchR(A7S);

arday0 = diffR2(A0R,MSR);
arday1 = diffR2(A1R,MSR);
arday2 = diffR2(A2R,MSR);
arday3 = diffR2(A3R,MSR);
arday4 = diffR2(A4R,MSR);
arday5 = diffR2(A5R,MSR);
arday6 = diffR2(A6R,MSR);
arday7 = diffR2(A7R,MSR);

armean = [arday0(:,1); arday1(:,1); arday2(:,1); arday3(:,1); arday4(:,1); arday5(:,1); arday6(:,1); arday7(:,1)];

%WELCH
CuWr0 = Welch(crday0(:,1), rday0(:,1), crday0(:,5), rday0(:,5));
CuWr1 = Welch(crday1(:,1), rday1(:,1), crday1(:,5), rday1(:,5));
CuWr2 = Welch(crday2(:,1), rday2(:,1), crday2(:,5), rday2(:,5));
CuWr3 = Welch(crday3(:,1), rday3(:,1), crday3(:,5), rday3(:,5));
CuWr4 = Welch(crday4(:,1), rday4(:,1), crday4(:,5), rday4(:,5));
CuWr5 = Welch(crday5(:,1), rday5(:,1), crday5(:,5), rday5(:,5));
CuWr6 = Welch(crday6(:,1), rday6(:,1), crday6(:,5), rday6(:,5));
CuWr7 = Welch(crday7(:,1), rday7(:,1), crday7(:,5), rday7(:,5));
CuWR = [CuWr0; CuWr1; CuWr2; CuWr3; CuWr4; CuWr5; CuWr6; CuWr7];

ZnWr0 = Welch(crday0(:,1), zrday0(:,1), crday0(:,5), zrday0(:,5));
ZnWr1 = Welch(crday1(:,1), zrday1(:,1), crday1(:,5), zrday1(:,5));
ZnWr2 = Welch(crday2(:,1), zrday2(:,1), crday2(:,5), zrday2(:,5));
ZnWr3 = Welch(crday3(:,1), zrday3(:,1), crday3(:,5), zrday3(:,5));
ZnWr4 = Welch(crday4(:,1), zrday4(:,1), crday4(:,5), zrday4(:,5));
ZnWr5 = Welch(crday5(:,1), zrday5(:,1), crday5(:,5), zrday5(:,5));
ZnWr6 = Welch(crday6(:,1), zrday6(:,1), crday6(:,5), zrday6(:,5));
ZnWr7 = Welch(crday7(:,1), zrday7(:,1), crday7(:,5), zrday7(:,5));
ZnWR = [ZnWr0; ZnWr1; ZnWr2; ZnWr3; ZnWr4; ZnWr5; ZnWr6; ZnWr7];  

PbWr0 = Welch(crday0(:,1), prday0(:,1), crday0(:,5), prday0(:,5));
PbWr1 = Welch(crday1(:,1), prday1(:,1), crday1(:,5), prday1(:,5));
PbWr2 = Welch(crday2(:,1), prday2(:,1), crday2(:,5), prday2(:,5));
PbWr3 = Welch(crday3(:,1), prday3(:,1), crday3(:,5), prday3(:,5));
PbWr4 = Welch(crday4(:,1), prday4(:,1), crday4(:,5), prday4(:,5));
PbWr5 = Welch(crday5(:,1), prday5(:,1), crday5(:,5), prday5(:,5));
PbWr6 = Welch(crday6(:,1), prday6(:,1), crday6(:,5), prday6(:,5));
PbWr7 = Welch(crday7(:,1), prday7(:,1), crday7(:,5), prday7(:,5));
PbWR = [PbWr0; PbWr1; PbWr2; PbWr3; PbWr4; PbWr5; PbWr6; PbWr7];

MxWr0 = Welch(crday0(:,1), mrday0(:,1), crday0(:,5), mrday0(:,5));
MxWr1 = Welch(crday1(:,1), mrday1(:,1), crday1(:,5), mrday1(:,5));
MxWr2 = Welch(crday2(:,1), mrday2(:,1), crday2(:,5), mrday2(:,5));
MxWr3 = Welch(crday3(:,1), mrday3(:,1), crday3(:,5), mrday3(:,5));
MxWr4 = Welch(crday4(:,1), mrday4(:,1), crday4(:,5), mrday4(:,5));
MxWr5 = Welch(crday5(:,1), mrday5(:,1), crday5(:,5), mrday5(:,5));
MxWr6 = Welch(crday6(:,1), mrday6(:,1), crday6(:,5), mrday6(:,5));
MxWr7 = Welch(crday7(:,1), mrday7(:,1), crday7(:,5), mrday7(:,5));
MxWR = [MxWr0; MxWr1; MxWr2; MxWr3; MxWr4; MxWr5; MxWr6; MxWr7];

WWr0 = Welch(crday0(:,1), wrday0(:,1), crday0(:,5), wrday0(:,5));
WWr1 = Welch(crday1(:,1), wrday1(:,1), crday1(:,5), wrday1(:,5));
WWr2 = Welch(crday2(:,1), wrday2(:,1), crday2(:,5), wrday2(:,5));
WWr3 = Welch(crday3(:,1), wrday3(:,1), crday3(:,5), wrday3(:,5));
WWr4 = Welch(crday4(:,1), wrday4(:,1), crday4(:,5), wrday4(:,5));
WWr5 = Welch(crday5(:,1), wrday5(:,1), crday5(:,5), wrday5(:,5));
WWr6 = Welch(crday6(:,1), wrday6(:,1), crday6(:,5), wrday6(:,5));
WWr7 = Welch(crday7(:,1), wrday7(:,1), crday7(:,5), wrday7(:,5));
WWR = [WWr0; WWr1; WWr2; WWr3; WWr4; WWr5; WWr6; WWr7];  

DWr0 = Welch(crday0(:,1), drday0(:,1), crday0(:,5), drday0(:,5));
DWr1 = Welch(crday1(:,1), drday1(:,1), crday1(:,5), drday1(:,5));
DWr2 = Welch(crday2(:,1), drday2(:,1), crday2(:,5), drday2(:,5));
DWr3 = Welch(crday3(:,1), drday3(:,1), crday3(:,5), drday3(:,5));
DWr4 = Welch(crday4(:,1), drday4(:,1), crday4(:,5), drday4(:,5));
DWr5 = Welch(crday5(:,1), drday5(:,1), crday5(:,5), drday5(:,5));
DWr6 = Welch(crday6(:,1), drday6(:,1), crday6(:,5), drday6(:,5));
DWr7 = Welch(crday7(:,1), drday7(:,1), crday7(:,5), drday7(:,5));
DWR = [DWr0; DWr1; DWr2; DWr3; DWr4; DWr5; DWr6; DWr7];

NWr0 = Welch(crday0(:,1), nrday0(:,1), crday0(:,5), nrday0(:,5));
NWr1 = Welch(crday1(:,1), nrday1(:,1), crday1(:,5), nrday1(:,5));
NWr2 = Welch(crday2(:,1), nrday2(:,1), crday2(:,5), nrday2(:,5));
NWr3 = Welch(crday3(:,1), nrday3(:,1), crday3(:,5), nrday3(:,5));
NWr4 = Welch(crday4(:,1), nrday4(:,1), crday4(:,5), nrday4(:,5));
NWr5 = Welch(crday5(:,1), nrday5(:,1), crday5(:,5), nrday5(:,5));
NWr6 = Welch(crday6(:,1), nrday6(:,1), crday6(:,5), nrday6(:,5));
NWr7 = Welch(crday7(:,1), nrday7(:,1), crday7(:,5), nrday7(:,5));
NWR = [NWr0; NWr1; NWr2; NWr3; NWr4; NWr5; NWr6; NWr7];   

LWr0 = Welch(crday0(:,1), lrday0(:,1), crday0(:,5), lrday0(:,5));
LWr1 = Welch(crday1(:,1), lrday1(:,1), crday1(:,5), lrday1(:,5));
LWr2 = Welch(crday2(:,1), lrday2(:,1), crday2(:,5), lrday2(:,5));
LWr3 = Welch(crday3(:,1), lrday3(:,1), crday3(:,5), lrday3(:,5));
LWr4 = Welch(crday4(:,1), lrday4(:,1), crday4(:,5), lrday4(:,5));
LWr5 = Welch(crday5(:,1), lrday5(:,1), crday5(:,5), lrday5(:,5));
LWr6 = Welch(crday6(:,1), lrday6(:,1), crday6(:,5), lrday6(:,5));
LWr7 = Welch(crday7(:,1), lrday7(:,1), crday7(:,5), lrday7(:,5));
LWR = [LWr0; LWr1; LWr2; LWr3; LWr4; LWr5; LWr6; LWr7];

SWr0 = Welch(crday0(:,1), srday0(:,1), crday0(:,5), srday0(:,5));
SWr1 = Welch(crday1(:,1), srday1(:,1), crday1(:,5), srday1(:,5));
SWr2 = Welch(crday2(:,1), srday2(:,1), crday2(:,5), srday2(:,5));
SWr3 = Welch(crday3(:,1), srday3(:,1), crday3(:,5), srday3(:,5));
SWr4 = Welch(crday4(:,1), srday4(:,1), crday4(:,5), srday4(:,5));
SWr5 = Welch(crday5(:,1), srday5(:,1), crday5(:,5), srday5(:,5));
SWr6 = Welch(crday6(:,1), srday6(:,1), crday6(:,5), srday6(:,5));
SWr7 = Welch(crday7(:,1), srday7(:,1), crday7(:,5), srday7(:,5));
SWR = [SWr0; SWr1; SWr2; SWr3; SWr4; SWr5; SWr6; SWr7];

AWr0 = Welch(crday0(:,1), arday0(:,1), crday0(:,5), arday0(:,5));
AWr1 = Welch(crday1(:,1), arday1(:,1), crday1(:,5), arday1(:,5));
AWr2 = Welch(crday2(:,1), arday2(:,1), crday2(:,5), arday2(:,5));
AWr3 = Welch(crday3(:,1), arday3(:,1), crday3(:,5), arday3(:,5));
AWr4 = Welch(crday4(:,1), arday4(:,1), crday4(:,5), arday4(:,5));
AWr5 = Welch(crday5(:,1), arday5(:,1), crday5(:,5), arday5(:,5));
AWr6 = Welch(crday6(:,1), arday6(:,1), crday6(:,5), arday6(:,5));
AWr7 = Welch(crday7(:,1), arday7(:,1), crday7(:,5), arday7(:,5));
AWR = [AWr0; AWr1; AWr2; AWr3; AWr4; AWr5; AWr6; AWr7];

%metal only
x = (0:7);
figure;
plot(x,rmean,'LineWidth',2);
hold on
plot(x,zrmean,'LineWidth',2);
plot(x,prmean,'LineWidth',2);
plot(x,mrmean,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContM,'k','LineWidth',2);
yline(Contstd2,'k--','LineWidth',2);
yline(Contstd3,'k:','LineWidth',2);
legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%environmental only
x = (0:7);
figure;
plot(x,wrmean,'LineWidth',2);
hold on
plot(x,drmean,'LineWidth',2);
plot(x,nrmean,'LineWidth',2);
yline(ContM,'k','LineWidth',2);
yline(Contstd2,'k--','LineWidth',2);
yline(Contstd3,'k:','LineWidth',2);
legend('Wet','Dry','Nutr.','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%photoperiod only
x = (0:7);
figure;
plot(x,lrmean,'LineWidth',2);
hold on
plot(x,srmean,'LineWidth',2);
plot(x,armean,'LineWidth',2);
yline(ContM,'k','LineWidth',2);
yline(Contstd2,'k--','LineWidth',2);
yline(Contstd3,'k:','LineWidth',2);
legend('Long','Short','Dark','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off


%GREEN
MasterC = 'E:\Batch\10B\Control';
%MasterC = 'E:\Batch\10B\Extra'; - NOPE
%MasterC = 'E:\Batch\10B\All';
%MasterC = 'E:\Batch\10B\Cont';
MasterCS = imageDatastore(MasterC);

%Master Control
MCG = batchMG(MasterCS);
MSG = batchG(MasterCS);

MSGrday = diffR2(MSG,MCG);

gMmean = MSRrday(:,1);
gMstd2pos = MSRrday(:,2);
gMstd3pos = MSRrday(:,3);

%Copper - Trial 1
Cu0G = batchG(CuCS);
Cu1G = batchG(Cu1S);
Cu2G = batchG(Cu2S);
Cu3G = batchG(Cu3S);
Cu4G = batchG(Cu4S);
Cu5G = batchG(Cu5S);
Cu6G = batchG(Cu6S);
Cu7G = batchG(Cu7S);

gday0 = diffR2(Cu0G,MSG);
gday1 = diffR2(Cu1G,MSG);
gday2 = diffR2(Cu2G,MSG);
gday3 = diffR2(Cu3G,MSG);
gday4 = diffR2(Cu4G,MSG);
gday5 = diffR2(Cu5G,MSG);
gday6 = diffR2(Cu6G,MSG);
gday7 = diffR2(Cu7G,MSG);


gmean = [gday0(:,1); gday1(:,1); gday2(:,1); gday3(:,1); gday4(:,1); gday5(:,1); gday6(:,1); gday7(:,1)];

%Zinc - Trial 2
Zn0G = batchG(ZnCS);
Zn1G = batchG(Zn1S);
Zn2G = batchG(Zn2S);
Zn3G = batchG(Zn3S);
Zn4G = batchG(Zn4S);
Zn5G = batchG(Zn5S);
Zn6G = batchG(Zn6S);
Zn7G = batchG(Zn7S);

zgday0 = diffR2(Zn0G,MSG);
zgday1 = diffR2(Zn1G,MSG);
zgday2 = diffR2(Zn2G,MSG);
zgday3 = diffR2(Zn3G,MSG);
zgday4 = diffR2(Zn4G,MSG);
zgday5 = diffR2(Zn5G,MSG);
zgday6 = diffR2(Zn6G,MSG);
zgday7 = diffR2(Zn7G,MSG);

zgmean = [zgday0(:,1); zgday1(:,1); zgday2(:,1); zgday3(:,1); zgday4(:,1); zgday5(:,1); zgday6(:,1); zgday7(:,1)];

%Lead - Trial 3
Pb0G = batchG(PbCS);
Pb1G = batchG(Pb1S);
Pb2G = batchG(Pb2S);
Pb3G = batchG(Pb3S);
Pb4G = batchG(Pb4S);
Pb5G = batchG(Pb5S);
Pb6G = batchG(Pb6S);
Pb7G = batchG(Pb7S);

pgday0 = diffR2(Pb0G,MSG);
pgday1 = diffR2(Pb1G,MSG);
pgday2 = diffR2(Pb2G,MSG);
pgday3 = diffR2(Pb3G,MSG);
pgday4 = diffR2(Pb4G,MSG);
pgday5 = diffR2(Pb5G,MSG);
pgday6 = diffR2(Pb6G,MSG);
pgday7 = diffR2(Pb7G,MSG);

pgmean = [pgday0(:,1); pgday1(:,1); pgday2(:,1); pgday3(:,1); pgday4(:,1); pgday5(:,1); pgday6(:,1); pgday7(:,1)];

%Mix - Trial 4
M0G = batchG(MCS);
M1G = batchG(M1S);
M2G = batchG(M2S);
M3G = batchG(M3S);
M4G = batchG(M4S);
M5G = batchG(M5S);
M6G = batchG(M6S);
M7G = batchG(M7S);

mgday0 = diffR2(M0G,MSG);
mgday1 = diffR2(M1G,MSG);
mgday2 = diffR2(M2G,MSG);
mgday3 = diffR2(M3G,MSG);
mgday4 = diffR2(M4G,MSG);
mgday5 = diffR2(M5G,MSG);
mgday6 = diffR2(M6G,MSG);
mgday7 = diffR2(M7G,MSG);

mgmean = [mgday0(:,1); mgday1(:,1); mgday2(:,1); mgday3(:,1); mgday4(:,1); mgday5(:,1); mgday6(:,1); mgday7(:,1)];

%Control for comparison
C0G = batchG(CCS);
C1G = batchG(C1S);
C2G = batchG(C2S);
C3G = batchG(C3S);
C4G = batchG(C4S);
C5G = batchG(C5S);
C6G = batchG(C6S);
C7G = batchG(C7S);

cgday0 = diffR2(C0G,MSG);
cgday1 = diffR2(C1G,MSG);
cgday2 = diffR2(C2G,MSG);
cgday3 = diffR2(C3G,MSG);
cgday4 = diffR2(C4G,MSG);
cgday5 = diffR2(C5G,MSG);
cgday6 = diffR2(C6G,MSG);
cgday7 = diffR2(C7G,MSG);

cgmean = [cgday0(:,1); cgday1(:,1); cgday2(:,1); cgday3(:,1); cgday4(:,1); cgday5(:,1); cgday6(:,1); cgday7(:,1)];

ContMg = sum(cgmean)/8
Contvarg = sum((cgmean - ContMg).^2)./(7);
Contstdg = sqrt(Contvarg);
Contstd2g = ContMg + (2.*Contstdg')
Contstd3g = ContMg + (3.*Contstdg')

%Wet - Trial 6
W0G = batchG(WCS);
W1G = batchG(W1S);
W2G = batchG(W2S);
W3G = batchG(W3S);
W4G = batchG(W4S);
W5G = batchG(W5S);
W6G = batchG(W6S);
W7G = batchG(W7S);

wgday0 = diffR2(W0G,MSG);
wgday1 = diffR2(W1G,MSG);
wgday2 = diffR2(W2G,MSG);
wgday3 = diffR2(W3G,MSG);
wgday4 = diffR2(W4G,MSG);
wgday5 = diffR2(W5G,MSG);
wgday6 = diffR2(W6G,MSG);
wgday7 = diffR2(W7G,MSG);

wgmean = [wgday0(:,1); wgday1(:,1); wgday2(:,1); wgday3(:,1); wgday4(:,1); wgday5(:,1); wgday6(:,1); wgday7(:,1)];

%Dry - Trial 7
D0G = batchG(DCS);
D1G = batchG(D1S);
D2G = batchG(D2S);
D3G = batchG(D3S);
D4G = batchG(D4S);
D5G = batchG(D5S);
D6G = batchG(D6S);
D7G = batchG(D7S);

dgday0 = diffR2(D0G,MSG);
dgday1 = diffR2(D1G,MSG);
dgday2 = diffR2(D2G,MSG);
dgday3 = diffR2(D3G,MSG);
dgday4 = diffR2(D4G,MSG);
dgday5 = diffR2(D5G,MSG);
dgday6 = diffR2(D6G,MSG);
dgday7 = diffR2(D7G,MSG);

dgmean = [dgday0(:,1); dgday1(:,1); dgday2(:,1); dgday3(:,1); dgday4(:,1); dgday5(:,1); dgday6(:,1); dgday7(:,1)];

%Nutrients - Trial 8
N0G = batchG(NCS);
N1G = batchG(N1S);
N2G = batchG(N2S);
N3G = batchG(N3S);
N4G = batchG(N4S);
N5G = batchG(N5S);
N6G = batchG(N6S);
N7G = batchG(N7S);

ngday0 = diffR2(N0G,MSG);
ngday1 = diffR2(N1G,MSG);
ngday2 = diffR2(N2G,MSG);
ngday3 = diffR2(N3G,MSG);
ngday4 = diffR2(N4G,MSG);
ngday5 = diffR2(N5G,MSG);
ngday6 = diffR2(N6G,MSG);
ngday7 = diffR2(N7G,MSG);

ngmean = [ngday0(:,1); ngday1(:,1); ngday2(:,1); ngday3(:,1); ngday4(:,1); ngday5(:,1); ngday6(:,1); ngday7(:,1)];

%Long - Trial 9
L0G = batchG(LCS);
L1G = batchG(L1S);
L2G = batchG(L2S);
L3G = batchG(L3S);
L4G = batchG(L4S);
L5G = batchG(L5S);
L6G = batchG(L6S);
L7G = batchG(L7S);

lgday0 = diffR2(L0G,MSG);
lgday1 = diffR2(L1G,MSG);
lgday2 = diffR2(L2G,MSG);
lgday3 = diffR2(L3G,MSG);
lgday4 = diffR2(L4G,MSG);
lgday5 = diffR2(L5G,MSG);
lgday6 = diffR2(L6G,MSG);
lgday7 = diffR2(L7G,MSG);

lgmean = [lgday0(:,1); lgday1(:,1); lgday2(:,1); lgday3(:,1); lgday4(:,1); lgday5(:,1); lgday6(:,1); lgday7(:,1)];

%Short - Trial 10
S0G = batchG(SCS);
S1G = batchG(S1S);
S2G = batchG(S2S);
S3G = batchG(S3S);
S4G = batchG(S4S);
S5G = batchG(S5S);
S6G = batchG(S6S);
S7G = batchG(S7S);

sgday0 = diffR2(S0G,MSG);
sgday1 = diffR2(S1G,MSG);
sgday2 = diffR2(S2G,MSG);
sgday3 = diffR2(S3G,MSG);
sgday4 = diffR2(S4G,MSG);
sgday5 = diffR2(S5G,MSG);
sgday6 = diffR2(S6G,MSG);
sgday7 = diffR2(S7G,MSG);

sgmean = [sgday0(:,1); sgday1(:,1); sgday2(:,1); sgday3(:,1); sgday4(:,1); sgday5(:,1); sgday6(:,1); sgday7(:,1)];

%Dark - Trial 11
A0G = batchG(ACS);
A1G = batchG(A1S);
A2G = batchG(A2S);
A3G = batchG(A3S);
A4G = batchG(A4S);
A5G = batchG(A5S);
A6G = batchG(A6S);
A7G = batchG(A7S);

agday0 = diffR2(A0G,MSG);
agday1 = diffR2(A1G,MSG);
agday2 = diffR2(A2G,MSG);
agday3 = diffR2(A3G,MSG);
agday4 = diffR2(A4G,MSG);
agday5 = diffR2(A5G,MSG);
agday6 = diffR2(A6G,MSG);
agday7 = diffR2(A7G,MSG);

agmean = [agday0(:,1); agday1(:,1); agday2(:,1); agday3(:,1); agday4(:,1); agday5(:,1); agday6(:,1); agday7(:,1)];

%WELCH
CuWg0 = Welch(cgday0(:,1), gday0(:,1), cgday0(:,5), gday0(:,5));
CuWg1 = Welch(cgday1(:,1), gday1(:,1), cgday1(:,5), gday1(:,5));
CuWg2 = Welch(cgday2(:,1), gday2(:,1), cgday2(:,5), gday2(:,5));
CuWg3 = Welch(cgday3(:,1), gday3(:,1), cgday3(:,5), gday3(:,5));
CuWg4 = Welch(cgday4(:,1), gday4(:,1), cgday4(:,5), gday4(:,5));
CuWg5 = Welch(cgday5(:,1), gday5(:,1), cgday5(:,5), gday5(:,5));
CuWg6 = Welch(cgday6(:,1), gday6(:,1), cgday6(:,5), gday6(:,5));
CuWg7 = Welch(cgday7(:,1), gday7(:,1), cgday7(:,5), gday7(:,5));
CuWG = [CuWg0; CuWg1; CuWg2; CuWg3; CuWg4; CuWg5; CuWg6; CuWg7];

ZnWg0 = Welch(cgday0(:,1), zgday0(:,1), cgday0(:,5), zgday0(:,5));
ZnWg1 = Welch(cgday1(:,1), zgday1(:,1), cgday1(:,5), zgday1(:,5));
ZnWg2 = Welch(cgday2(:,1), zgday2(:,1), cgday2(:,5), zgday2(:,5));
ZnWg3 = Welch(cgday3(:,1), zgday3(:,1), cgday3(:,5), zgday3(:,5));
ZnWg4 = Welch(cgday4(:,1), zgday4(:,1), cgday4(:,5), zgday4(:,5));
ZnWg5 = Welch(cgday5(:,1), zgday5(:,1), cgday5(:,5), zgday5(:,5));
ZnWg6 = Welch(cgday6(:,1), zgday6(:,1), cgday6(:,5), zgday6(:,5));
ZnWg7 = Welch(cgday7(:,1), zgday7(:,1), cgday7(:,5), zgday7(:,5));
ZnWG = [ZnWg0; ZnWg1; ZnWg2;ZnWg3; ZnWg4; ZnWg5; ZnWg6; ZnWg7];  

PbWg0 = Welch(cgday0(:,1), pgday0(:,1), cgday0(:,5), pgday0(:,5));
PbWg1 = Welch(cgday1(:,1), pgday1(:,1), cgday1(:,5), pgday1(:,5));
PbWg2 = Welch(cgday2(:,1), pgday2(:,1), cgday2(:,5), pgday2(:,5));
PbWg3 = Welch(cgday3(:,1), pgday3(:,1), cgday3(:,5), pgday3(:,5));
PbWg4 = Welch(cgday4(:,1), pgday4(:,1), cgday4(:,5), pgday4(:,5));
PbWg5 = Welch(cgday5(:,1), pgday5(:,1), cgday5(:,5), pgday5(:,5));
PbWg6 = Welch(cgday6(:,1), pgday6(:,1), cgday6(:,5), pgday6(:,5));
PbWg7 = Welch(cgday7(:,1), pgday7(:,1), cgday7(:,5), pgday7(:,5));
PbWG = [PbWg0; PbWg1; PbWg2; PbWg3; PbWg4; PbWg5; PbWg6; PbWg7];

MxWg0 = Welch(cgday0(:,1), mgday0(:,1), cgday0(:,5), mgday0(:,5));
MxWg1 = Welch(cgday1(:,1), mgday1(:,1), cgday1(:,5), mgday1(:,5));
MxWg2 = Welch(cgday2(:,1), mgday2(:,1), cgday2(:,5), mgday2(:,5));
MxWg3 = Welch(cgday3(:,1), mgday3(:,1), cgday3(:,5), mgday3(:,5));
MxWg4 = Welch(cgday4(:,1), mgday4(:,1), cgday4(:,5), mgday4(:,5));
MxWg5 = Welch(cgday5(:,1), mgday5(:,1), cgday5(:,5), mgday5(:,5));
MxWg6 = Welch(cgday6(:,1), mgday6(:,1), cgday6(:,5), mgday6(:,5));
MxWg7 = Welch(cgday7(:,1), mgday7(:,1), cgday7(:,5), mgday7(:,5));
MxWG = [MxWg0; MxWg1; MxWg2; MxWg3; MxWg4; MxWg5; MxWg6; MxWg7];

WWg0 = Welch(cgday0(:,1), wgday0(:,1), cgday0(:,5), wgday0(:,5));
WWg1 = Welch(cgday1(:,1), wgday1(:,1), cgday1(:,5), wgday1(:,5));
WWg2 = Welch(cgday2(:,1), wgday2(:,1), cgday2(:,5), wgday2(:,5));
WWg3 = Welch(cgday3(:,1), wgday3(:,1), cgday3(:,5), wgday3(:,5));
WWg4 = Welch(cgday4(:,1), wgday4(:,1), cgday4(:,5), wgday4(:,5));
WWg5 = Welch(cgday5(:,1), wgday5(:,1), cgday5(:,5), wgday5(:,5));
WWg6 = Welch(cgday6(:,1), wgday6(:,1), cgday6(:,5), wgday6(:,5));
WWg7 = Welch(cgday7(:,1), wgday7(:,1), cgday7(:,5), wgday7(:,5));
WWG = [WWg0; WWg1; WWg2; WWg3; WWg4; WWg5; WWg6; WWg7];  

DWg0 = Welch(cgday0(:,1), dgday0(:,1), cgday0(:,5), dgday0(:,5));
DWg1 = Welch(cgday1(:,1), dgday1(:,1), cgday1(:,5), dgday1(:,5));
DWg2 = Welch(cgday2(:,1), dgday2(:,1), cgday2(:,5), dgday2(:,5));
DWg3 = Welch(cgday3(:,1), dgday3(:,1), cgday3(:,5), dgday3(:,5));
DWg4 = Welch(cgday4(:,1), dgday4(:,1), cgday4(:,5), dgday4(:,5));
DWg5 = Welch(cgday5(:,1), dgday5(:,1), cgday5(:,5), dgday5(:,5));
DWg6 = Welch(cgday6(:,1), dgday6(:,1), cgday6(:,5), dgday6(:,5));
DWg7 = Welch(cgday7(:,1), dgday7(:,1), cgday7(:,5), dgday7(:,5));
DWG = [DWg0; DWg1; DWg2; DWg3; DWg4; DWg5; DWg6; DWg7];

NWg0 = Welch(cgday0(:,1), ngday0(:,1), cgday0(:,5), ngday0(:,5));
NWg1 = Welch(cgday1(:,1), ngday1(:,1), cgday1(:,5), ngday1(:,5));
NWg2 = Welch(cgday2(:,1), ngday2(:,1), cgday2(:,5), ngday2(:,5));
NWg3 = Welch(cgday3(:,1), ngday3(:,1), cgday3(:,5), ngday3(:,5));
NWg4 = Welch(cgday4(:,1), ngday4(:,1), cgday4(:,5), ngday4(:,5));
NWg5 = Welch(cgday5(:,1), ngday5(:,1), cgday5(:,5), ngday5(:,5));
NWg6 = Welch(cgday6(:,1), ngday6(:,1), cgday6(:,5), ngday6(:,5));
NWg7 = Welch(cgday7(:,1), ngday7(:,1), cgday7(:,5), ngday7(:,5));
NWG = [NWg0; NWg1; NWg2; NWg3; NWg4; NWg5; NWg6; NWg7];   

LWg0 = Welch(cgday0(:,1), lgday0(:,1), cgday0(:,5), lgday0(:,5));
LWg1 = Welch(cgday1(:,1), lgday1(:,1), cgday1(:,5), lgday1(:,5));
LWg2 = Welch(cgday2(:,1), lgday2(:,1), cgday2(:,5), lgday2(:,5));
LWg3 = Welch(cgday3(:,1), lgday3(:,1), cgday3(:,5), lgday3(:,5));
LWg4 = Welch(cgday4(:,1), lgday4(:,1), cgday4(:,5), lgday4(:,5));
LWg5 = Welch(cgday5(:,1), lgday5(:,1), cgday5(:,5), lgday5(:,5));
LWg6 = Welch(cgday6(:,1), lgday6(:,1), cgday6(:,5), lgday6(:,5));
LWg7 = Welch(cgday7(:,1), lgday7(:,1), cgday7(:,5), lgday7(:,5));
LWG = [LWg0; LWg1; LWg2; LWg3; LWg4; LWg5; LWg6; LWg7];

SWg0 = Welch(cgday0(:,1), sgday0(:,1), cgday0(:,5), sgday0(:,5));
SWg1 = Welch(cgday1(:,1), sgday1(:,1), cgday1(:,5), sgday1(:,5));
SWg2 = Welch(cgday2(:,1), sgday2(:,1), cgday2(:,5), sgday2(:,5));
SWg3 = Welch(cgday3(:,1), sgday3(:,1), cgday3(:,5), sgday3(:,5));
SWg4 = Welch(cgday4(:,1), sgday4(:,1), cgday4(:,5), sgday4(:,5));
SWg5 = Welch(cgday5(:,1), sgday5(:,1), cgday5(:,5), sgday5(:,5));
SWg6 = Welch(cgday6(:,1), sgday6(:,1), cgday6(:,5), sgday6(:,5));
SWg7 = Welch(cgday7(:,1), sgday7(:,1), cgday7(:,5), sgday7(:,5));
SWG = [SWg0; SWg1; SWg2; SWg3; SWg4; SWg5; SWg6; SWg7];

AWg0 = Welch(cgday0(:,1), agday0(:,1), cgday0(:,5), agday0(:,5));
AWg1 = Welch(cgday1(:,1), agday1(:,1), cgday1(:,5), agday1(:,5));
AWg2 = Welch(cgday2(:,1), agday2(:,1), cgday2(:,5), agday2(:,5));
AWg3 = Welch(cgday3(:,1), agday3(:,1), cgday3(:,5), agday3(:,5));
AWg4 = Welch(cgday4(:,1), agday4(:,1), cgday4(:,5), agday4(:,5));
AWg5 = Welch(cgday5(:,1), agday5(:,1), cgday5(:,5), agday5(:,5));
AWg6 = Welch(cgday6(:,1), agday6(:,1), cgday6(:,5), agday6(:,5));
AWg7 = Welch(cgday7(:,1), agday7(:,1), cgday7(:,5), agday7(:,5));
AWG = [AWg0; AWg1; AWg2; AWg3; AWg4; AWg5; AWg6; AWg7];

x = (0:7);
figure;
plot(x,gmean,'LineWidth',2);
hold on
plot(x,zgmean,'LineWidth',2);
plot(x,pgmean,'LineWidth',2);
plot(x,mgmean,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContMg,'k','LineWidth',2);
yline(Contstd2g,'k--','LineWidth',2);
yline(Contstd3g,'k:','LineWidth',2);
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%environmental only
x = (0:7);
figure;
plot(x,wgmean,'LineWidth',2);
hold on
plot(x,dgmean,'LineWidth',2);
plot(x,ngmean,'LineWidth',2);
yline(ContMg,'k','LineWidth',2);
yline(Contstd2g,'k--','LineWidth',2);
yline(Contstd3g,'k:','LineWidth',2);
%legend('Wet','Dry','Nutr.','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%photoperiod only
x = (0:7);
figure;
plot(x,lgmean,'LineWidth',2);
hold on
plot(x,sgmean,'LineWidth',2);
plot(x,agmean,'LineWidth',2);
yline(ContMg,'k','LineWidth',2);
yline(Contstd2g,'k--','LineWidth',2);
yline(Contstd3g,'k:','LineWidth',2);
%legend('Long','Short','Dark','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off



%BLUE
MasterC = 'E:\Batch\10B\Control';
MasterCS = imageDatastore(MasterC);

%Master Control
MCB = batchMB(MasterCS);
MSB = batchB(MasterCS);

%Copper - Trial 1
Cu0B = batchB(CuCS);
Cu1B = batchB(Cu1S);
Cu2B = batchB(Cu2S);
Cu3B = batchB(Cu3S);
Cu4B = batchB(Cu4S);
Cu10B = batchB(Cu5S);
Cu6B = batchB(Cu6S);
Cu7B = batchB(Cu7S);

bday0 = diffR2(Cu0B,MSB);
bday1 = diffR2(Cu1B,MSB);
bday2 = diffR2(Cu2B,MSB);
bday3 = diffR2(Cu3B,MSB);
bday4 = diffR2(Cu4B,MSB);
bday5 = diffR2(Cu10B,MSB);
bday6 = diffR2(Cu6B,MSB);
bday7 = diffR2(Cu7B,MSB);

bmean = [bday0(:,1); bday1(:,1); bday2(:,1); bday3(:,1); bday4(:,1); bday5(:,1); bday6(:,1); bday7(:,1)];

%Zinc - Trial 2
Zn0B = batchB(ZnCS);
Zn1B = batchB(Zn1S);
Zn2B = batchB(Zn2S);
Zn3B = batchB(Zn3S);
Zn4B = batchB(Zn4S);
Zn10B = batchB(Zn5S);
Zn6B = batchB(Zn6S);
Zn7B = batchB(Zn7S);

zbday0 = diffR2(Zn0B,MSB);
zbday1 = diffR2(Zn1B,MSB);
zbday2 = diffR2(Zn2B,MSB);
zbday3 = diffR2(Zn3B,MSB);
zbday4 = diffR2(Zn4B,MSB);
zbday5 = diffR2(Zn10B,MSB);
zbday6 = diffR2(Zn6B,MSB);
zbday7 = diffR2(Zn7B,MSB);

zbmean = [zbday0(:,1); zbday1(:,1); zbday2(:,1); zbday3(:,1); zbday4(:,1); zbday5(:,1); zbday6(:,1); zbday7(:,1)];

%Lead - Trial 3
Pb0B = batchB(PbCS);
Pb1B = batchB(Pb1S);
Pb2B = batchB(Pb2S);
Pb3B = batchB(Pb3S);
Pb4B = batchB(Pb4S);
Pb10B = batchB(Pb5S);
Pb6B = batchB(Pb6S);
Pb7B = batchB(Pb7S);

pbday0 = diffR2(Pb0B,MSB);
pbday1 = diffR2(Pb1B,MSB);
pbday2 = diffR2(Pb2B,MSB);
pbday3 = diffR2(Pb3B,MSB);
pbday4 = diffR2(Pb4B,MSB);
pbday5 = diffR2(Pb10B,MSB);
pbday6 = diffR2(Pb6B,MSB);
pbday7 = diffR2(Pb7B,MSB);

pbmean = [pbday0(:,1); pbday1(:,1); pbday2(:,1); pbday3(:,1); pbday4(:,1); pbday5(:,1); pbday6(:,1); pbday7(:,1)];

%Mix - Trial 4
M0B = batchB(MCS);
M1B = batchB(M1S);
M2B = batchB(M2S);
M3B = batchB(M3S);
M4B = batchB(M4S);
M10B = batchB(M5S);
M6B = batchB(M6S);
M7B = batchB(M7S);

mbday0 = diffR2(M0B,MSB);
mbday1 = diffR2(M1B,MSB);
mbday2 = diffR2(M2B,MSB);
mbday3 = diffR2(M3B,MSB);
mbday4 = diffR2(M4B,MSB);
mbday5 = diffR2(M10B,MSB);
mbday6 = diffR2(M6B,MSB);
mbday7 = diffR2(M7B,MSB);

mbmean = [mbday0(:,1); mbday1(:,1); mbday2(:,1); mbday3(:,1); mbday4(:,1); mbday5(:,1); mbday6(:,1); mbday7(:,1)];

%Control for comparison
C0B = batchB(CCS);
C1B = batchB(C1S);
C2B = batchB(C2S);
C3B = batchB(C3S);
C4B = batchB(C4S);
C10B = batchB(C5S);
C6B = batchB(C6S);
C7B = batchB(C7S);

cbday0 = diffR2(C0B,MSB);
cbday1 = diffR2(C1B,MSB);
cbday2 = diffR2(C2B,MSB);
cbday3 = diffR2(C3B,MSB);
cbday4 = diffR2(C4B,MSB);
cbday5 = diffR2(C10B,MSB);
cbday6 = diffR2(C6B,MSB);
cbday7 = diffR2(C7B,MSB);

cbmean = [cbday0(:,1); cbday1(:,1); cbday2(:,1); cbday3(:,1); cbday4(:,1); cbday5(:,1); cbday6(:,1); cbday7(:,1)];

ContMb = sum(cbmean)/8
Contvarb = sum((cbmean - ContMb).^2)./(7);
Contstdb = sqrt(Contvarb);
Contstd2b = ContMb + (2.*Contstdb')
Contstd3b = ContMb + (3.*Contstdb')

%Wet - Trial 6
W0B = batchB(WCS);
W1B = batchB(W1S);
W2B = batchB(W2S);
W3B = batchB(W3S);
W4B = batchB(W4S);
W10B = batchB(W5S);
W6B = batchB(W6S);
W7B = batchB(W7S);

wbday0 = diffR2(W0B,MSB);
wbday1 = diffR2(W1B,MSB);
wbday2 = diffR2(W2B,MSB);
wbday3 = diffR2(W3B,MSB);
wbday4 = diffR2(W4B,MSB);
wbday5 = diffR2(W10B,MSB);
wbday6 = diffR2(W6B,MSB);
wbday7 = diffR2(W7B,MSB);

wbmean = [wbday0(:,1); wbday1(:,1); wbday2(:,1); wbday3(:,1); wbday4(:,1); wbday5(:,1); wbday6(:,1); wbday7(:,1)];

%Dry - Trial 7
D0B = batchB(DCS);
D1B = batchB(D1S);
D2B = batchB(D2S);
D3B = batchB(D3S);
D4B = batchB(D4S);
D10B = batchB(D5S);
D6B = batchB(D6S);
D7B = batchB(D7S);

dbday0 = diffR2(D0B,MSB);
dbday1 = diffR2(D1B,MSB);
dbday2 = diffR2(D2B,MSB);
dbday3 = diffR2(D3B,MSB);
dbday4 = diffR2(D4B,MSB);
dbday5 = diffR2(D10B,MSB);
dbday6 = diffR2(D6B,MSB);
dbday7 = diffR2(D7B,MSB);

dbmean = [dbday0(:,1); dbday1(:,1); dbday2(:,1); dbday3(:,1); dbday4(:,1); dbday5(:,1); dbday6(:,1); dbday7(:,1)];

%Nutrients - Trial 8
N0B = batchB(NCS);
N1B = batchB(N1S);
N2B = batchB(N2S);
N3B = batchB(N3S);
N4B = batchB(N4S);
N10B = batchB(N5S);
N6B = batchB(N6S);
N7B = batchB(N7S);

nbday0 = diffR2(N0B,MSB);
nbday1 = diffR2(N1B,MSB);
nbday2 = diffR2(N2B,MSB);
nbday3 = diffR2(N3B,MSB);
nbday4 = diffR2(N4B,MSB);
nbday5 = diffR2(N10B,MSB);
nbday6 = diffR2(N6B,MSB);
nbday7 = diffR2(N7B,MSB);

nbmean = [nbday0(:,1); nbday1(:,1); nbday2(:,1); nbday3(:,1); nbday4(:,1); nbday5(:,1); nbday6(:,1); nbday7(:,1)];

%Long - Trial 9
L0B = batchB(LCS);
L1B = batchB(L1S);
L2B = batchB(L2S);
L3B = batchB(L3S);
L4B = batchB(L4S);
L10B = batchB(L5S);
L6B = batchB(L6S);
L7B = batchB(L7S);

lbday0 = diffR2(L0B,MSB);
lbday1 = diffR2(L1B,MSB);
lbday2 = diffR2(L2B,MSB);
lbday3 = diffR2(L3B,MSB);
lbday4 = diffR2(L4B,MSB);
lbday5 = diffR2(L10B,MSB);
lbday6 = diffR2(L6B,MSB);
lbday7 = diffR2(L7B,MSB);

lbmean = [lbday0(:,1); lbday1(:,1); lbday2(:,1); lbday3(:,1); lbday4(:,1); lbday5(:,1); lbday6(:,1); lbday7(:,1)];

%Short - Trial 10
S0B = batchB(SCS);
S1B = batchB(S1S);
S2B = batchB(S2S);
S3B = batchB(S3S);
S4B = batchB(S4S);
S10B = batchB(S5S);
S6B = batchB(S6S);
S7B = batchB(S7S);

sbday0 = diffR2(S0B,MSB);
sbday1 = diffR2(S1B,MSB);
sbday2 = diffR2(S2B,MSB);
sbday3 = diffR2(S3B,MSB);
sbday4 = diffR2(S4B,MSB);
sbday5 = diffR2(S10B,MSB);
sbday6 = diffR2(S6B,MSB);
sbday7 = diffR2(S7B,MSB);

sbmean = [sbday0(:,1); sbday1(:,1); sbday2(:,1); sbday3(:,1); sbday4(:,1); sbday5(:,1); sbday6(:,1); sbday7(:,1)];

%Dark - Trial 11
A0B = batchB(ACS);
A1B = batchB(A1S);
A2B = batchB(A2S);
A3B = batchB(A3S);
A4B = batchB(A4S);
A10B = batchB(A5S);
A6B = batchB(A6S);
A7B = batchB(A7S);

abday0 = diffR2(A0B,MSB);
abday1 = diffR2(A1B,MSB);
abday2 = diffR2(A2B,MSB);
abday3 = diffR2(A3B,MSB);
abday4 = diffR2(A4B,MSB);
abday5 = diffR2(A10B,MSB);
abday6 = diffR2(A6B,MSB);
abday7 = diffR2(A7B,MSB);

abmean = [abday0(:,1); abday1(:,1); abday2(:,1); abday3(:,1); abday4(:,1); abday5(:,1); abday6(:,1); abday7(:,1)];


%WELCH
CuWb0 = Welch(cbday0(:,1), bday0(:,1), cbday0(:,5), bday0(:,5));
CuWb1 = Welch(cbday1(:,1), bday1(:,1), cbday1(:,5), bday1(:,5));
CuWb2 = Welch(cbday2(:,1), bday2(:,1), cbday2(:,5), bday2(:,5));
CuWb3 = Welch(cbday3(:,1), bday3(:,1), cbday3(:,5), bday3(:,5));
CuWb4 = Welch(cbday4(:,1), bday4(:,1), cbday4(:,5), bday4(:,5));
CuWb5 = Welch(cbday5(:,1), bday5(:,1), cbday5(:,5), bday5(:,5));
CuWb6 = Welch(cbday6(:,1), bday6(:,1), cbday6(:,5), bday6(:,5));
CuWb7 = Welch(cbday7(:,1), bday7(:,1), cbday7(:,5), bday7(:,5));
CuWB = [CuWb0; CuWb1; CuWb2; CuWb3; CuWb4; CuWb5; CuWb6; CuWb7];

ZnWb0 = Welch(cbday0(:,1), zbday0(:,1), cbday0(:,5), zbday0(:,5));
ZnWb1 = Welch(cbday1(:,1), zbday1(:,1), cbday1(:,5), zbday1(:,5));
ZnWb2 = Welch(cbday2(:,1), zbday2(:,1), cbday2(:,5), zbday2(:,5));
ZnWb3 = Welch(cbday3(:,1), zbday3(:,1), cbday3(:,5), zbday3(:,5));
ZnWb4 = Welch(cbday4(:,1), zbday4(:,1), cbday4(:,5), zbday4(:,5));
ZnWb5 = Welch(cbday5(:,1), zbday5(:,1), cbday5(:,5), zbday5(:,5));
ZnWb6 = Welch(cbday6(:,1), zbday6(:,1), cbday6(:,5), zbday6(:,5));
ZnWb7 = Welch(cbday7(:,1), zbday7(:,1), cbday7(:,5), zbday7(:,5));
ZnWB = [ZnWg0; ZnWg1; ZnWg2;ZnWg3; ZnWg4; ZnWg5; ZnWg6; ZnWg7];  

PbWb0 = Welch(cbday0(:,1), pbday0(:,1), cbday0(:,5), pbday0(:,5));
PbWb1 = Welch(cbday1(:,1), pbday1(:,1), cbday1(:,5), pbday1(:,5));
PbWb2 = Welch(cbday2(:,1), pbday2(:,1), cbday2(:,5), pbday2(:,5));
PbWb3 = Welch(cbday3(:,1), pbday3(:,1), cbday3(:,5), pbday3(:,5));
PbWb4 = Welch(cbday4(:,1), pbday4(:,1), cbday4(:,5), pbday4(:,5));
PbWb5 = Welch(cbday5(:,1), pbday5(:,1), cbday5(:,5), pbday5(:,5));
PbWb6 = Welch(cbday6(:,1), pbday6(:,1), cbday6(:,5), pbday6(:,5));
PbWb7 = Welch(cbday7(:,1), pbday7(:,1), cbday7(:,5), pbday7(:,5));
PbWB = [PbWg0; PbWg1; PbWg2; PbWg3; PbWg4; PbWg5; PbWg6; PbWg7];

MxWb0 = Welch(cbday0(:,1), mbday0(:,1), cbday0(:,5), mbday0(:,5));
MxWb1 = Welch(cbday1(:,1), mbday1(:,1), cbday1(:,5), mbday1(:,5));
MxWb2 = Welch(cbday2(:,1), mbday2(:,1), cbday2(:,5), mbday2(:,5));
MxWb3 = Welch(cbday3(:,1), mbday3(:,1), cbday3(:,5), mbday3(:,5));
MxWb4 = Welch(cbday4(:,1), mbday4(:,1), cbday4(:,5), mbday4(:,5));
MxWb5 = Welch(cbday5(:,1), mbday5(:,1), cbday5(:,5), mbday5(:,5));
MxWb6 = Welch(cbday6(:,1), mbday6(:,1), cbday6(:,5), mbday6(:,5));
MxWb7 = Welch(cbday7(:,1), mbday7(:,1), cbday7(:,5), mbday7(:,5));
MxWB = [MxWg0; MxWg1; MxWg2; MxWg3; MxWg4; MxWg5; MxWg6; MxWg7];

WWb0 = Welch(cbday0(:,1), wbday0(:,1), cbday0(:,5), wbday0(:,5));
WWb1 = Welch(cbday1(:,1), wbday1(:,1), cbday1(:,5), wbday1(:,5));
WWb2 = Welch(cbday2(:,1), wbday2(:,1), cbday2(:,5), wbday2(:,5));
WWb3 = Welch(cbday3(:,1), wbday3(:,1), cbday3(:,5), wbday3(:,5));
WWb4 = Welch(cbday4(:,1), wbday4(:,1), cbday4(:,5), wbday4(:,5));
WWb5 = Welch(cbday5(:,1), wbday5(:,1), cbday5(:,5), wbday5(:,5));
WWb6 = Welch(cbday6(:,1), wbday6(:,1), cbday6(:,5), wbday6(:,5));
WWb7 = Welch(cbday7(:,1), wbday7(:,1), cbday7(:,5), wbday7(:,5));
WWB = [WWg0; WWg1; WWg2; WWg3; WWg4; WWg5; WWg6; WWg7];  

DWb0 = Welch(cbday0(:,1), dbday0(:,1), cbday0(:,5), dbday0(:,5));
DWb1 = Welch(cbday1(:,1), dbday1(:,1), cbday1(:,5), dbday1(:,5));
DWb2 = Welch(cbday2(:,1), dbday2(:,1), cbday2(:,5), dbday2(:,5));
DWb3 = Welch(cbday3(:,1), dbday3(:,1), cbday3(:,5), dbday3(:,5));
DWb4 = Welch(cbday4(:,1), dbday4(:,1), cbday4(:,5), dbday4(:,5));
DWb5 = Welch(cbday5(:,1), dbday5(:,1), cbday5(:,5), dbday5(:,5));
DWb6 = Welch(cbday6(:,1), dbday6(:,1), cbday6(:,5), dbday6(:,5));
DWb7 = Welch(cbday7(:,1), dbday7(:,1), cbday7(:,5), dbday7(:,5));
DWB = [DWg0; DWg1; DWg2; DWg3; DWg4; DWg5; DWg6; DWg7];

NWb0 = Welch(cbday0(:,1), nbday0(:,1), cbday0(:,5), nbday0(:,5));
NWb1 = Welch(cbday1(:,1), nbday1(:,1), cbday1(:,5), nbday1(:,5));
NWb2 = Welch(cbday2(:,1), nbday2(:,1), cbday2(:,5), nbday2(:,5));
NWb3 = Welch(cbday3(:,1), nbday3(:,1), cbday3(:,5), nbday3(:,5));
NWb4 = Welch(cbday4(:,1), nbday4(:,1), cbday4(:,5), nbday4(:,5));
NWb5 = Welch(cbday5(:,1), nbday5(:,1), cbday5(:,5), nbday5(:,5));
NWb6 = Welch(cbday6(:,1), nbday6(:,1), cbday6(:,5), nbday6(:,5));
NWb7 = Welch(cbday7(:,1), nbday7(:,1), cbday7(:,5), nbday7(:,5));
NWB = [NWg0; NWg1; NWg2; NWg3; NWg4; NWg5; NWg6; NWg7];   

LWb0 = Welch(cbday0(:,1), lbday0(:,1), cbday0(:,5), lbday0(:,5));
LWb1 = Welch(cbday1(:,1), lbday1(:,1), cbday1(:,5), lbday1(:,5));
LWb2 = Welch(cbday2(:,1), lbday2(:,1), cbday2(:,5), lbday2(:,5));
LWb3 = Welch(cbday3(:,1), lbday3(:,1), cbday3(:,5), lbday3(:,5));
LWb4 = Welch(cbday4(:,1), lbday4(:,1), cbday4(:,5), lbday4(:,5));
LWb5 = Welch(cbday5(:,1), lbday5(:,1), cbday5(:,5), lbday5(:,5));
LWb6 = Welch(cbday6(:,1), lbday6(:,1), cbday6(:,5), lbday6(:,5));
LWb7 = Welch(cbday7(:,1), lbday7(:,1), cbday7(:,5), lbday7(:,5));
LWB = [LWg0; LWg1; LWg2; LWg3; LWg4; LWg5; LWg6; LWg7];

SWb0 = Welch(cbday0(:,1), sbday0(:,1), cbday0(:,5), sbday0(:,5));
SWb1 = Welch(cbday1(:,1), sbday1(:,1), cbday1(:,5), sbday1(:,5));
SWb2 = Welch(cbday2(:,1), sbday2(:,1), cbday2(:,5), sbday2(:,5));
SWb3 = Welch(cbday3(:,1), sbday3(:,1), cbday3(:,5), sbday3(:,5));
SWb4 = Welch(cbday4(:,1), sbday4(:,1), cbday4(:,5), sbday4(:,5));
SWb5 = Welch(cbday5(:,1), sbday5(:,1), cbday5(:,5), sbday5(:,5));
SWb6 = Welch(cbday6(:,1), sbday6(:,1), cbday6(:,5), sbday6(:,5));
SWb7 = Welch(cbday7(:,1), sbday7(:,1), cbday7(:,5), sbday7(:,5));
SWB = [SWg0; SWg1; SWg2; SWg3; SWg4; SWg5; SWg6; SWg7];

AWb0 = Welch(cbday0(:,1), abday0(:,1), cbday0(:,5), abday0(:,5));
AWb1 = Welch(cbday1(:,1), abday1(:,1), cbday1(:,5), abday1(:,5));
AWb2 = Welch(cbday2(:,1), abday2(:,1), cbday2(:,5), abday2(:,5));
AWb3 = Welch(cbday3(:,1), abday3(:,1), cbday3(:,5), abday3(:,5));
AWb4 = Welch(cbday4(:,1), abday4(:,1), cbday4(:,5), abday4(:,5));
AWb5 = Welch(cbday5(:,1), abday5(:,1), cbday5(:,5), abday5(:,5));
AWb6 = Welch(cbday6(:,1), abday6(:,1), cbday6(:,5), abday6(:,5));
AWb7 = Welch(cbday7(:,1), abday7(:,1), cbday7(:,5), abday7(:,5));
AWB = [AWg0; AWg1; AWg2; AWg3; AWg4; AWg5; AWg6; AWg7];

TCu = [CuWR(:,1) CuWR(:,3) CuWR(:,4) CuWG(:,1) CuWG(:,3) CuWG(:,4) CuWB(:,1) CuWB(:,3) CuWB(:,4)];
TZn = [ZnWR(:,1) ZnWR(:,3) ZnWR(:,4) ZnWG(:,1) ZnWG(:,3) ZnWG(:,4) ZnWB(:,1) ZnWB(:,3) ZnWB(:,4)];
TPb = [PbWR(:,1) PbWR(:,3) PbWR(:,4) PbWG(:,1) PbWG(:,3) PbWG(:,4) PbWB(:,1) PbWB(:,3) PbWB(:,4)];
TMx = [MxWR(:,1) MxWR(:,3) MxWR(:,4) MxWG(:,1) MxWG(:,3) MxWG(:,4) MxWB(:,1) MxWB(:,3) MxWB(:,4)];
TW = [WWR(:,1) WWR(:,3) WWR(:,4) WWG(:,1) WWG(:,3) WWG(:,4) WWB(:,1) WWB(:,3) WWB(:,4)];
TD = [DWR(:,1) DWR(:,3) DWR(:,4) DWG(:,1) DWG(:,3) DWG(:,4) DWB(:,1) DWB(:,3) DWB(:,4)];
TN = [NWR(:,1) NWR(:,3) NWR(:,4) NWG(:,1) NWG(:,3) NWG(:,4) NWB(:,1) NWB(:,3) NWB(:,4)];
TL = [LWR(:,1) LWR(:,3) LWR(:,4) LWG(:,1) LWG(:,3) LWG(:,4) LWB(:,1) LWB(:,3) LWB(:,4)];
TS = [SWR(:,1) SWR(:,3) SWR(:,4) SWG(:,1) SWG(:,3) SWG(:,4) SWB(:,1) SWB(:,3) SWB(:,4)];
TA = [AWR(:,1) AWR(:,3) AWR(:,4) AWG(:,1) AWG(:,3) AWG(:,4) AWB(:,1) AWB(:,3) AWB(:,4)];

%metal only
x = (0:7);
figure;
plot(x,bmean,'LineWidth',2);
hold on
plot(x,zbmean,'LineWidth',2);
plot(x,pbmean,'LineWidth',2);
plot(x,mbmean,'LineWidth',2);
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%environmental only
x = (0:7);
figure;
plot(x,wbmean,'LineWidth',2);
hold on
plot(x,dbmean,'LineWidth',2);
plot(x,nbmean,'LineWidth',2);
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Wet','Dry','Nutr.','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off

%photoperiod only
x = (0:7);
figure;
plot(x,lbmean,'LineWidth',2);
hold on
plot(x,sbmean,'LineWidth',2);
plot(x,abmean,'LineWidth',2);
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Long','Short','Dark','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 0 .65]);
hold off


%ratio bars
CuT = rmean + gmean + bmean
ZnT = zrmean + zgmean + zbmean
PbT = prmean + pgmean + pbmean
MxT = mrmean + mgmean + mbmean
CoT = crmean + cgmean + cbmean
WoT = wrmean + wgmean + wbmean
DoT = drmean + dgmean + dbmean
NoT = nrmean + ngmean + nbmean
LoT = lrmean + lgmean + lbmean
SoT = srmean + sgmean + sbmean
AoT = armean + agmean + abmean


CuTr = rmean./CuT
ZnTr = zrmean./ZnT
PbTr = prmean./PbT
MxTr = mrmean./MxT
CoTr = crmean./CoT
WoTr = wrmean./WoT
DoTr = drmean./DoT
NoTr = nrmean./NoT
LoTr = lrmean./LoT
SoTr = srmean./SoT
AoTr = armean./AoT

CuTg = gmean./CuT
ZnTg = zgmean./ZnT
PbTg = pgmean./PbT
MxTg = mgmean./MxT
CoTg = cgmean./CoT
WoTg = wgmean./WoT
DoTg = dgmean./DoT
NoTg = ngmean./NoT
LoTg = lgmean./LoT
SoTg = sgmean./SoT
AoTg = agmean./AoT

CuTb = bmean./CuT
ZnTb = zbmean./ZnT
PbTb = pbmean./PbT
MxTb = mbmean./MxT
CoTb = cbmean./CoT
WoTb = wbmean./WoT
DoTb = dbmean./DoT
NoTb = nbmean./NoT
LoTb = lbmean./LoT
SoTb = sbmean./SoT
AoTb = abmean./AoT



T1 = [CuTr(1,:) CuTg(1,:) CuTb(1,:); CuTr(2,:) CuTg(2,:) CuTb(2,:); CuTr(3,:) CuTg(3,:) CuTb(3,:); CuTr(4,:) CuTg(4,:) CuTb(4,:); CuTr(5,:) CuTg(5,:) CuTb(5,:); CuTr(6,:) CuTg(6,:) CuTb(6,:);CuTr(7,:) CuTg(7,:) CuTb(7,:); CuTr(8,:) CuTg(8,:) CuTb(8,:)];
T2 = [ZnTr(1,:) ZnTg(1,:) ZnTb(1,:); ZnTr(2,:) ZnTg(2,:) ZnTb(2,:); ZnTr(3,:) ZnTg(3,:) ZnTb(3,:); ZnTr(4,:) ZnTg(4,:) ZnTb(4,:); ZnTr(5,:) ZnTg(5,:) ZnTb(5,:); ZnTr(6,:) ZnTg(6,:) ZnTb(6,:);ZnTr(7,:) ZnTg(7,:) ZnTb(7,:); ZnTr(8,:) ZnTg(8,:) ZnTb(8,:)];
T3 = [PbTr(1,:) PbTg(1,:) PbTb(1,:); PbTr(2,:) PbTg(2,:) PbTb(2,:); PbTr(3,:) PbTg(3,:) PbTb(3,:); PbTr(4,:) PbTg(4,:) PbTb(4,:); PbTr(5,:) PbTg(5,:) PbTb(5,:); PbTr(6,:) PbTg(6,:) PbTb(6,:);PbTr(7,:) PbTg(7,:) PbTb(7,:); PbTr(8,:) PbTg(8,:) PbTb(8,:)];
T4 = [MxTr(1,:) MxTg(1,:) MxTb(1,:); MxTr(2,:) MxTg(2,:) MxTb(2,:); MxTr(3,:) MxTg(3,:) MxTb(3,:); MxTr(4,:) MxTg(4,:) MxTb(4,:); MxTr(5,:) MxTg(5,:) MxTb(5,:); MxTr(6,:) MxTg(6,:) MxTb(6,:);MxTr(7,:) MxTg(7,:) MxTb(7,:); MxTr(8,:) MxTg(8,:) MxTb(8,:)];
T5 = [CoTr(1,:) CoTg(1,:) CoTb(1,:); CoTr(2,:) CoTg(2,:) CoTb(2,:); CoTr(3,:) CoTg(3,:) CoTb(3,:); CoTr(4,:) CoTg(4,:) CoTb(4,:); CoTr(5,:) CoTg(5,:) CoTb(5,:); CoTr(6,:) CoTg(6,:) CoTb(6,:);CoTr(7,:) CoTg(7,:) CoTb(7,:); CoTr(8,:) CoTg(8,:) CoTb(8,:)];
T6 = [WoTr(1,:) WoTg(1,:) WoTb(1,:); WoTr(2,:) WoTg(2,:) WoTb(2,:); WoTr(3,:) WoTg(3,:) WoTb(3,:); WoTr(4,:) WoTg(4,:) WoTb(4,:); WoTr(5,:) WoTg(5,:) WoTb(5,:); WoTr(6,:) WoTg(6,:) WoTb(6,:);WoTr(7,:) WoTg(7,:) WoTb(7,:); WoTr(8,:) WoTg(8,:) WoTb(8,:)];
T7 = [DoTr(1,:) DoTg(1,:) DoTb(1,:); DoTr(2,:) DoTg(2,:) DoTb(2,:); DoTr(3,:) DoTg(3,:) DoTb(3,:); DoTr(4,:) DoTg(4,:) DoTb(4,:); DoTr(5,:) DoTg(5,:) DoTb(5,:); DoTr(6,:) DoTg(6,:) DoTb(6,:);DoTr(7,:) DoTg(7,:) DoTb(7,:); DoTr(8,:) DoTg(8,:) DoTb(8,:)];
T8 = [NoTr(1,:) NoTg(1,:) NoTb(1,:); NoTr(2,:) NoTg(2,:) NoTb(2,:); NoTr(3,:) NoTg(3,:) NoTb(3,:); NoTr(4,:) NoTg(4,:) NoTb(4,:); NoTr(5,:) NoTg(5,:) NoTb(5,:); NoTr(6,:) NoTg(6,:) NoTb(6,:);NoTr(7,:) NoTg(7,:) NoTb(7,:); NoTr(8,:) NoTg(8,:) NoTb(8,:)];
T9 = [LoTr(1,:) LoTg(1,:) LoTb(1,:); LoTr(2,:) LoTg(2,:) LoTb(2,:); LoTr(3,:) LoTg(3,:) LoTb(3,:); LoTr(4,:) LoTg(4,:) LoTb(4,:); LoTr(5,:) LoTg(5,:) LoTb(5,:); LoTr(6,:) LoTg(6,:) LoTb(6,:);LoTr(7,:) LoTg(7,:) LoTb(7,:); LoTr(8,:) LoTg(8,:) LoTb(8,:)];
T10 = [SoTr(1,:) SoTg(1,:) SoTb(1,:); SoTr(2,:) SoTg(2,:) SoTb(2,:); SoTr(3,:) SoTg(3,:) SoTb(3,:); SoTr(4,:) SoTg(4,:) SoTb(4,:); SoTr(5,:) SoTg(5,:) SoTb(5,:); SoTr(6,:) SoTg(6,:) SoTb(6,:);SoTr(7,:) SoTg(7,:) SoTb(7,:); SoTr(8,:) SoTg(8,:) SoTb(8,:)];
T11 = [AoTr(1,:) AoTg(1,:) AoTb(1,:); AoTr(2,:) AoTg(2,:) AoTb(2,:); AoTr(3,:) AoTg(3,:) AoTb(3,:); AoTr(4,:) AoTg(4,:) AoTb(4,:); AoTr(5,:) AoTg(5,:) AoTb(5,:); AoTr(6,:) AoTg(6,:) AoTb(6,:);AoTr(7,:) AoTg(7,:) AoTb(7,:); AoTr(8,:) AoTg(8,:) AoTb(8,:)];

tiledlayout(6,2)
% Top bar graph
ax1 = nexttile;
b1 = bar(ax1,T1)
b1(1).FaceColor = [0.6350 0.0780 0.1840];
b1(2).FaceColor = [0.4660 0.6740 0.1880];
b1(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Copper');
axis([0 9 0 0.5])
ax2 = nexttile;
b2 = bar(ax2,T2)
b2(1).FaceColor = [0.6350 0.0780 0.1840];
b2(2).FaceColor = [0.4660 0.6740 0.1880];
b2(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Zinc');
axis([0 9 0 0.5])
ax3 = nexttile;
b3 = bar(ax3,T3)
b3(1).FaceColor = [0.6350 0.0780 0.1840];
b3(2).FaceColor = [0.4660 0.6740 0.1880];
b3(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Lead');
axis([0 9 0 0.5])
ax4 = nexttile;
b4 = bar(ax4,T4)
b4(1).FaceColor = [0.6350 0.0780 0.1840];
b4(2).FaceColor = [0.4660 0.6740 0.1880];
b4(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Mix');
axis([0 9 0 0.5])
ax5 = nexttile;
b5 = bar(ax5,T5)
b5(1).FaceColor = [0.6350 0.0780 0.1840];
b5(2).FaceColor = [0.4660 0.6740 0.1880];
b5(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Cont.');
axis([0 9 0 0.5])
ax6 = nexttile;
b6 = bar(ax6,T6)
b6(1).FaceColor = [0.6350 0.0780 0.1840];
b6(2).FaceColor = [0.4660 0.6740 0.1880];
b6(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Wet');
axis([0 9 0 0.5])
ax7 = nexttile;
b7 = bar(ax7,T7)
b7(1).FaceColor = [0.6350 0.0780 0.1840];
b7(2).FaceColor = [0.4660 0.6740 0.1880];
b7(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Dry');
axis([0 9 0 0.5])
ax8 = nexttile;
b8 = bar(ax8,T8)
b8(1).FaceColor = [0.6350 0.0780 0.1840];
b8(2).FaceColor = [0.4660 0.6740 0.1880];
b8(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Nuts.');
axis([0 9 0 0.5])
ax9 = nexttile;
b9 = bar(ax9,T9)
b9(1).FaceColor = [0.6350 0.0780 0.1840];
b9(2).FaceColor = [0.4660 0.6740 0.1880];
b9(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Long');
axis([0 9 0 0.5])
ax10 = nexttile;
b10 = bar(ax10,T10)
b10(1).FaceColor = [0.6350 0.0780 0.1840];
b10(2).FaceColor = [0.4660 0.6740 0.1880];
b10(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Short');
axis([0 9 0 0.5])
ax11 = nexttile;
b11 = bar(ax11,T11)
b11(1).FaceColor = [0.6350 0.0780 0.1840];
b11(2).FaceColor = [0.4660 0.6740 0.1880];
b11(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Dark');
axis([0 9 0 0.5])

T1 = [rmean(1,:) gmean(1,:) bmean(1,:); rmean(2,:) gmean(2,:) bmean(2,:); rmean(3,:) gmean(3,:) bmean(3,:); rmean(4,:) gmean(4,:) bmean(4,:); rmean(5,:) gmean(5,:) bmean(5,:); rmean(6,:) gmean(6,:) bmean(6,:);rmean(7,:) gmean(7,:) bmean(7,:); rmean(8,:) gmean(8,:) bmean(8,:)];
T2 = [zrmean(1,:) zgmean(1,:) zbmean(1,:); zrmean(2,:) zgmean(2,:) zbmean(2,:); zrmean(3,:) zgmean(3,:) zbmean(3,:); zrmean(4,:) zgmean(4,:) zbmean(4,:); zrmean(5,:) zgmean(5,:) zbmean(5,:); zrmean(6,:) zgmean(6,:) zbmean(6,:);zrmean(7,:) zgmean(7,:) zbmean(7,:); zrmean(8,:) zgmean(8,:) zbmean(8,:)];
T3 = [prmean(1,:) pgmean(1,:) pbmean(1,:); prmean(2,:) pgmean(2,:) pbmean(2,:); prmean(3,:) pgmean(3,:) pbmean(3,:); prmean(4,:) pgmean(4,:) pbmean(4,:); prmean(5,:) pgmean(5,:) pbmean(5,:); prmean(6,:) pgmean(6,:) pbmean(6,:);prmean(7,:) pgmean(7,:) pbmean(7,:); prmean(8,:) pgmean(8,:) pbmean(8,:)];
T4 = [mrmean(1,:) mgmean(1,:) mbmean(1,:); mrmean(2,:) mgmean(2,:) mbmean(2,:); mrmean(3,:) mgmean(3,:) mbmean(3,:); mrmean(4,:) mgmean(4,:) mbmean(4,:); mrmean(5,:) mgmean(5,:) mbmean(5,:); mrmean(6,:) mgmean(6,:) mbmean(6,:);mrmean(7,:) mgmean(7,:) mbmean(7,:); mrmean(8,:) mgmean(8,:) mbmean(8,:)];
T5 = [crmean(1,:) cgmean(1,:) cbmean(1,:); crmean(2,:) cgmean(2,:) cbmean(2,:); crmean(3,:) cgmean(3,:) cbmean(3,:); crmean(4,:) cgmean(4,:) cbmean(4,:); crmean(5,:) cgmean(5,:) cbmean(5,:); crmean(6,:) cgmean(6,:) cbmean(6,:);crmean(7,:) cgmean(7,:) cbmean(7,:); crmean(8,:) cgmean(8,:) cbmean(8,:)];
T6 = [wrmean(1,:) wgmean(1,:) wbmean(1,:); wrmean(2,:) wgmean(2,:) wbmean(2,:); wrmean(3,:) wgmean(3,:) wbmean(3,:); wrmean(4,:) wgmean(4,:) wbmean(4,:); wrmean(5,:) wgmean(5,:) wbmean(5,:); wrmean(6,:) wgmean(6,:) wbmean(6,:); wrmean(7,:) wgmean(7,:) wbmean(7,:); wrmean(8,:) wgmean(8,:) wbmean(8,:)];
T7 = [drmean(1,:) dgmean(1,:) dbmean(1,:); drmean(2,:) dgmean(2,:) dbmean(2,:); drmean(3,:) dgmean(3,:) dbmean(3,:); drmean(4,:) dgmean(4,:) dbmean(4,:); drmean(5,:) dgmean(5,:) dbmean(5,:); drmean(6,:) dgmean(6,:) dbmean(6,:); drmean(7,:) dgmean(7,:) dbmean(7,:); drmean(8,:) dgmean(8,:) dbmean(8,:)];
T8 = [nrmean(1,:) ngmean(1,:) nbmean(1,:); nrmean(2,:) ngmean(2,:) nbmean(2,:); nrmean(3,:) ngmean(3,:) nbmean(3,:); nrmean(4,:) ngmean(4,:) nbmean(4,:); nrmean(5,:) ngmean(5,:) nbmean(5,:); nrmean(6,:) ngmean(6,:) nbmean(6,:); nrmean(7,:) ngmean(7,:) nbmean(7,:); nrmean(8,:) ngmean(8,:) nbmean(8,:)];
T9 = [lrmean(1,:) lgmean(1,:) lbmean(1,:); lrmean(2,:) lgmean(2,:) lbmean(2,:); lrmean(3,:) lgmean(3,:) lbmean(3,:); lrmean(4,:) lgmean(4,:) lbmean(4,:); lrmean(5,:) lgmean(5,:) lbmean(5,:); lrmean(6,:) lgmean(6,:) lbmean(6,:); lrmean(7,:) lgmean(7,:) lbmean(7,:); lrmean(8,:) lgmean(8,:) lbmean(8,:)];
T10 = [srmean(1,:) sgmean(1,:) sbmean(1,:); srmean(2,:) sgmean(2,:) sbmean(2,:); srmean(3,:) sgmean(3,:) sbmean(3,:); srmean(4,:) sgmean(4,:) sbmean(4,:); srmean(5,:) sgmean(5,:) sbmean(5,:); srmean(6,:) sgmean(6,:) sbmean(6,:); srmean(7,:) sgmean(7,:) sbmean(7,:); srmean(8,:) sgmean(8,:) sbmean(8,:)];
T11 = [armean(1,:) agmean(1,:) abmean(1,:); armean(2,:) agmean(2,:) abmean(2,:); armean(3,:) agmean(3,:) abmean(3,:); armean(4,:) agmean(4,:) abmean(4,:); armean(5,:) agmean(5,:) abmean(5,:); armean(6,:) agmean(6,:) abmean(6,:); armean(7,:) agmean(7,:) abmean(7,:); armean(8,:) agmean(8,:) abmean(8,:)];

tiledlayout(6,2)
% Top bar graph
ax1 = nexttile;
b1 = bar(ax1,T1)
b1(1).FaceColor = [0.6350 0.0780 0.1840];
b1(2).FaceColor = [0.4660 0.6740 0.1880];
b1(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Copper');
axis([0 9 0 1])
ax2 = nexttile;
b2 = bar(ax2,T2)
b2(1).FaceColor = [0.6350 0.0780 0.1840];
b2(2).FaceColor = [0.4660 0.6740 0.1880];
b2(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Zinc');
axis([0 9 0 1])
ax3 = nexttile;
b3 = bar(ax3,T3)
b3(1).FaceColor = [0.6350 0.0780 0.1840];
b3(2).FaceColor = [0.4660 0.6740 0.1880];
b3(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Lead');
axis([0 9 0 1])
ax4 = nexttile;
b4 = bar(ax4,T4)
b4(1).FaceColor = [0.6350 0.0780 0.1840];
b4(2).FaceColor = [0.4660 0.6740 0.1880];
b4(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Mix');
axis([0 9 0 1])
ax5 = nexttile;
b5 = bar(ax5,T5)
b5(1).FaceColor = [0.6350 0.0780 0.1840];
b5(2).FaceColor = [0.4660 0.6740 0.1880];
b5(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Cont.');
axis([0 9 0 1])
ax6 = nexttile;
b6 = bar(ax6,T6)
b6(1).FaceColor = [0.6350 0.0780 0.1840];
b6(2).FaceColor = [0.4660 0.6740 0.1880];
b6(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Wet');
axis([0 9 0 1])
ax7 = nexttile;
b7 = bar(ax7,T7)
b7(1).FaceColor = [0.6350 0.0780 0.1840];
b7(2).FaceColor = [0.4660 0.6740 0.1880];
b7(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Dry');
axis([0 9 0 1])
ax8 = nexttile;
b8 = bar(ax8,T8)
b8(1).FaceColor = [0.6350 0.0780 0.1840];
b8(2).FaceColor = [0.4660 0.6740 0.1880];
b8(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Nuts.');
axis([0 9 0 1])
ax9 = nexttile;
b9 = bar(ax9,T9)
b9(1).FaceColor = [0.6350 0.0780 0.1840];
b9(2).FaceColor = [0.4660 0.6740 0.1880];
b9(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Long');
axis([0 9 0 1])
ax10 = nexttile;
b10 = bar(ax10,T10)
b10(1).FaceColor = [0.6350 0.0780 0.1840];
b10(2).FaceColor = [0.4660 0.6740 0.1880];
b10(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Short');
axis([0 9 0 1])
ax11 = nexttile;
b11 = bar(ax11,T11)
b11(1).FaceColor = [0.6350 0.0780 0.1840];
b11(2).FaceColor = [0.4660 0.6740 0.1880];
b11(3).FaceColor = [[0 0.4470 0.7410]];
ylabel('Dark');
axis([0 9 0 1])