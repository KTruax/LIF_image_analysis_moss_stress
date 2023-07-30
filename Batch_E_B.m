%This code is for density overlap for single color only

MasterC = 'E:\Batch\10B\Control';
%MasterC = 'E:\Batch\10B\Extra'; - NOPE
%MasterC = 'E:\Batch\10B\All';
%MasterC = 'E:\Batch\10B\Cont';

MasterCS = imageDatastore(MasterC);

%Master Control
MCR = batchMR(MasterCS);
MSR = batchR(MasterCS);

MSRrday = diffR(MSR,MCR);
MSRrdiff = (1-(MSRrday(1,:)));
MSRrmeanstd = sumR(MSRrdiff);

Mmean = MSRrdiff(:,1);
Mstd2pos = MSRrdiff(:,1) + ((MSRrdiff(:,1)- MSRrdiff(:,2)));
Mstd3pos = MSRrdiff(:,1) + ((MSRrdiff(:,1)- MSRrdiff(:,3)));
Mstd2neg = MSRrdiff(:,2)
Mstd3neg = MSRrdiff(:,3)

%rdayMSR = diffR(MSR,MCR);
%mMSRmean = rdayMSR(:,1);
%mMSRstd2 = rdayMSR(:,2);
%mMSRstd3 = rdayMSR(:,3);
%MSRmean = 1 - (rdayMSR(:,1));
%MSRstd2 = 1 - (rdayMSR(:,2));
%MSRstd3 = 1 - (rdayMSR(:,3));
%MSRstd = (rdayMSR(:,4));
%MSRstd2 = MSRmean + (2.*MSRstd)
%MSRstd3 = MSRmean + (3.*MSRstd)

%Amin =min(MCR(:,1),MSR);
%Asum = sum(Amin);
%compare = sum(min(MCR(:,1),(MSR,2));


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

rday0 = diffR(Cu0R,MSR);
rday1 = diffR(Cu1R,MSR);
rday2 = diffR(Cu2R,MSR);
rday3 = diffR(Cu3R,MSR);
rday4 = diffR(Cu4R,MSR);
rday5 = diffR(Cu5R,MSR);
rday6 = diffR(Cu6R,MSR);
rday7 = diffR(Cu7R,MSR);

rdiff0 = (1-(rday0(1,:)));
rdiff1 = (1-(rday1(1,:)));
rdiff2 = (1-(rday2(1,:)));
rdiff3 = (1-(rday3(1,:)));
rdiff4 = (1-(rday4(1,:)));
rdiff5 = (1-(rday5(1,:)));
rdiff6 = (1-(rday6(1,:)));
rdiff7 = (1-(rday7(1,:)));

rmeanstd0 = sumR(rdiff0);
rmeanstd1 = sumR(rdiff1);
rmeanstd2 = sumR(rdiff2);
rmeanstd3 = sumR(rdiff3);
rmeanstd4 = sumR(rdiff4);
rmeanstd5 = sumR(rdiff5);
rmeanstd6 = sumR(rdiff6);
rmeanstd7 = sumR(rdiff7);

rmean = [rmeanstd0(:,1); rmeanstd1(:,1); rmeanstd2(:,1); rmeanstd3(:,1); rmeanstd4(:,1); rmeanstd5(:,1); rmeanstd6(:,1); rmeanstd7(:,1)];
rstd2 = [rmeanstd0(:,2); rmeanstd1(:,2); rmeanstd2(:,2); rmeanstd3(:,2); rmeanstd4(:,2); rmeanstd5(:,2); rmeanstd6(:,2); rmeanstd7(:,2)];
rstd3 = [rmeanstd0(:,3); rmeanstd1(:,3); rmeanstd2(:,3); rmeanstd3(:,3); rmeanstd4(:,3); rmeanstd5(:,3); rmeanstd6(:,3); rmeanstd7(:,3)];


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

zrday0 = diffR(Zn0R,MSR);
zrday1 = diffR(Zn1R,MSR);
zrday2 = diffR(Zn2R,MSR);
zrday3 = diffR(Zn3R,MSR);
zrday4 = diffR(Zn4R,MSR);
zrday5 = diffR(Zn5R,MSR);
zrday6 = diffR(Zn6R,MSR);
zrday7 = diffR(Zn7R,MSR);

zrdiff0 = (1-(zrday0(1,:)));
zrdiff1 = (1-(zrday1(1,:)));
zrdiff2 = (1-(zrday2(1,:)));
zrdiff3 = (1-(zrday3(1,:)));
zrdiff4 = (1-(zrday4(1,:)));
zrdiff5 = (1-(zrday5(1,:)));
zrdiff6 = (1-(zrday6(1,:)));
zrdiff7 = (1-(zrday7(1,:)));

zrmeanstd0 = sumR(zrdiff0);
zrmeanstd1 = sumR(zrdiff1);
zrmeanstd2 = sumR(zrdiff2);
zrmeanstd3 = sumR(zrdiff3);
zrmeanstd4 = sumR(zrdiff4);
zrmeanstd5 = sumR(zrdiff5);
zrmeanstd6 = sumR(zrdiff6);
zrmeanstd7 = sumR(zrdiff7);

zrmean = [zrmeanstd0(:,1); zrmeanstd1(:,1); zrmeanstd2(:,1); zrmeanstd3(:,1); zrmeanstd4(:,1); zrmeanstd5(:,1); zrmeanstd6(:,1); zrmeanstd7(:,1)];
zrstd2 = [zrmeanstd0(:,2); zrmeanstd1(:,2); zrmeanstd2(:,2); zrmeanstd3(:,2); zrmeanstd4(:,2); zrmeanstd5(:,2); zrmeanstd6(:,2); zrmeanstd7(:,2)];
zrstd3 = [zrmeanstd0(:,3); zrmeanstd1(:,3); zrmeanstd2(:,3); zrmeanstd3(:,3); zrmeanstd4(:,3); zrmeanstd5(:,3); zrmeanstd6(:,3); zrmeanstd7(:,3)];

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

prday0 = diffR(Pb0R,MSR);
prday1 = diffR(Pb1R,MSR);
prday2 = diffR(Pb2R,MSR);
prday3 = diffR(Pb3R,MSR);
prday4 = diffR(Pb4R,MSR);
prday5 = diffR(Pb5R,MSR);
prday6 = diffR(Pb6R,MSR);
prday7 = diffR(Pb7R,MSR);

prdiff0 = (1-(prday0(1,:)));
prdiff1 = (1-(prday1(1,:)));
prdiff2 = (1-(prday2(1,:)));
prdiff3 = (1-(prday3(1,:)));
prdiff4 = (1-(prday4(1,:)));
prdiff5 = (1-(prday5(1,:)));
prdiff6 = (1-(prday6(1,:)));
prdiff7 = (1-(prday7(1,:)));

prmeanstd0 = sumR(prdiff0);
prmeanstd1 = sumR(prdiff1);
prmeanstd2 = sumR(prdiff2);
prmeanstd3 = sumR(prdiff3);
prmeanstd4 = sumR(prdiff4);
prmeanstd5 = sumR(prdiff5);
prmeanstd6 = sumR(prdiff6);
prmeanstd7 = sumR(prdiff7);

prmean = [prmeanstd0(:,1); prmeanstd1(:,1); prmeanstd2(:,1); prmeanstd3(:,1); prmeanstd4(:,1); prmeanstd5(:,1); prmeanstd6(:,1); prmeanstd7(:,1)];
prstd2 = [prmeanstd0(:,2); prmeanstd1(:,2); prmeanstd2(:,2); prmeanstd3(:,2); prmeanstd4(:,2); prmeanstd5(:,2); prmeanstd6(:,2); prmeanstd7(:,2)];
prstd3 = [prmeanstd0(:,3); prmeanstd1(:,3); prmeanstd2(:,3); prmeanstd3(:,3); prmeanstd4(:,3); prmeanstd5(:,3); prmeanstd6(:,3); prmeanstd7(:,3)];

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

mrday0 = diffR(M0R,MSR);
mrday1 = diffR(M1R,MSR);
mrday2 = diffR(M2R,MSR);
mrday3 = diffR(M3R,MSR);
mrday4 = diffR(M4R,MSR);
mrday5 = diffR(M5R,MSR);
mrday6 = diffR(M6R,MSR);
mrday7 = diffR(M7R,MSR);

mrdiff0 = (1-(mrday0(1,:)));
mrdiff1 = (1-(mrday1(1,:)));
mrdiff2 = (1-(mrday2(1,:)));
mrdiff3 = (1-(mrday3(1,:)));
mrdiff4 = (1-(mrday4(1,:)));
mrdiff5 = (1-(mrday5(1,:)));
mrdiff6 = (1-(mrday6(1,:)));
mrdiff7 = (1-(mrday7(1,:)));

mrmeanstd0 = sumR(mrdiff0);
mrmeanstd1 = sumR(mrdiff1);
mrmeanstd2 = sumR(mrdiff2);
mrmeanstd3 = sumR(mrdiff3);
mrmeanstd4 = sumR(mrdiff4);
mrmeanstd5 = sumR(mrdiff5);
mrmeanstd6 = sumR(mrdiff6);
mrmeanstd7 = sumR(mrdiff7);

mrmean = [mrmeanstd0(:,1); mrmeanstd1(:,1); mrmeanstd2(:,1); mrmeanstd3(:,1); mrmeanstd4(:,1); mrmeanstd5(:,1); mrmeanstd6(:,1); mrmeanstd7(:,1)];
mrstd2 = [mrmeanstd0(:,2); mrmeanstd1(:,2); mrmeanstd2(:,2); mrmeanstd3(:,2); mrmeanstd4(:,2); mrmeanstd5(:,2); mrmeanstd6(:,2); mrmeanstd7(:,2)];
mrstd3 = [mrmeanstd0(:,3); mrmeanstd1(:,3); mrmeanstd2(:,3); mrmeanstd3(:,3); mrmeanstd4(:,3); mrmeanstd5(:,3); mrmeanstd6(:,3); mrmeanstd7(:,3)];

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

crday0 = diffR(C0R,MSR);
crday1 = diffR(C1R,MSR);
crday2 = diffR(C2R,MSR);
crday3 = diffR(C3R,MSR);
crday4 = diffR(C4R,MSR);
crday5 = diffR(C5R,MSR);
crday6 = diffR(C6R,MSR);
crday7 = diffR(C7R,MSR);

crdiff0 = (1-(crday0(1,:)));
crdiff1 = (1-(crday1(1,:)));
crdiff2 = (1-(crday2(1,:)));
crdiff3 = (1-(crday3(1,:)));
crdiff4 = (1-(crday4(1,:)));
crdiff5 = (1-(crday5(1,:)));
crdiff6 = (1-(crday6(1,:)));
crdiff7 = (1-(crday7(1,:)));

crmeanstd0 = sumR(crdiff0);
crmeanstd1 = sumR(crdiff1);
crmeanstd2 = sumR(crdiff2);
crmeanstd3 = sumR(crdiff3);
crmeanstd4 = sumR(crdiff4);
crmeanstd5 = sumR(crdiff5);
crmeanstd6 = sumR(crdiff6);
crmeanstd7 = sumR(crdiff7);

crmean = [crmeanstd0(:,1); crmeanstd1(:,1); crmeanstd2(:,1); crmeanstd3(:,1); crmeanstd4(:,1); crmeanstd5(:,1); crmeanstd6(:,1); crmeanstd7(:,1)];
crstd2 = [crmeanstd0(:,2); crmeanstd1(:,2); crmeanstd2(:,2); crmeanstd3(:,2); crmeanstd4(:,2); crmeanstd5(:,2); crmeanstd6(:,2); crmeanstd7(:,2)];
crstd3 = [crmeanstd0(:,3); crmeanstd1(:,3); crmeanstd2(:,3); crmeanstd3(:,3); crmeanstd4(:,3); crmeanstd5(:,3); crmeanstd6(:,3); crmeanstd7(:,3)];

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

wrday0 = diffR(W0R,MSR);
wrday1 = diffR(W1R,MSR);
wrday2 = diffR(W2R,MSR);
wrday3 = diffR(W3R,MSR);
wrday4 = diffR(W4R,MSR);
wrday5 = diffR(W5R,MSR);
wrday6 = diffR(W6R,MSR);
wrday7 = diffR(W7R,MSR);

wrdiff0 = (1-(wrday0(1,:)));
wrdiff1 = (1-(wrday1(1,:)));
wrdiff2 = (1-(wrday2(1,:)));
wrdiff3 = (1-(wrday3(1,:)));
wrdiff4 = (1-(wrday4(1,:)));
wrdiff5 = (1-(wrday5(1,:)));
wrdiff6 = (1-(wrday6(1,:)));
wrdiff7 = (1-(wrday7(1,:)));

wrmeanstd0 = sumR(wrdiff0);
wrmeanstd1 = sumR(wrdiff1);
wrmeanstd2 = sumR(wrdiff2);
wrmeanstd3 = sumR(wrdiff3);
wrmeanstd4 = sumR(wrdiff4);
wrmeanstd5 = sumR(wrdiff5);
wrmeanstd6 = sumR(wrdiff6);
wrmeanstd7 = sumR(wrdiff7);

wrmean = [wrmeanstd0(:,1); wrmeanstd1(:,1); wrmeanstd2(:,1); wrmeanstd3(:,1); wrmeanstd4(:,1); wrmeanstd5(:,1); wrmeanstd6(:,1); wrmeanstd7(:,1)];
wrstd2 = [wrmeanstd0(:,2); wrmeanstd1(:,2); wrmeanstd2(:,2); wrmeanstd3(:,2); wrmeanstd4(:,2); wrmeanstd5(:,2); wrmeanstd6(:,2); wrmeanstd7(:,2)];
wrstd3 = [wrmeanstd0(:,3); wrmeanstd1(:,3); wrmeanstd2(:,3); wrmeanstd3(:,3); wrmeanstd4(:,3); wrmeanstd5(:,3); wrmeanstd6(:,3); wrmeanstd7(:,3)];

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

drday0 = diffR(D0R,MSR);
drday1 = diffR(D1R,MSR);
drday2 = diffR(D2R,MSR);
drday3 = diffR(D3R,MSR);
drday4 = diffR(D4R,MSR);
drday5 = diffR(D5R,MSR);
drday6 = diffR(D6R,MSR);
drday7 = diffR(D7R,MSR);

drdiff0 = (1-(drday0(1,:)));
drdiff1 = (1-(drday1(1,:)));
drdiff2 = (1-(drday2(1,:)));
drdiff3 = (1-(drday3(1,:)));
drdiff4 = (1-(drday4(1,:)));
drdiff5 = (1-(drday5(1,:)));
drdiff6 = (1-(drday6(1,:)));
drdiff7 = (1-(drday7(1,:)));

drmeanstd0 = sumR(drdiff0);
drmeanstd1 = sumR(drdiff1);
drmeanstd2 = sumR(drdiff2);
drmeanstd3 = sumR(drdiff3);
drmeanstd4 = sumR(drdiff4);
drmeanstd5 = sumR(drdiff5);
drmeanstd6 = sumR(drdiff6);
drmeanstd7 = sumR(drdiff7);

drmean = [drmeanstd0(:,1); drmeanstd1(:,1); drmeanstd2(:,1); drmeanstd3(:,1); drmeanstd4(:,1); drmeanstd5(:,1); drmeanstd6(:,1); drmeanstd7(:,1)];
drstd2 = [drmeanstd0(:,2); drmeanstd1(:,2); drmeanstd2(:,2); drmeanstd3(:,2); drmeanstd4(:,2); drmeanstd5(:,2); drmeanstd6(:,2); drmeanstd7(:,2)];
drstd3 = [drmeanstd0(:,3); drmeanstd1(:,3); drmeanstd2(:,3); drmeanstd3(:,3); drmeanstd4(:,3); drmeanstd5(:,3); drmeanstd6(:,3); drmeanstd7(:,3)];

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

nrday0 = diffR(N0R,MSR);
nrday1 = diffR(N1R,MSR);
nrday2 = diffR(N2R,MSR);
nrday3 = diffR(N3R,MSR);
nrday4 = diffR(N4R,MSR);
nrday5 = diffR(N5R,MSR);
nrday6 = diffR(N6R,MSR);
nrday7 = diffR(N7R,MSR);

nrdiff0 = (1-(nrday0(1,:)));
nrdiff1 = (1-(nrday1(1,:)));
nrdiff2 = (1-(nrday2(1,:)));
nrdiff3 = (1-(nrday3(1,:)));
nrdiff4 = (1-(nrday4(1,:)));
nrdiff5 = (1-(nrday5(1,:)));
nrdiff6 = (1-(nrday6(1,:)));
nrdiff7 = (1-(nrday7(1,:)));

nrmeanstd0 = sumR(nrdiff0);
nrmeanstd1 = sumR(nrdiff1);
nrmeanstd2 = sumR(nrdiff2);
nrmeanstd3 = sumR(nrdiff3);
nrmeanstd4 = sumR(nrdiff4);
nrmeanstd5 = sumR(nrdiff5);
nrmeanstd6 = sumR(nrdiff6);
nrmeanstd7 = sumR(nrdiff7);

nrmean = [nrmeanstd0(:,1); nrmeanstd1(:,1); nrmeanstd2(:,1); nrmeanstd3(:,1); nrmeanstd4(:,1); nrmeanstd5(:,1); nrmeanstd6(:,1); nrmeanstd7(:,1)];
nrstd2 = [nrmeanstd0(:,2); nrmeanstd1(:,2); nrmeanstd2(:,2); nrmeanstd3(:,2); nrmeanstd4(:,2); nrmeanstd5(:,2); nrmeanstd6(:,2); nrmeanstd7(:,2)];
nrstd3 = [nrmeanstd0(:,3); nrmeanstd1(:,3); nrmeanstd2(:,3); nrmeanstd3(:,3); nrmeanstd4(:,3); nrmeanstd5(:,3); nrmeanstd6(:,3); nrmeanstd7(:,3)];

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

lrday0 = diffR(L0R,MSR);
lrday1 = diffR(L1R,MSR);
lrday2 = diffR(L2R,MSR);
lrday3 = diffR(L3R,MSR);
lrday4 = diffR(L4R,MSR);
lrday5 = diffR(L5R,MSR);
lrday6 = diffR(L6R,MSR);
lrday7 = diffR(L7R,MSR);

lrdiff0 = (1-(lrday0(1,:)));
lrdiff1 = (1-(lrday1(1,:)));
lrdiff2 = (1-(lrday2(1,:)));
lrdiff3 = (1-(lrday3(1,:)));
lrdiff4 = (1-(lrday4(1,:)));
lrdiff5 = (1-(lrday5(1,:)));
lrdiff6 = (1-(lrday6(1,:)));
lrdiff7 = (1-(lrday7(1,:)));

lrmeanstd0 = sumR(lrdiff0);
lrmeanstd1 = sumR(lrdiff1);
lrmeanstd2 = sumR(lrdiff2);
lrmeanstd3 = sumR(lrdiff3);
lrmeanstd4 = sumR(lrdiff4);
lrmeanstd5 = sumR(lrdiff5);
lrmeanstd6 = sumR(lrdiff6);
lrmeanstd7 = sumR(lrdiff7);

lrmean = [lrmeanstd0(:,1); lrmeanstd1(:,1); lrmeanstd2(:,1); lrmeanstd3(:,1); lrmeanstd4(:,1); lrmeanstd5(:,1); lrmeanstd6(:,1); lrmeanstd7(:,1)];
lrstd2 = [lrmeanstd0(:,2); lrmeanstd1(:,2); lrmeanstd2(:,2); lrmeanstd3(:,2); lrmeanstd4(:,2); lrmeanstd5(:,2); lrmeanstd6(:,2); lrmeanstd7(:,2)];
lrstd3 = [lrmeanstd0(:,3); lrmeanstd1(:,3); lrmeanstd2(:,3); lrmeanstd3(:,3); lrmeanstd4(:,3); lrmeanstd5(:,3); lrmeanstd6(:,3); lrmeanstd7(:,3)];

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

srday0 = diffR(S0R,MSR);
srday1 = diffR(S1R,MSR);
srday2 = diffR(S2R,MSR);
srday3 = diffR(S3R,MSR);
srday4 = diffR(S4R,MSR);
srday5 = diffR(S5R,MSR);
srday6 = diffR(S6R,MSR);
srday7 = diffR(S7R,MSR);

srdiff0 = (1-(srday0(1,:)));
srdiff1 = (1-(srday1(1,:)));
srdiff2 = (1-(srday2(1,:)));
srdiff3 = (1-(srday3(1,:)));
srdiff4 = (1-(srday4(1,:)));
srdiff5 = (1-(srday5(1,:)));
srdiff6 = (1-(srday6(1,:)));
srdiff7 = (1-(srday7(1,:)));

srmeanstd0 = sumR(srdiff0);
srmeanstd1 = sumR(srdiff1);
srmeanstd2 = sumR(srdiff2);
srmeanstd3 = sumR(srdiff3);
srmeanstd4 = sumR(srdiff4);
srmeanstd5 = sumR(srdiff5);
srmeanstd6 = sumR(srdiff6);
srmeanstd7 = sumR(srdiff7);

srmean = [srmeanstd0(:,1); srmeanstd1(:,1); srmeanstd2(:,1); srmeanstd3(:,1); srmeanstd4(:,1); srmeanstd5(:,1); srmeanstd6(:,1); srmeanstd7(:,1)];
srstd2 = [srmeanstd0(:,2); srmeanstd1(:,2); srmeanstd2(:,2); srmeanstd3(:,2); srmeanstd4(:,2); srmeanstd5(:,2); srmeanstd6(:,2); srmeanstd7(:,2)];
srstd3 = [srmeanstd0(:,3); srmeanstd1(:,3); srmeanstd2(:,3); srmeanstd3(:,3); srmeanstd4(:,3); srmeanstd5(:,3); srmeanstd6(:,3); srmeanstd7(:,3)];

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

arday0 = diffR(A0R,MSR);
arday1 = diffR(A1R,MSR);
arday2 = diffR(A2R,MSR);
arday3 = diffR(A3R,MSR);
arday4 = diffR(A4R,MSR);
arday5 = diffR(A5R,MSR);
arday6 = diffR(A6R,MSR);
arday7 = diffR(A7R,MSR);

ardiff0 = (1-(arday0(1,:)));
ardiff1 = (1-(arday1(1,:)));
ardiff2 = (1-(arday2(1,:)));
ardiff3 = (1-(arday3(1,:)));
ardiff4 = (1-(arday4(1,:)));
ardiff5 = (1-(arday5(1,:)));
ardiff6 = (1-(arday6(1,:)));
ardiff7 = (1-(arday7(1,:)));

armeanstd0 = sumR(ardiff0);
armeanstd1 = sumR(ardiff1);
armeanstd2 = sumR(ardiff2);
armeanstd3 = sumR(ardiff3);
armeanstd4 = sumR(ardiff4);
armeanstd5 = sumR(ardiff5);
armeanstd6 = sumR(ardiff6);
armeanstd7 = sumR(ardiff7);

armean = [armeanstd0(:,1); armeanstd1(:,1); armeanstd2(:,1); armeanstd3(:,1); armeanstd4(:,1); armeanstd5(:,1); armeanstd6(:,1); armeanstd7(:,1)];
arstd2 = [armeanstd0(:,2); armeanstd1(:,2); armeanstd2(:,2); armeanstd3(:,2); armeanstd4(:,2); armeanstd5(:,2); armeanstd6(:,2); armeanstd7(:,2)];
arstd3 = [armeanstd0(:,3); armeanstd1(:,3); armeanstd2(:,3); armeanstd3(:,3); armeanstd4(:,3); armeanstd5(:,3); armeanstd6(:,3); armeanstd7(:,3)];

std2 = MSRrmeanstd(:,1) - MSRrmeanstd(:,2);
std3 = MSRrmeanstd(:,1) - MSRrmeanstd(:,3);
Mstd2 = MSRrmeanstd(:,1) + (2*0.00844254133456994);
Mstd3 = MSRrmeanstd(:,1) + (3*0.00844254133456994);

x = (0:7);
figure;
plot(x,rmean);
hold on
plot(x,zrmean);
plot(x,prmean);
plot(x,mrmean);
plot(x,crmean);
plot(x,wrmean);
plot(x,drmean);
plot(x,nrmean);
plot(x,lrmean);
plot(x,srmean);
plot(x,drmean);
plot(x,armean);
legend('Cu','Zn','Pb','Mix','Cont','Wet','Dry','Nutr','Long','Short','Dark');
yline(Mmean,'k');
yline(Mstd2pos,'k--');
yline(Mstd3pos,'k:');
yline(Mstd2neg,'k--');
yline(Mstd3neg,'k:');
hold off


Mmean = MSRrdiff(:,1);
Mstd2pos = MSRrdiff(:,1) + MSRrday(:,4) + MSRrday(:,4);
Mstd3pos = MSRrdiff(:,1) + MSRrday(:,4) + MSRrday(:,4)+ MSRrday(:,4);
Mstd2neg = MSRrdiff(:,1) - MSRrday(:,4) - MSRrday(:,4);
Mstd3neg = MSRrdiff(:,1) - MSRrday(:,4) - MSRrday(:,4) - MSRrday(:,4);

figure;
plot(x,dt1r,'k--','LineWidth',2);
hold on;
plot(x,dt2r,'Color', [200 200 200]/255, 'LineWidth',2);
plot(x,dt3r,'Color',[125 125 125]/255, 'LineWidth',2);
plot(x,dt4r,'k','LineWidth',2);
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
legend('Trial 1','Trial 2','Trial 3','Trial 4');
xlabel('Time (Days)');
ylabel('Intersection Difference (Density)');
title('Intersection Difference of Density Histograms Compared to Control (Red)');
axis([0 10 0 1]);
set(gca,'Xtick',0:2:10);
set(gca,'Ytick',0:.2:1)
hold off;

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
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 .1 .65]);
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

MSGrday = diffR(MSG,MCG);
MSGrdiff = (1-(MSRrday(1,:)));
MSGrmeanstd = sumR(MSGrdiff);

gMmean = MSGrdiff(:,1);
gMstd2pos = MSGrdiff(:,1) + ((MSGrdiff(:,1)- MSGrdiff(:,2)));
gMstd3pos = MSGrdiff(:,1) + ((MSGrdiff(:,1)- MSGrdiff(:,3)));
gMstd2neg = MSGrdiff(:,2)
gMstd3neg = MSGrdiff(:,3)

%Copper - Trial 1
Cu0G = batchG(CuCS);
Cu1G = batchG(Cu1S);
Cu2G = batchG(Cu2S);
Cu3G = batchG(Cu3S);
Cu4G = batchG(Cu4S);
Cu5G = batchG(Cu5S);
Cu6G = batchG(Cu6S);
Cu7G = batchG(Cu7S);

gday0 = diffR(Cu0G,MSG);
gday1 = diffR(Cu1G,MSG);
gday2 = diffR(Cu2G,MSG);
gday3 = diffR(Cu3G,MSG);
gday4 = diffR(Cu4G,MSG);
gday5 = diffR(Cu5G,MSG);
gday6 = diffR(Cu6G,MSG);
gday7 = diffR(Cu7G,MSG);

gdiff0 = (1-(gday0(1,:)));
gdiff1 = (1-(gday1(1,:)));
gdiff2 = (1-(gday2(1,:)));
gdiff3 = (1-(gday3(1,:)));
gdiff4 = (1-(gday4(1,:)));
gdiff5 = (1-(gday5(1,:)));
gdiff6 = (1-(gday6(1,:)));
gdiff7 = (1-(gday7(1,:)));

gmeanstd0 = sumR(gdiff0);
gmeanstd1 = sumR(gdiff1);
gmeanstd2 = sumR(gdiff2);
gmeanstd3 = sumR(gdiff3);
gmeanstd4 = sumR(gdiff4);
gmeanstd5 = sumR(gdiff5);
gmeanstd6 = sumR(gdiff6);
gmeanstd7 = sumR(gdiff7);

gmean = [gmeanstd0(:,1); gmeanstd1(:,1); gmeanstd2(:,1); gmeanstd3(:,1); gmeanstd4(:,1); gmeanstd5(:,1); gmeanstd6(:,1); gmeanstd7(:,1)];

%Zinc - Trial 2
Zn0G = batchG(ZnCS);
Zn1G = batchG(Zn1S);
Zn2G = batchG(Zn2S);
Zn3G = batchG(Zn3S);
Zn4G = batchG(Zn4S);
Zn5G = batchG(Zn5S);
Zn6G = batchG(Zn6S);
Zn7G = batchG(Zn7S);

zgday0 = diffR(Zn0G,MSG);
zgday1 = diffR(Zn1G,MSG);
zgday2 = diffR(Zn2G,MSG);
zgday3 = diffR(Zn3G,MSG);
zgday4 = diffR(Zn4G,MSG);
zgday5 = diffR(Zn5G,MSG);
zgday6 = diffR(Zn6G,MSG);
zgday7 = diffR(Zn7G,MSG);

zgdiff0 = (1-(zgday0(1,:)));
zgdiff1 = (1-(zgday1(1,:)));
zgdiff2 = (1-(zgday2(1,:)));
zgdiff3 = (1-(zgday3(1,:)));
zgdiff4 = (1-(zgday4(1,:)));
zgdiff5 = (1-(zgday5(1,:)));
zgdiff6 = (1-(zgday6(1,:)));
zgdiff7 = (1-(zgday7(1,:)));

zgmeanstd0 = sumR(zgdiff0);
zgmeanstd1 = sumR(zgdiff1);
zgmeanstd2 = sumR(zgdiff2);
zgmeanstd3 = sumR(zgdiff3);
zgmeanstd4 = sumR(zgdiff4);
zgmeanstd5 = sumR(zgdiff5);
zgmeanstd6 = sumR(zgdiff6);
zgmeanstd7 = sumR(zgdiff7);

zgmean = [zgmeanstd0(:,1); zgmeanstd1(:,1); zgmeanstd2(:,1); zgmeanstd3(:,1); zgmeanstd4(:,1); zgmeanstd5(:,1); zgmeanstd6(:,1); zgmeanstd7(:,1)];

%Lead - Trial 3
Pb0G = batchG(PbCS);
Pb1G = batchG(Pb1S);
Pb2G = batchG(Pb2S);
Pb3G = batchG(Pb3S);
Pb4G = batchG(Pb4S);
Pb5G = batchG(Pb5S);
Pb6G = batchG(Pb6S);
Pb7G = batchG(Pb7S);

pgday0 = diffR(Pb0G,MSG);
pgday1 = diffR(Pb1G,MSG);
pgday2 = diffR(Pb2G,MSG);
pgday3 = diffR(Pb3G,MSG);
pgday4 = diffR(Pb4G,MSG);
pgday5 = diffR(Pb5G,MSG);
pgday6 = diffR(Pb6G,MSG);
pgday7 = diffR(Pb7G,MSG);

pgdiff0 = (1-(pgday0(1,:)));
pgdiff1 = (1-(pgday1(1,:)));
pgdiff2 = (1-(pgday2(1,:)));
pgdiff3 = (1-(pgday3(1,:)));
pgdiff4 = (1-(pgday4(1,:)));
pgdiff5 = (1-(pgday5(1,:)));
pgdiff6 = (1-(pgday6(1,:)));
pgdiff7 = (1-(pgday7(1,:)));

pgmeanstd0 = sumR(pgdiff0);
pgmeanstd1 = sumR(pgdiff1);
pgmeanstd2 = sumR(pgdiff2);
pgmeanstd3 = sumR(pgdiff3);
pgmeanstd4 = sumR(pgdiff4);
pgmeanstd5 = sumR(pgdiff5);
pgmeanstd6 = sumR(pgdiff6);
pgmeanstd7 = sumR(pgdiff7);

pgmean = [pgmeanstd0(:,1); pgmeanstd1(:,1); pgmeanstd2(:,1); pgmeanstd3(:,1); pgmeanstd4(:,1); pgmeanstd5(:,1); pgmeanstd6(:,1); pgmeanstd7(:,1)];

%Mix - Trial 4
M0G = batchG(MCS);
M1G = batchG(M1S);
M2G = batchG(M2S);
M3G = batchG(M3S);
M4G = batchG(M4S);
M5G = batchG(M5S);
M6G = batchG(M6S);
M7G = batchG(M7S);

mgday0 = diffR(M0G,MSG);
mgday1 = diffR(M1G,MSG);
mgday2 = diffR(M2G,MSG);
mgday3 = diffR(M3G,MSG);
mgday4 = diffR(M4G,MSG);
mgday5 = diffR(M5G,MSG);
mgday6 = diffR(M6G,MSG);
mgday7 = diffR(M7G,MSG);

mgdiff0 = (1-(mgday0(1,:)));
mgdiff1 = (1-(mgday1(1,:)));
mgdiff2 = (1-(mgday2(1,:)));
mgdiff3 = (1-(mgday3(1,:)));
mgdiff4 = (1-(mgday4(1,:)));
mgdiff5 = (1-(mgday5(1,:)));
mgdiff6 = (1-(mgday6(1,:)));
mgdiff7 = (1-(mgday7(1,:)));

mgmeanstd0 = sumR(mgdiff0);
mgmeanstd1 = sumR(mgdiff1);
mgmeanstd2 = sumR(mgdiff2);
mgmeanstd3 = sumR(mgdiff3);
mgmeanstd4 = sumR(mgdiff4);
mgmeanstd5 = sumR(mgdiff5);
mgmeanstd6 = sumR(mgdiff6);
mgmeanstd7 = sumR(mgdiff7);

mgmean = [mgmeanstd0(:,1); mgmeanstd1(:,1); mgmeanstd2(:,1); mgmeanstd3(:,1); mgmeanstd4(:,1); mgmeanstd5(:,1); mgmeanstd6(:,1); mgmeanstd7(:,1)];

%Control for comparison
C0G = batchG(CCS);
C1G = batchG(C1S);
C2G = batchG(C2S);
C3G = batchG(C3S);
C4G = batchG(C4S);
C5G = batchG(C5S);
C6G = batchG(C6S);
C7G = batchG(C7S);

cgday0 = diffR(C0G,MSG);
cgday1 = diffR(C1G,MSG);
cgday2 = diffR(C2G,MSG);
cgday3 = diffR(C3G,MSG);
cgday4 = diffR(C4G,MSG);
cgday5 = diffR(C5G,MSG);
cgday6 = diffR(C6G,MSG);
cgday7 = diffR(C7G,MSG);

cgdiff0 = (1-(cgday0(1,:)));
cgdiff1 = (1-(cgday1(1,:)));
cgdiff2 = (1-(cgday2(1,:)));
cgdiff3 = (1-(cgday3(1,:)));
cgdiff4 = (1-(cgday4(1,:)));
cgdiff5 = (1-(cgday5(1,:)));
cgdiff6 = (1-(cgday6(1,:)));
cgdiff7 = (1-(cgday7(1,:)));

cgmeanstd0 = sumR(cgdiff0);
cgmeanstd1 = sumR(cgdiff1);
cgmeanstd2 = sumR(cgdiff2);
cgmeanstd3 = sumR(cgdiff3);
cgmeanstd4 = sumR(cgdiff4);
cgmeanstd5 = sumR(cgdiff5);
cgmeanstd6 = sumR(cgdiff6);
cgmeanstd7 = sumR(cgdiff7);

cgmean = [cgmeanstd0(:,1); cgmeanstd1(:,1); cgmeanstd2(:,1); cgmeanstd3(:,1); cgmeanstd4(:,1); cgmeanstd5(:,1); cgmeanstd6(:,1); cgmeanstd7(:,1)];

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

wgday0 = diffR(W0G,MSG);
wgday1 = diffR(W1G,MSG);
wgday2 = diffR(W2G,MSG);
wgday3 = diffR(W3G,MSG);
wgday4 = diffR(W4G,MSG);
wgday5 = diffR(W5G,MSG);
wgday6 = diffR(W6G,MSG);
wgday7 = diffR(W7G,MSG);

wgdiff0 = (1-(wgday0(1,:)));
wgdiff1 = (1-(wgday1(1,:)));
wgdiff2 = (1-(wgday2(1,:)));
wgdiff3 = (1-(wgday3(1,:)));
wgdiff4 = (1-(wgday4(1,:)));
wgdiff5 = (1-(wgday5(1,:)));
wgdiff6 = (1-(wgday6(1,:)));
wgdiff7 = (1-(wgday7(1,:)));

wgmeanstd0 = sumR(wgdiff0);
wgmeanstd1 = sumR(wgdiff1);
wgmeanstd2 = sumR(wgdiff2);
wgmeanstd3 = sumR(wgdiff3);
wgmeanstd4 = sumR(wgdiff4);
wgmeanstd5 = sumR(wgdiff5);
wgmeanstd6 = sumR(wgdiff6);
wgmeanstd7 = sumR(wgdiff7);

wgmean = [wgmeanstd0(:,1); wgmeanstd1(:,1); wgmeanstd2(:,1); wgmeanstd3(:,1); wgmeanstd4(:,1); wgmeanstd5(:,1); wgmeanstd6(:,1); wgmeanstd7(:,1)];

%Dry - Trial 7
D0G = batchG(DCS);
D1G = batchG(D1S);
D2G = batchG(D2S);
D3G = batchG(D3S);
D4G = batchG(D4S);
D5G = batchG(D5S);
D6G = batchG(D6S);
D7G = batchG(D7S);

dgday0 = diffR(D0G,MSG);
dgday1 = diffR(D1G,MSG);
dgday2 = diffR(D2G,MSG);
dgday3 = diffR(D3G,MSG);
dgday4 = diffR(D4G,MSG);
dgday5 = diffR(D5G,MSG);
dgday6 = diffR(D6G,MSG);
dgday7 = diffR(D7G,MSG);

dgdiff0 = (1-(dgday0(1,:)));
dgdiff1 = (1-(dgday1(1,:)));
dgdiff2 = (1-(dgday2(1,:)));
dgdiff3 = (1-(dgday3(1,:)));
dgdiff4 = (1-(dgday4(1,:)));
dgdiff5 = (1-(dgday5(1,:)));
dgdiff6 = (1-(dgday6(1,:)));
dgdiff7 = (1-(dgday7(1,:)));

dgmeanstd0 = sumR(dgdiff0);
dgmeanstd1 = sumR(dgdiff1);
dgmeanstd2 = sumR(dgdiff2);
dgmeanstd3 = sumR(dgdiff3);
dgmeanstd4 = sumR(dgdiff4);
dgmeanstd5 = sumR(dgdiff5);
dgmeanstd6 = sumR(dgdiff6);
dgmeanstd7 = sumR(dgdiff7);

dgmean = [dgmeanstd0(:,1); dgmeanstd1(:,1); dgmeanstd2(:,1); dgmeanstd3(:,1); dgmeanstd4(:,1); dgmeanstd5(:,1); dgmeanstd6(:,1); dgmeanstd7(:,1)];

%Nutrients - Trial 8
N0G = batchG(NCS);
N1G = batchG(N1S);
N2G = batchG(N2S);
N3G = batchG(N3S);
N4G = batchG(N4S);
N5G = batchG(N5S);
N6G = batchG(N6S);
N7G = batchG(N7S);

ngday0 = diffR(N0G,MSG);
ngday1 = diffR(N1G,MSG);
ngday2 = diffR(N2G,MSG);
ngday3 = diffR(N3G,MSG);
ngday4 = diffR(N4G,MSG);
ngday5 = diffR(N5G,MSG);
ngday6 = diffR(N6G,MSG);
ngday7 = diffR(N7G,MSG);

ngdiff0 = (1-(ngday0(1,:)));
ngdiff1 = (1-(ngday1(1,:)));
ngdiff2 = (1-(ngday2(1,:)));
ngdiff3 = (1-(ngday3(1,:)));
ngdiff4 = (1-(ngday4(1,:)));
ngdiff5 = (1-(ngday5(1,:)));
ngdiff6 = (1-(ngday6(1,:)));
ngdiff7 = (1-(ngday7(1,:)));

ngmeanstd0 = sumR(ngdiff0);
ngmeanstd1 = sumR(ngdiff1);
ngmeanstd2 = sumR(ngdiff2);
ngmeanstd3 = sumR(ngdiff3);
ngmeanstd4 = sumR(ngdiff4);
ngmeanstd5 = sumR(ngdiff5);
ngmeanstd6 = sumR(ngdiff6);
ngmeanstd7 = sumR(ngdiff7);

ngmean = [ngmeanstd0(:,1); ngmeanstd1(:,1); ngmeanstd2(:,1); ngmeanstd3(:,1); ngmeanstd4(:,1); ngmeanstd5(:,1); ngmeanstd6(:,1); ngmeanstd7(:,1)];

%Long - Trial 9
L0G = batchG(LCS);
L1G = batchG(L1S);
L2G = batchG(L2S);
L3G = batchG(L3S);
L4G = batchG(L4S);
L5G = batchG(L5S);
L6G = batchG(L6S);
L7G = batchG(L7S);

lgday0 = diffR(L0G,MSG);
lgday1 = diffR(L1G,MSG);
lgday2 = diffR(L2G,MSG);
lgday3 = diffR(L3G,MSG);
lgday4 = diffR(L4G,MSG);
lgday5 = diffR(L5G,MSG);
lgday6 = diffR(L6G,MSG);
lgday7 = diffR(L7G,MSG);

lgdiff0 = (1-(lgday0(1,:)));
lgdiff1 = (1-(lgday1(1,:)));
lgdiff2 = (1-(lgday2(1,:)));
lgdiff3 = (1-(lgday3(1,:)));
lgdiff4 = (1-(lgday4(1,:)));
lgdiff5 = (1-(lgday5(1,:)));
lgdiff6 = (1-(lgday6(1,:)));
lgdiff7 = (1-(lgday7(1,:)));

lgmeanstd0 = sumR(lgdiff0);
lgmeanstd1 = sumR(lgdiff1);
lgmeanstd2 = sumR(lgdiff2);
lgmeanstd3 = sumR(lgdiff3);
lgmeanstd4 = sumR(lgdiff4);
lgmeanstd5 = sumR(lgdiff5);
lgmeanstd6 = sumR(lgdiff6);
lgmeanstd7 = sumR(lgdiff7);

lgmean = [lgmeanstd0(:,1); lgmeanstd1(:,1); lgmeanstd2(:,1); lgmeanstd3(:,1); lgmeanstd4(:,1); lgmeanstd5(:,1); lgmeanstd6(:,1); lgmeanstd7(:,1)];

%Short - Trial 10
S0G = batchG(SCS);
S1G = batchG(S1S);
S2G = batchG(S2S);
S3G = batchG(S3S);
S4G = batchG(S4S);
S5G = batchG(S5S);
S6G = batchG(S6S);
S7G = batchG(S7S);

sgday0 = diffR(S0G,MSG);
sgday1 = diffR(S1G,MSG);
sgday2 = diffR(S2G,MSG);
sgday3 = diffR(S3G,MSG);
sgday4 = diffR(S4G,MSG);
sgday5 = diffR(S5G,MSG);
sgday6 = diffR(S6G,MSG);
sgday7 = diffR(S7G,MSG);

sgdiff0 = (1-(sgday0(1,:)));
sgdiff1 = (1-(sgday1(1,:)));
sgdiff2 = (1-(sgday2(1,:)));
sgdiff3 = (1-(sgday3(1,:)));
sgdiff4 = (1-(sgday4(1,:)));
sgdiff5 = (1-(sgday5(1,:)));
sgdiff6 = (1-(sgday6(1,:)));
sgdiff7 = (1-(sgday7(1,:)));

sgmeanstd0 = sumR(sgdiff0);
sgmeanstd1 = sumR(sgdiff1);
sgmeanstd2 = sumR(sgdiff2);
sgmeanstd3 = sumR(sgdiff3);
sgmeanstd4 = sumR(sgdiff4);
sgmeanstd5 = sumR(sgdiff5);
sgmeanstd6 = sumR(sgdiff6);
sgmeanstd7 = sumR(sgdiff7);

sgmean = [sgmeanstd0(:,1); sgmeanstd1(:,1); sgmeanstd2(:,1); sgmeanstd3(:,1); sgmeanstd4(:,1); sgmeanstd5(:,1); sgmeanstd6(:,1); sgmeanstd7(:,1)];

%Dark - Trial 11
A0G = batchG(ACS);
A1G = batchG(A1S);
A2G = batchG(A2S);
A3G = batchG(A3S);
A4G = batchG(A4S);
A5G = batchG(A5S);
A6G = batchG(A6S);
A7G = batchG(A7S);

agday0 = diffR(A0G,MSG);
agday1 = diffR(A1G,MSG);
agday2 = diffR(A2G,MSG);
agday3 = diffR(A3G,MSG);
agday4 = diffR(A4G,MSG);
agday5 = diffR(A5G,MSG);
agday6 = diffR(A6G,MSG);
agday7 = diffR(A7G,MSG);

agdiff0 = (1-(agday0(1,:)));
agdiff1 = (1-(agday1(1,:)));
agdiff2 = (1-(agday2(1,:)));
agdiff3 = (1-(agday3(1,:)));
agdiff4 = (1-(agday4(1,:)));
agdiff5 = (1-(agday5(1,:)));
agdiff6 = (1-(agday6(1,:)));
agdiff7 = (1-(agday7(1,:)));

agmeanstd0 = sumR(agdiff0);
agmeanstd1 = sumR(agdiff1);
agmeanstd2 = sumR(agdiff2);
agmeanstd3 = sumR(agdiff3);
agmeanstd4 = sumR(agdiff4);
agmeanstd5 = sumR(agdiff5);
agmeanstd6 = sumR(agdiff6);
agmeanstd7 = sumR(agdiff7);

agmean = [agmeanstd0(:,1); agmeanstd1(:,1); agmeanstd2(:,1); agmeanstd3(:,1); agmeanstd4(:,1); agmeanstd5(:,1); agmeanstd6(:,1); agmeanstd7(:,1)];

x = (0:7);
%metal only
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
%xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
axis([0 7 .1 .65]);
hold off


%BLUE
MasterC = 'E:\Batch\10B\Control';
%MasterC = 'E:\Batch\10B\Extra'; - NOPE
%MasterC = 'E:\Batch\10B\All';
%MasterC = 'E:\Batch\10B\Cont';
MasterCS = imageDatastore(MasterC);

%Master Control
MCB = batchMB(MasterCS);
MSB = batchB(MasterCS);

%MSGrday = diffR(MSG,MCG);
%MSGrdiff = (1-(MSRrday(1,:)));
%MSGrmeanstd = sumR(MSGrdiff);

%gMmean = MSGrdiff(:,1);
%gMstd2pos = MSGrdiff(:,1) + ((MSGrdiff(:,1)- MSGrdiff(:,2)));
%gMstd3pos = MSGrdiff(:,1) + ((MSGrdiff(:,1)- MSGrdiff(:,3)));
%gMstd2neg = MSGrdiff(:,2)
%gMstd3neg = MSGrdiff(:,3)

%Copper - Trial 1
Cu0B = batchB(CuCS);
Cu1B = batchB(Cu1S);
Cu2B = batchB(Cu2S);
Cu3B = batchB(Cu3S);
Cu4B = batchB(Cu4S);
Cu10B = batchB(Cu5S);
Cu6B = batchB(Cu6S);
Cu7B = batchB(Cu7S);

bday0 = diffR(Cu0B,MSB);
bday1 = diffR(Cu1B,MSB);
bday2 = diffR(Cu2B,MSB);
bday3 = diffR(Cu3B,MSB);
bday4 = diffR(Cu4B,MSB);
bday5 = diffR(Cu10B,MSB);
bday6 = diffR(Cu6B,MSB);
bday7 = diffR(Cu7B,MSB);

bdiff0 = (1-(bday0(1,:)));
bdiff1 = (1-(bday1(1,:)));
bdiff2 = (1-(bday2(1,:)));
bdiff3 = (1-(bday3(1,:)));
bdiff4 = (1-(bday4(1,:)));
bdiff5 = (1-(bday5(1,:)));
bdiff6 = (1-(bday6(1,:)));
bdiff7 = (1-(bday7(1,:)));

bmeanstd0 = sumR(bdiff0);
bmeanstd1 = sumR(bdiff1);
bmeanstd2 = sumR(bdiff2);
bmeanstd3 = sumR(bdiff3);
bmeanstd4 = sumR(bdiff4);
bmeanstd5 = sumR(bdiff5);
bmeanstd6 = sumR(bdiff6);
bmeanstd7 = sumR(bdiff7);

bmean = [bmeanstd0(:,1); bmeanstd1(:,1); bmeanstd2(:,1); bmeanstd3(:,1); bmeanstd4(:,1); bmeanstd5(:,1); bmeanstd6(:,1); bmeanstd7(:,1)];
bmean4 = [bmeanstd0(:,4); bmeanstd1(:,4); bmeanstd2(:,4); bmeanstd3(:,4); bmeanstd4(:,4); bmeanstd5(:,4); bmeanstd6(:,4); bmeanstd7(:,4)];

%Zinc - Trial 2
Zn0B = batchB(ZnCS);
Zn1B = batchB(Zn1S);
Zn2B = batchB(Zn2S);
Zn3B = batchB(Zn3S);
Zn4B = batchB(Zn4S);
Zn10B = batchB(Zn5S);
Zn6B = batchB(Zn6S);
Zn7B = batchB(Zn7S);

zbday0 = diffR(Zn0B,MSB);
zbday1 = diffR(Zn1B,MSB);
zbday2 = diffR(Zn2B,MSB);
zbday3 = diffR(Zn3B,MSB);
zbday4 = diffR(Zn4B,MSB);
zbday5 = diffR(Zn10B,MSB);
zbday6 = diffR(Zn6B,MSB);
zbday7 = diffR(Zn7B,MSB);

zbdiff0 = (1-(zbday0(1,:)));
zbdiff1 = (1-(zbday1(1,:)));
zbdiff2 = (1-(zbday2(1,:)));
zbdiff3 = (1-(zbday3(1,:)));
zbdiff4 = (1-(zbday4(1,:)));
zbdiff5 = (1-(zbday5(1,:)));
zbdiff6 = (1-(zbday6(1,:)));
zbdiff7 = (1-(zbday7(1,:)));

zbmeanstd0 = sumR(zbdiff0);
zbmeanstd1 = sumR(zbdiff1);
zbmeanstd2 = sumR(zbdiff2);
zbmeanstd3 = sumR(zbdiff3);
zbmeanstd4 = sumR(zbdiff4);
zbmeanstd5 = sumR(zbdiff5);
zbmeanstd6 = sumR(zbdiff6);
zbmeanstd7 = sumR(zbdiff7);

zbmean = [zbmeanstd0(:,1); zbmeanstd1(:,1); zbmeanstd2(:,1); zbmeanstd3(:,1); zbmeanstd4(:,1); zbmeanstd5(:,1); zbmeanstd6(:,1); zbmeanstd7(:,1)];
zbmean4 = [zbmeanstd0(:,4); zbmeanstd1(:,4); zbmeanstd2(:,4); zbmeanstd3(:,4); zbmeanstd4(:,4); zbmeanstd5(:,4); zbmeanstd6(:,4); zbmeanstd7(:,4)];

%Lead - Trial 3
Pb0B = batchB(PbCS);
Pb1B = batchB(Pb1S);
Pb2B = batchB(Pb2S);
Pb3B = batchB(Pb3S);
Pb4B = batchB(Pb4S);
Pb10B = batchB(Pb5S);
Pb6B = batchB(Pb6S);
Pb7B = batchB(Pb7S);

pbday0 = diffR(Pb0B,MSB);
pbday1 = diffR(Pb1B,MSB);
pbday2 = diffR(Pb2B,MSB);
pbday3 = diffR(Pb3B,MSB);
pbday4 = diffR(Pb4B,MSB);
pbday5 = diffR(Pb10B,MSB);
pbday6 = diffR(Pb6B,MSB);
pbday7 = diffR(Pb7B,MSB);

pbdiff0 = (1-(pbday0(1,:)));
pbdiff1 = (1-(pbday1(1,:)));
pbdiff2 = (1-(pbday2(1,:)));
pbdiff3 = (1-(pbday3(1,:)));
pbdiff4 = (1-(pbday4(1,:)));
pbdiff5 = (1-(pbday5(1,:)));
pbdiff6 = (1-(pbday6(1,:)));
pbdiff7 = (1-(pbday7(1,:)));

pbmeanstd0 = sumR(pbdiff0);
pbmeanstd1 = sumR(pbdiff1);
pbmeanstd2 = sumR(pbdiff2);
pbmeanstd3 = sumR(pbdiff3);
pbmeanstd4 = sumR(pbdiff4);
pbmeanstd5 = sumR(pbdiff5);
pbmeanstd6 = sumR(pbdiff6);
pbmeanstd7 = sumR(pbdiff7);

pbmean = [pbmeanstd0(:,1); pbmeanstd1(:,1); pbmeanstd2(:,1); pbmeanstd3(:,1); pbmeanstd4(:,1); pbmeanstd5(:,1); pbmeanstd6(:,1); pbmeanstd7(:,1)];
pbmean4 = [pbmeanstd0(:,4); pbmeanstd1(:,4); pbmeanstd2(:,4); pbmeanstd3(:,4); pbmeanstd4(:,4); pbmeanstd5(:,4); pbmeanstd6(:,4); pbmeanstd7(:,4)];

%Mix - Trial 4
M0B = batchB(MCS);
M1B = batchB(M1S);
M2B = batchB(M2S);
M3B = batchB(M3S);
M4B = batchB(M4S);
M10B = batchB(M5S);
M6B = batchB(M6S);
M7B = batchB(M7S);

mbday0 = diffR(M0B,MSB);
mbday1 = diffR(M1B,MSB);
mbday2 = diffR(M2B,MSB);
mbday3 = diffR(M3B,MSB);
mbday4 = diffR(M4B,MSB);
mbday5 = diffR(M10B,MSB);
mbday6 = diffR(M6B,MSB);
mbday7 = diffR(M7B,MSB);

mbdiff0 = (1-(mbday0(1,:)));
mbdiff1 = (1-(mbday1(1,:)));
mbdiff2 = (1-(mbday2(1,:)));
mbdiff3 = (1-(mbday3(1,:)));
mbdiff4 = (1-(mbday4(1,:)));
mbdiff5 = (1-(mbday5(1,:)));
mbdiff6 = (1-(mbday6(1,:)));
mbdiff7 = (1-(mbday7(1,:)));

mbmeanstd0 = sumR(mbdiff0);
mbmeanstd1 = sumR(mbdiff1);
mbmeanstd2 = sumR(mbdiff2);
mbmeanstd3 = sumR(mbdiff3);
mbmeanstd4 = sumR(mbdiff4);
mbmeanstd5 = sumR(mbdiff5);
mbmeanstd6 = sumR(mbdiff6);
mbmeanstd7 = sumR(mbdiff7);

mbmean = [mbmeanstd0(:,1); mbmeanstd1(:,1); mbmeanstd2(:,1); mbmeanstd3(:,1); mbmeanstd4(:,1); mbmeanstd5(:,1); mbmeanstd6(:,1); mbmeanstd7(:,1)];
mbmean4 = [mbmeanstd0(:,4); mbmeanstd1(:,4); mbmeanstd2(:,4); mbmeanstd3(:,4); mbmeanstd4(:,4); mbmeanstd5(:,4); mbmeanstd6(:,4); mbmeanstd7(:,4)];

%Control for comparison
C0B = batchB(CCS);
C1B = batchB(C1S);
C2B = batchB(C2S);
C3B = batchB(C3S);
C4B = batchB(C4S);
C10B = batchB(C5S);
C6B = batchB(C6S);
C7B = batchB(C7S);

cbday0 = diffR(C0B,MSB);
cbday1 = diffR(C1B,MSB);
cbday2 = diffR(C2B,MSB);
cbday3 = diffR(C3B,MSB);
cbday4 = diffR(C4B,MSB);
cbday5 = diffR(C10B,MSB);
cbday6 = diffR(C6B,MSB);
cbday7 = diffR(C7B,MSB);

cbdiff0 = (1-(cbday0(1,:)));
cbdiff1 = (1-(cbday1(1,:)));
cbdiff2 = (1-(cbday2(1,:)));
cbdiff3 = (1-(cbday3(1,:)));
cbdiff4 = (1-(cbday4(1,:)));
cbdiff5 = (1-(cbday5(1,:)));
cbdiff6 = (1-(cbday6(1,:)));
cbdiff7 = (1-(cbday7(1,:)));

cbmeanstd0 = sumR(cbdiff0);
cbmeanstd1 = sumR(cbdiff1);
cbmeanstd2 = sumR(cbdiff2);
cbmeanstd3 = sumR(cbdiff3);
cbmeanstd4 = sumR(cbdiff4);
cbmeanstd5 = sumR(cbdiff5);
cbmeanstd6 = sumR(cbdiff6);
cbmeanstd7 = sumR(cbdiff7);

cbmean = [cbmeanstd0(:,1); cbmeanstd1(:,1); cbmeanstd2(:,1); cbmeanstd3(:,1); cbmeanstd4(:,1); cbmeanstd5(:,1); cbmeanstd6(:,1); cbmeanstd7(:,1)];

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

wbday0 = diffR(W0B,MSB);
wbday1 = diffR(W1B,MSB);
wbday2 = diffR(W2B,MSB);
wbday3 = diffR(W3B,MSB);
wbday4 = diffR(W4B,MSB);
wbday5 = diffR(W10B,MSB);
wbday6 = diffR(W6B,MSB);
wbday7 = diffR(W7B,MSB);

wbdiff0 = (1-(wbday0(1,:)));
wbdiff1 = (1-(wbday1(1,:)));
wbdiff2 = (1-(wbday2(1,:)));
wbdiff3 = (1-(wbday3(1,:)));
wbdiff4 = (1-(wbday4(1,:)));
wbdiff5 = (1-(wbday5(1,:)));
wbdiff6 = (1-(wbday6(1,:)));
wbdiff7 = (1-(wbday7(1,:)));

wbmeanstd0 = sumR(wbdiff0);
wbmeanstd1 = sumR(wbdiff1);
wbmeanstd2 = sumR(wbdiff2);
wbmeanstd3 = sumR(wbdiff3);
wbmeanstd4 = sumR(wbdiff4);
wbmeanstd5 = sumR(wbdiff5);
wbmeanstd6 = sumR(wbdiff6);
wbmeanstd7 = sumR(wbdiff7);

wbmean = [wbmeanstd0(:,1); wbmeanstd1(:,1); wbmeanstd2(:,1); wbmeanstd3(:,1); wbmeanstd4(:,1); wbmeanstd5(:,1); wbmeanstd6(:,1); wbmeanstd7(:,1)];
wbmean4 = [wbmeanstd0(:,4); wbmeanstd1(:,4); wbmeanstd2(:,4); wbmeanstd3(:,4); wbmeanstd4(:,4); wbmeanstd5(:,4); wbmeanstd6(:,4); wbmeanstd7(:,4)];

%Dry - Trial 7
D0B = batchB(DCS);
D1B = batchB(D1S);
D2B = batchB(D2S);
D3B = batchB(D3S);
D4B = batchB(D4S);
D10B = batchB(D5S);
D6B = batchB(D6S);
D7B = batchB(D7S);

dbday0 = diffR(D0B,MSB);
dbday1 = diffR(D1B,MSB);
dbday2 = diffR(D2B,MSB);
dbday3 = diffR(D3B,MSB);
dbday4 = diffR(D4B,MSB);
dbday5 = diffR(D10B,MSB);
dbday6 = diffR(D6B,MSB);
dbday7 = diffR(D7B,MSB);

dbdiff0 = (1-(dbday0(1,:)));
dbdiff1 = (1-(dbday1(1,:)));
dbdiff2 = (1-(dbday2(1,:)));
dbdiff3 = (1-(dbday3(1,:)));
dbdiff4 = (1-(dbday4(1,:)));
dbdiff5 = (1-(dbday5(1,:)));
dbdiff6 = (1-(dbday6(1,:)));
dbdiff7 = (1-(dbday7(1,:)));

dbmeanstd0 = sumR(dbdiff0);
dbmeanstd1 = sumR(dbdiff1);
dbmeanstd2 = sumR(dbdiff2);
dbmeanstd3 = sumR(dbdiff3);
dbmeanstd4 = sumR(dbdiff4);
dbmeanstd5 = sumR(dbdiff5);
dbmeanstd6 = sumR(dbdiff6);
dbmeanstd7 = sumR(dbdiff7);

dbmean = [dbmeanstd0(:,1); dbmeanstd1(:,1); dbmeanstd2(:,1); dbmeanstd3(:,1); dbmeanstd4(:,1); dbmeanstd5(:,1); dbmeanstd6(:,1); dbmeanstd7(:,1)];
dbmean4 = [dbmeanstd0(:,4); dbmeanstd1(:,4); dbmeanstd2(:,4); dbmeanstd3(:,4); dbmeanstd4(:,4); dbmeanstd5(:,4); dbmeanstd6(:,4); dbmeanstd7(:,4)];

%Nutrients - Trial 8
N0B = batchB(NCS);
N1B = batchB(N1S);
N2B = batchB(N2S);
N3B = batchB(N3S);
N4B = batchB(N4S);
N10B = batchB(N5S);
N6B = batchB(N6S);
N7B = batchB(N7S);

nbday0 = diffR(N0B,MSB);
nbday1 = diffR(N1B,MSB);
nbday2 = diffR(N2B,MSB);
nbday3 = diffR(N3B,MSB);
nbday4 = diffR(N4B,MSB);
nbday5 = diffR(N10B,MSB);
nbday6 = diffR(N6B,MSB);
nbday7 = diffR(N7B,MSB);

nbdiff0 = (1-(nbday0(1,:)));
nbdiff1 = (1-(nbday1(1,:)));
nbdiff2 = (1-(nbday2(1,:)));
nbdiff3 = (1-(nbday3(1,:)));
nbdiff4 = (1-(nbday4(1,:)));
nbdiff5 = (1-(nbday5(1,:)));
nbdiff6 = (1-(nbday6(1,:)));
nbdiff7 = (1-(nbday7(1,:)));

nbmeanstd0 = sumR(nbdiff0);
nbmeanstd1 = sumR(nbdiff1);
nbmeanstd2 = sumR(nbdiff2);
nbmeanstd3 = sumR(nbdiff3);
nbmeanstd4 = sumR(nbdiff4);
nbmeanstd5 = sumR(nbdiff5);
nbmeanstd6 = sumR(nbdiff6);
nbmeanstd7 = sumR(nbdiff7);

nbmean = [nbmeanstd0(:,1); nbmeanstd1(:,1); nbmeanstd2(:,1); nbmeanstd3(:,1); nbmeanstd4(:,1); nbmeanstd5(:,1); nbmeanstd6(:,1); nbmeanstd7(:,1)];
nbmean4 = [nbmeanstd0(:,4); nbmeanstd1(:,4); nbmeanstd2(:,4); nbmeanstd3(:,4); nbmeanstd4(:,4); nbmeanstd5(:,4); nbmeanstd6(:,4); nbmeanstd7(:,4)];

%Long - Trial 9
L0B = batchB(LCS);
L1B = batchB(L1S);
L2B = batchB(L2S);
L3B = batchB(L3S);
L4B = batchB(L4S);
L10B = batchB(L5S);
L6B = batchB(L6S);
L7B = batchB(L7S);

lbday0 = diffR(L0B,MSB);
lbday1 = diffR(L1B,MSB);
lbday2 = diffR(L2B,MSB);
lbday3 = diffR(L3B,MSB);
lbday4 = diffR(L4B,MSB);
lbday5 = diffR(L10B,MSB);
lbday6 = diffR(L6B,MSB);
lbday7 = diffR(L7B,MSB);

lbdiff0 = (1-(lbday0(1,:)));
lbdiff1 = (1-(lbday1(1,:)));
lbdiff2 = (1-(lbday2(1,:)));
lbdiff3 = (1-(lbday3(1,:)));
lbdiff4 = (1-(lbday4(1,:)));
lbdiff5 = (1-(lbday5(1,:)));
lbdiff6 = (1-(lbday6(1,:)));
lbdiff7 = (1-(lbday7(1,:)));

lbmeanstd0 = sumR(lbdiff0);
lbmeanstd1 = sumR(lbdiff1);
lbmeanstd2 = sumR(lbdiff2);
lbmeanstd3 = sumR(lbdiff3);
lbmeanstd4 = sumR(lbdiff4);
lbmeanstd5 = sumR(lbdiff5);
lbmeanstd6 = sumR(lbdiff6);
lbmeanstd7 = sumR(lbdiff7);

lbmean = [lbmeanstd0(:,1); lbmeanstd1(:,1); lbmeanstd2(:,1); lbmeanstd3(:,1); lbmeanstd4(:,1); lbmeanstd5(:,1); lbmeanstd6(:,1); lbmeanstd7(:,1)];
lbmean4 = [lbmeanstd0(:,4); lbmeanstd1(:,4); lbmeanstd2(:,4); lbmeanstd3(:,4); lbmeanstd4(:,4); lbmeanstd5(:,4); lbmeanstd6(:,4); lbmeanstd7(:,4)];

%Short - Trial 10
S0B = batchB(SCS);
S1B = batchB(S1S);
S2B = batchB(S2S);
S3B = batchB(S3S);
S4B = batchB(S4S);
S10B = batchB(S5S);
S6B = batchB(S6S);
S7B = batchB(S7S);

sbday0 = diffR(S0B,MSB);
sbday1 = diffR(S1B,MSB);
sbday2 = diffR(S2B,MSB);
sbday3 = diffR(S3B,MSB);
sbday4 = diffR(S4B,MSB);
sbday5 = diffR(S10B,MSB);
sbday6 = diffR(S6B,MSB);
sbday7 = diffR(S7B,MSB);

sbdiff0 = (1-(sbday0(1,:)));
sbdiff1 = (1-(sbday1(1,:)));
sbdiff2 = (1-(sbday2(1,:)));
sbdiff3 = (1-(sbday3(1,:)));
sbdiff4 = (1-(sbday4(1,:)));
sbdiff5 = (1-(sbday5(1,:)));
sbdiff6 = (1-(sbday6(1,:)));
sbdiff7 = (1-(sbday7(1,:)));

sbmeanstd0 = sumR(sbdiff0);
sbmeanstd1 = sumR(sbdiff1);
sbmeanstd2 = sumR(sbdiff2);
sbmeanstd3 = sumR(sbdiff3);
sbmeanstd4 = sumR(sbdiff4);
sbmeanstd5 = sumR(sbdiff5);
sbmeanstd6 = sumR(sbdiff6);
sbmeanstd7 = sumR(sbdiff7);

sbmean = [sbmeanstd0(:,1); sbmeanstd1(:,1); sbmeanstd2(:,1); sbmeanstd3(:,1); sbmeanstd4(:,1); sbmeanstd5(:,1); sbmeanstd6(:,1); sbmeanstd7(:,1)];
sbmean4 = [sbmeanstd0(:,4); sbmeanstd1(:,4); sbmeanstd2(:,4); sbmeanstd3(:,4); sbmeanstd4(:,4); sbmeanstd5(:,4); sbmeanstd6(:,4); sbmeanstd7(:,4)];

%Dark - Trial 11
A0B = batchB(ACS);
A1B = batchB(A1S);
A2B = batchB(A2S);
A3B = batchB(A3S);
A4B = batchB(A4S);
A10B = batchB(A5S);
A6B = batchB(A6S);
A7B = batchB(A7S);

abday0 = diffR(A0B,MSB);
abday1 = diffR(A1B,MSB);
abday2 = diffR(A2B,MSB);
abday3 = diffR(A3B,MSB);
abday4 = diffR(A4B,MSB);
abday5 = diffR(A10B,MSB);
abday6 = diffR(A6B,MSB);
abday7 = diffR(A7B,MSB);

abdiff0 = (1-(abday0(1,:)));
abdiff1 = (1-(abday1(1,:)));
abdiff2 = (1-(abday2(1,:)));
abdiff3 = (1-(abday3(1,:)));
abdiff4 = (1-(abday4(1,:)));
abdiff5 = (1-(abday5(1,:)));
abdiff6 = (1-(abday6(1,:)));
abdiff7 = (1-(abday7(1,:)));

abmeanstd0 = sumR(abdiff0);
abmeanstd1 = sumR(abdiff1);
abmeanstd2 = sumR(abdiff2);
abmeanstd3 = sumR(abdiff3);
abmeanstd4 = sumR(abdiff4);
abmeanstd5 = sumR(abdiff5);
abmeanstd6 = sumR(abdiff6);
abmeanstd7 = sumR(abdiff7);

abmean = [abmeanstd0(:,1); abmeanstd1(:,1); abmeanstd2(:,1); abmeanstd3(:,1); abmeanstd4(:,1); abmeanstd5(:,1); abmeanstd6(:,1); abmeanstd7(:,1)];
abmean4 = [abmeanstd0(:,4); abmeanstd1(:,4); abmeanstd2(:,4); abmeanstd3(:,4); abmeanstd4(:,4); abmeanstd5(:,4); abmeanstd6(:,4); abmeanstd7(:,4)];

x = (0:7);
%metal only
figure;
plot(x,bmean,'LineWidth',2);
hold on
plot(x,zbmean,'LineWidth',2);
plot(x,pbmean,'LineWidth',2);
plot(x,mbmean,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
axis([0 7 .1 .65]);
xlabel('Time(days)')
%ylabel('Intersection Difference (Density)')
hold off

%with error
figure;
errorbar(x,bmean,bmean4,'LineWidth',2);
hold on
errorbar(x,zbmean,zbmean4,'LineWidth',2);
errorbar(x,pbmean,pbmean4,'LineWidth',2);
errorbar(x,mbmean,mbmean4,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
ylabel('Intersection Difference (Density)')
hold off

figure;
errorbar(x,mbmean,mbmean4,'LineWidth',2);
hold on
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
ylabel('Intersection Difference (Density)')
axis([0 7 .75 1]);
hold off


%others
x = (0:7);
figure;
%plot(x,wbmean,'LineWidth',2);
hold on
%plot(x,dbmean,'LineWidth',2);
%plot(x,nbmean,'LineWidth',2);
plot(x,lbmean,'LineWidth',2);
plot(x,sbmean,'LineWidth',2);
plot(x,abmean,'LineWidth',2);
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Wet','Dry','Nutr','Long','Short','Dark','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
ylabel('Intersection Difference (Density)')
axis([0 7 .7 .95]); 
hold off

%will error bar
MSRbday = diffR(MSB,MCB);
MSBbdiff = (1-(MBbday(1,:)));
MSBrmeanstd = sumR(MSBbdiff);

Mmean = MSRrdiff(:,1);
Mstd2pos = MSRrdiff(:,1) + ((MSRrdiff(:,1)- MSRrdiff(:,2)));
Mstd3pos = MSRrdiff(:,1) + ((MSRrdiff(:,1)- MSRrdiff(:,3)));
Mstd2neg = MSRrdiff(:,2)
Mstd3neg = MSRrdiff(:,3)

x = (0:7);
figure;
plot(x,bmean,'LineWidth',2);
hold on
plot(x,zbmean,'LineWidth',2);
plot(x,pbmean,'LineWidth',2);
plot(x,mbmean,'LineWidth',2);
plot(x,wrmean,'LineWidth',2);
plot(x,drmean,'LineWidth',2);
plot(x,nrmean,'LineWidth',2);
plot(x,lrmean,'LineWidth',2);
plot(x,srmean,'LineWidth',2);
plot(x,drmean,'LineWidth',2);
plot(x,armean,'LineWidth',2);
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
yline(Mmean,'k','LineWidth',2);
yline(Mstd2pos,'k--','LineWidth',2);
yline(Mstd3pos,'k:','LineWidth',2);
%legend('Wet','Dry','Nutr','Long','Short','Dark','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
ylabel('Intersection Difference (Density)')
hold off
