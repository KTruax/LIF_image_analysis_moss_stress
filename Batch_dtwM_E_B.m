%DTW versus
%This code is for just running the dtw comparisons for single color

MasterC = 'E:\Batch\10B\Control';
%MasterC = 'E:\Batch\10B\Cont'; %not appreciably better....
MasterCS = imageDatastore(MasterC);

MCR = batchR(MasterCS); %194 control maintained instead of 1 master
MCG = batchG(MasterCS);
MCB = batchB(MasterCS);

MCRG = [MCR;MCG];
MCRB = [MCR;MCB];
MCGB = [MCG;MCB];

%need make function for batch process
%DTW1 = dtw(MCR,Cu0R(:,15));
%DTW2 = dtw2(MCR,Cu0R(:,1),(MCR-Cu0R(:,1)));

%copper trial 1
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

Cu0G = batchG(CuCS);
Cu1G = batchG(Cu1S);
Cu2G = batchG(Cu2S);
Cu3G = batchG(Cu3S);
Cu4G = batchG(Cu4S);
Cu10B = batchG(Cu5S);
Cu6G = batchG(Cu6S);
Cu7G = batchG(Cu7S);

Cu0B = batchB(CuCS);
Cu1B = batchB(Cu1S);
Cu2B = batchB(Cu2S);
Cu3B = batchB(Cu3S);
Cu4B = batchB(Cu4S);
Cu10B = batchB(Cu5S);
Cu6B = batchB(Cu6S);
Cu7B = batchB(Cu7S);

CuRG0 = [Cu0R;Cu0G];
CuRG1 = [Cu1R;Cu1G];
CuRG2 = [Cu2R;Cu2G];
CuRG3 = [Cu3R;Cu3G];
CuRG4 = [Cu4R;Cu4G];
CuRG5 = [Cu5R;Cu10B];
CuRG6 = [Cu6R;Cu6G];
CuRG7 = [Cu7R;Cu7G];

CuRB0 = [Cu0R;Cu0B];
CuRB1 = [Cu1R;Cu1B];
CuRB2 = [Cu2R;Cu2B];
CuRB3 = [Cu3R;Cu3B];
CuRB4 = [Cu4R;Cu4B];
CuRB5 = [Cu5R;Cu10B];
CuRB6 = [Cu6R;Cu6B];
CuRB7 = [Cu7R;Cu7B];

CuGB0 = [Cu0G;Cu0B];
CuGB1 = [Cu1G;Cu1B];
CuGB2 = [Cu2G;Cu2B];
CuGB3 = [Cu3G;Cu3B];
CuGB4 = [Cu4G;Cu4B];
CuGB5 = [Cu10B;Cu10B];
CuGB6 = [Cu6G;Cu6B];
CuGB7 = [Cu7G;Cu7B];

CuDTW0RG = one(MCRG,CuRG0);
CuDTW1RG = one(MCRG,CuRG1);
CuDTW2RG = one(MCRG,CuRG2);
CuDTW3RG = one(MCRG,CuRG3);
CuDTW4RG = one(MCRG,CuRG4);
CuDTW5RG = one(MCRG,CuRG5);
CuDTW6RG = one(MCRG,CuRG6);
CuDTW7RG = one(MCRG,CuRG7);

CuDTW0RB = one(MCRB,CuRB0);
CuDTW1RB = one(MCRB,CuRB1);
CuDTW2RB = one(MCRB,CuRB2);
CuDTW3RB = one(MCRB,CuRB3);
CuDTW4RB = one(MCRB,CuRB4);
CuDTW5RB = one(MCRB,CuRB5);
CuDTW6RB = one(MCRB,CuRB6);
CuDTW7RB = one(MCRB,CuRB7);

CuDTW0GB = one(MCGB,CuGB0);
CuDTW1GB = one(MCGB,CuGB1);
CuDTW2GB = one(MCGB,CuGB2);
CuDTW3GB = one(MCGB,CuGB3);
CuDTW4GB = one(MCGB,CuGB4);
CuDTW10BB = one(MCGB,CuGB5);
CuDTW6GB = one(MCGB,CuGB6);
CuDTW7GB = one(MCGB,CuGB7);

CuDTWRG = [CuDTW0RG(:,1); CuDTW1RG(:,1); CuDTW2RG(:,1); CuDTW3RG(:,1); CuDTW4RG(:,1); CuDTW5RG(:,1); CuDTW6RG(:,1); CuDTW7RG(:,1)];
Cuone = [CuDTW0RB(:,1); CuDTW1RB(:,1); CuDTW2RB(:,1); CuDTW3RB(:,1); CuDTW4RB(:,1); CuDTW5RB(:,1); CuDTW6RB(:,1); CuDTW7RB(:,1)];
CuDTWGB = [CuDTW0GB(:,1); CuDTW1GB(:,1); CuDTW2GB(:,1); CuDTW3GB(:,1); CuDTW4GB(:,1); CuDTW10BB(:,1); CuDTW6GB(:,1); CuDTW7GB(:,1)];

%x = (0:7);
%figure;
%plot(x,CuDTWRG,'LineWidth',2);
%hold on
%plot(x,Cuone,'LineWidth',2);
%plot(x,CuDTWGB,'LineWidth',2);
%legend('CuRG','CuRB','CuGB');

%zinc trial 2
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

Zn0G = batchG(ZnCS);
Zn1G = batchG(Zn1S);
Zn2G = batchG(Zn2S);
Zn3G = batchG(Zn3S);
Zn4G = batchG(Zn4S);
Zn10B = batchG(Zn5S);
Zn6G = batchG(Zn6S);
Zn7G = batchG(Zn7S);

Zn0B = batchB(ZnCS);
Zn1B = batchB(Zn1S);
Zn2B = batchB(Zn2S);
Zn3B = batchB(Zn3S);
Zn4B = batchB(Zn4S);
Zn10B = batchB(Zn5S);
Zn6B = batchB(Zn6S);
Zn7B = batchB(Zn7S);

ZnRG0 = [Zn0R;Zn0G];
ZnRG1 = [Zn1R;Zn1G];
ZnRG2 = [Zn2R;Zn2G];
ZnRG3 = [Zn3R;Zn3G];
ZnRG4 = [Zn4R;Zn4G];
ZnRG5 = [Zn5R;Zn10B];
ZnRG6 = [Zn6R;Zn6G];
ZnRG7 = [Zn7R;Zn7G];

ZnRB0 = [Zn0R;Zn0B];
ZnRB1 = [Zn1R;Zn1B];
ZnRB2 = [Zn2R;Zn2B];
ZnRB3 = [Zn3R;Zn3B];
ZnRB4 = [Zn4R;Zn4B];
ZnRB5 = [Zn5R;Zn10B];
ZnRB6 = [Zn6R;Zn6B];
ZnRB7 = [Zn7R;Zn7B];

ZnGB0 = [Zn0G;Zn0B];
ZnGB1 = [Zn1G;Zn1B];
ZnGB2 = [Zn2G;Zn2B];
ZnGB3 = [Zn3G;Zn3B];
ZnGB4 = [Zn4G;Zn4B];
ZnGB5 = [Zn10B;Zn10B];
ZnGB6 = [Zn6G;Zn6B];
ZnGB7 = [Zn7G;Zn7B];

ZnDTW0RG = one(MCRG,ZnRG0);
ZnDTW1RG = one(MCRG,ZnRG1);
ZnDTW2RG = one(MCRG,ZnRG2);
ZnDTW3RG = one(MCRG,ZnRG3);
ZnDTW4RG = one(MCRG,ZnRG4);
ZnDTW5RG = one(MCRG,ZnRG5);
ZnDTW6RG = one(MCRG,ZnRG6);
ZnDTW7RG = one(MCRG,ZnRG7);

ZnDTW0RB = one(MCRB,ZnRB0);
ZnDTW1RB = one(MCRB,ZnRB1);
ZnDTW2RB = one(MCRB,ZnRB2);
ZnDTW3RB = one(MCRB,ZnRB3);
ZnDTW4RB = one(MCRB,ZnRB4);
ZnDTW5RB = one(MCRB,ZnRB5);
ZnDTW6RB = one(MCRB,ZnRB6);
ZnDTW7RB = one(MCRB,ZnRB7);

ZnDTW0GB = one(MCGB,ZnGB0);
ZnDTW1GB = one(MCGB,ZnGB1);
ZnDTW2GB = one(MCGB,ZnGB2);
ZnDTW3GB = one(MCGB,ZnGB3);
ZnDTW4GB = one(MCGB,ZnGB4);
ZnDTW10BB = one(MCGB,ZnGB5);
ZnDTW6GB = one(MCGB,ZnGB6);
ZnDTW7GB = one(MCGB,ZnGB7);

ZnDTWGB = [ZnDTW0GB(:,1); ZnDTW1GB(:,1); ZnDTW2GB(:,1); ZnDTW3GB(:,1); ZnDTW4GB(:,1); ZnDTW10BB(:,1); ZnDTW6GB(:,1); ZnDTW7GB(:,1)];
ZnDTWRG = [ZnDTW0RG(:,1); ZnDTW1RG(:,1); ZnDTW2RG(:,1); ZnDTW3RG(:,1); ZnDTW4RG(:,1); ZnDTW5RG(:,1); ZnDTW6RG(:,1); ZnDTW7RG(:,1)];
Znone = [ZnDTW0RB(:,1); ZnDTW1RB(:,1); ZnDTW2RB(:,1); ZnDTW3RB(:,1); ZnDTW4RB(:,1); ZnDTW5RB(:,1); ZnDTW6RB(:,1); ZnDTW7RB(:,1)];

%lead trial 3
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

Pb0G = batchG(PbCS);
Pb1G = batchG(Pb1S);
Pb2G = batchG(Pb2S);
Pb3G = batchG(Pb3S);
Pb4G = batchG(Pb4S);
Pb10B = batchG(Pb5S);
Pb6G = batchG(Pb6S);
Pb7G = batchG(Pb7S);

Pb0B = batchB(PbCS);
Pb1B = batchB(Pb1S);
Pb2B = batchB(Pb2S);
Pb3B = batchB(Pb3S);
Pb4B = batchB(Pb4S);
Pb10B = batchB(Pb5S);
Pb6B = batchB(Pb6S);
Pb7B = batchB(Pb7S);

PbRG0 = [Pb0R;Pb0G];
PbRG1 = [Pb1R;Pb1G];
PbRG2 = [Pb2R;Pb2G];
PbRG3 = [Pb3R;Pb3G];
PbRG4 = [Pb4R;Pb4G];
PbRG5 = [Pb5R;Pb10B];
PbRG6 = [Pb6R;Pb6G];
PbRG7 = [Pb7R;Pb7G];

PbRB0 = [Pb0R;Pb0B];
PbRB1 = [Pb1R;Pb1B];
PbRB2 = [Pb2R;Pb2B];
PbRB3 = [Pb3R;Pb3B];
PbRB4 = [Pb4R;Pb4B];
PbRB5 = [Pb5R;Pb10B];
PbRB6 = [Pb6R;Pb6B];
PbRB7 = [Pb7R;Pb7B];

PbGB0 = [Pb0G;Pb0B];
PbGB1 = [Pb1G;Pb1B];
PbGB2 = [Pb2G;Pb2B];
PbGB3 = [Pb3G;Pb3B];
PbGB4 = [Pb4G;Pb4B];
PbGB5 = [Pb10B;Pb10B];
PbGB6 = [Pb6G;Pb6B];
PbGB7 = [Pb7G;Pb7B];

PbDTW0RG = one(MCRG,PbRG0);
PbDTW1RG = one(MCRG,PbRG1);
PbDTW2RG = one(MCRG,PbRG2);
PbDTW3RG = one(MCRG,PbRG3);
PbDTW4RG = one(MCRG,PbRG4);
PbDTW5RG = one(MCRG,PbRG5);
PbDTW6RG = one(MCRG,PbRG6);
PbDTW7RG = one(MCRG,PbRG7);

PbDTW0RB = one(MCRB,PbRB0);
PbDTW1RB = one(MCRB,PbRB1);
PbDTW2RB = one(MCRB,PbRB2);
PbDTW3RB = one(MCRB,PbRB3);
PbDTW4RB = one(MCRB,PbRB4);
PbDTW5RB = one(MCRB,PbRB5);
PbDTW6RB = one(MCRB,PbRB6);
PbDTW7RB = one(MCRB,PbRB7);

PbDTW0GB = one(MCGB,PbGB0);
PbDTW1GB = one(MCGB,PbGB1);
PbDTW2GB = one(MCGB,PbGB2);
PbDTW3GB = one(MCGB,PbGB3);
PbDTW4GB = one(MCGB,PbGB4);
PbDTW10BB = one(MCGB,PbGB5);
PbDTW6GB = one(MCGB,PbGB6);
PbDTW7GB = one(MCGB,PbGB7);

PbDTWGB = [PbDTW0GB(:,1); PbDTW1GB(:,1); PbDTW2GB(:,1); PbDTW3GB(:,1); PbDTW4GB(:,1); PbDTW10BB(:,1); PbDTW6GB(:,1); PbDTW7GB(:,1)];
PbDTWRG = [PbDTW0RG(:,1); PbDTW1RG(:,1); PbDTW2RG(:,1); PbDTW3RG(:,1); PbDTW4RG(:,1); PbDTW5RG(:,1); PbDTW6RG(:,1); PbDTW7RG(:,1)];
Pbone = [PbDTW0RB(:,1); PbDTW1RB(:,1); PbDTW2RB(:,1); PbDTW3RB(:,1); PbDTW4RB(:,1); PbDTW5RB(:,1); PbDTW6RB(:,1); PbDTW7RB(:,1)];

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

M0G = batchG(MCS);
M1G = batchG(M1S);
M2G = batchG(M2S);
M3G = batchG(M3S);
M4G = batchG(M4S);
M10B = batchG(M5S);
M6G = batchG(M6S);
M7G = batchG(M7S);

M0B = batchB(MCS);
M1B = batchB(M1S);
M2B = batchB(M2S);
M3B = batchB(M3S);
M4B = batchB(M4S);
M10B = batchB(M5S);
M6B = batchB(M6S);
M7B = batchB(M7S);

MRG0 = [M0R;M0G];
MRG1 = [M1R;M1G];
MRG2 = [M2R;M2G];
MRG3 = [M3R;M3G];
MRG4 = [M4R;M4G];
MRG5 = [M5R;M10B];
MRG6 = [M6R;M6G];
MRG7 = [M7R;M7G];

MRB0 = [M0R;M0B];
MRB1 = [M1R;M1B];
MRB2 = [M2R;M2B];
MRB3 = [M3R;M3B];
MRB4 = [M4R;M4B];
MRB5 = [M5R;M10B];
MRB6 = [M6R;M6B];
MRB7 = [M7R;M7B];

MGB0 = [M0G;M0B];
MGB1 = [M1G;M1B];
MGB2 = [M2G;M2B];
MGB3 = [M3G;M3B];
MGB4 = [M4G;M4B];
MGB5 = [M10B;M10B];
MGB6 = [M6G;M6B];
MGB7 = [M7G;M7B];

MDTW0RG = one(MCRG,MRG0);
MDTW1RG = one(MCRG,MRG1);
MDTW2RG = one(MCRG,MRG2);
MDTW3RG = one(MCRG,MRG3);
MDTW4RG = one(MCRG,MRG4);
MDTW5RG = one(MCRG,MRG5);
MDTW6RG = one(MCRG,MRG6);
MDTW7RG = one(MCRG,MRG7);

MDTW0RB = one(MCRB,MRB0);
MDTW1RB = one(MCRB,MRB1);
MDTW2RB = one(MCRB,MRB2);
MDTW3RB = one(MCRB,MRB3);
MDTW4RB = one(MCRB,MRB4);
MDTW5RB = one(MCRB,MRB5);
MDTW6RB = one(MCRB,MRB6);
MDTW7RB = one(MCRB,MRB7);

MDTW0GB = one(MCGB,MGB0);
MDTW1GB = one(MCGB,MGB1);
MDTW2GB = one(MCGB,MGB2);
MDTW3GB = one(MCGB,MGB3);
MDTW4GB = one(MCGB,MGB4);
MDTW10BB = one(MCGB,MGB5);
MDTW6GB = one(MCGB,MGB6);
MDTW7GB = one(MCGB,MGB7);

MDTWGB = [MDTW0GB(:,1); MDTW1GB(:,1); MDTW2GB(:,1); MDTW3GB(:,1); MDTW4GB(:,1); MDTW10BB(:,1); MDTW6GB(:,1); MDTW7GB(:,1)];
MDTWRG = [MDTW0RG(:,1); MDTW1RG(:,1); MDTW2RG(:,1); MDTW3RG(:,1); MDTW4RG(:,1); MDTW5RG(:,1); MDTW6RG(:,1); MDTW7RG(:,1)];
Mone = [MDTW0RB(:,1); MDTW1RB(:,1); MDTW2RB(:,1); MDTW3RB(:,1); MDTW4RB(:,1); MDTW5RB(:,1); MDTW6RB(:,1); MDTW7RB(:,1)];

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

C0G = batchG(CCS);
C1G = batchG(C1S);
C2G = batchG(C2S);
C3G = batchG(C3S);
C4G = batchG(C4S);
C10B = batchG(C5S);
C6G = batchG(C6S);
C7G = batchG(C7S);

C0B = batchB(CCS);
C1B = batchB(C1S);
C2B = batchB(C2S);
C3B = batchB(C3S);
C4B = batchB(C4S);
C10B = batchB(C5S);
C6B = batchB(C6S);
C7B = batchB(C7S);

CRG0 = [C0R;C0G];
CRG1 = [C1R;C1G];
CRG2 = [C2R;C2G];
CRG3 = [C3R;C3G];
CRG4 = [C4R;C4G];
CRG5 = [C5R;C10B];
CRG6 = [C6R;C6G];
CRG7 = [C7R;C7G];

CRB0 = [C0R;C0B];
CRB1 = [C1R;C1B];
CRB2 = [C2R;C2B];
CRB3 = [C3R;C3B];
CRB4 = [C4R;C4B];
CRB5 = [C5R;C10B];
CRB6 = [C6R;C6B];
CRB7 = [C7R;C7B];

CGB0 = [C0G;C0B];
CGB1 = [C1G;C1B];
CGB2 = [C2G;C2B];
CGB3 = [C3G;C3B];
CGB4 = [C4G;C4B];
CGB5 = [C10B;C10B];
CGB6 = [C6G;C6B];
CGB7 = [C7G;C7B];

CDTW0RG = one(MCRG,CRG0);
CDTW1RG = one(MCRG,CRG1);
CDTW2RG = one(MCRG,CRG2);
CDTW3RG = one(MCRG,CRG3);
CDTW4RG = one(MCRG,CRG4);
CDTW5RG = one(MCRG,CRG5);
CDTW6RG = one(MCRG,CRG6);
CDTW7RG = one(MCRG,CRG7);

CDTW0RB = one(MCRB,CRB0);
CDTW1RB = one(MCRB,CRB1);
CDTW2RB = one(MCRB,CRB2);
CDTW3RB = one(MCRB,CRB3);
CDTW4RB = one(MCRB,CRB4);
CDTW5RB = one(MCRB,CRB5);
CDTW6RB = one(MCRB,CRB6);
CDTW7RB = one(MCRB,CRB7);

CDTW0GB = one(MCGB,CGB0);
CDTW1GB = one(MCGB,CGB1);
CDTW2GB = one(MCGB,CGB2);
CDTW3GB = one(MCGB,CGB3);
CDTW4GB = one(MCGB,CGB4);
CDTW10BB = one(MCGB,CGB5);
CDTW6GB = one(MCGB,CGB6);
CDTW7GB = one(MCGB,CGB7);

CDTWGB = [CDTW0GB(:,1); CDTW1GB(:,1); CDTW2GB(:,1); CDTW3GB(:,1); CDTW4GB(:,1); CDTW10BB(:,1); CDTW6GB(:,1); CDTW7GB(:,1)];

ContMb = sum(CDTWGB)/8
Contvarb = sum((CDTWGB - ContMb).^2)./(7);
Contstdb = sqrt(Contvarb);
Contstd2b = ContMb + (2.*Contstdb')
Contstd3b = ContMb + (3.*Contstdb')

CDTWRG = [CDTW0RG(:,1); CDTW1RG(:,1); CDTW2RG(:,1); CDTW3RG(:,1); CDTW4RG(:,1); CDTW5RG(:,1); CDTW6RG(:,1); CDTW7RG(:,1)];

ContMg = sum(CDTWRG)/8
Contvarg = sum((CDTWRG - ContMg).^2)./(7);
Contstdg = sqrt(Contvarg);
Contstd2g = ContMg + (2.*Contstdg')
Contstd3g = ContMg + (3.*Contstdg')

Cone = [CDTW0RB(:,1); CDTW1RB(:,1); CDTW2RB(:,1); CDTW3RB(:,1); CDTW4RB(:,1); CDTW5RB(:,1); CDTW6RB(:,1); CDTW7RB(:,1)];

ContM = sum(Cone)/8
Contvar = sum((Cone - ContM).^2)./(7);
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

W0G = batchG(WCS);
W1G = batchG(W1S);
W2G = batchG(W2S);
W3G = batchG(W3S);
W4G = batchG(W4S);
W10B = batchG(W5S);
W6G = batchG(W6S);
W7G = batchG(W7S);

W0B = batchB(WCS);
W1B = batchB(W1S);
W2B = batchB(W2S);
W3B = batchB(W3S);
W4B = batchB(W4S);
W10B = batchB(W5S);
W6B = batchB(W6S);
W7B = batchB(W7S);

WRG0 = [W0R;W0G];
WRG1 = [W1R;W1G];
WRG2 = [W2R;W2G];
WRG3 = [W3R;W3G];
WRG4 = [W4R;W4G];
WRG5 = [W5R;W10B];
WRG6 = [W6R;W6G];
WRG7 = [W7R;W7G];

WRB0 = [W0R;W0B];
WRB1 = [W1R;W1B];
WRB2 = [W2R;W2B];
WRB3 = [W3R;W3B];
WRB4 = [W4R;W4B];
WRB5 = [W5R;W10B];
WRB6 = [W6R;W6B];
WRB7 = [W7R;W7B];

WGB0 = [W0G;W0B];
WGB1 = [W1G;W1B];
WGB2 = [W2G;W2B];
WGB3 = [W3G;W3B];
WGB4 = [W4G;W4B];
WGB5 = [W10B;W10B];
WGB6 = [W6G;W6B];
WGB7 = [W7G;W7B];

WDTW0RG = one(MCRG,WRG0);
WDTW1RG = one(MCRG,WRG1);
WDTW2RG = one(MCRG,WRG2);
WDTW3RG = one(MCRG,WRG3);
WDTW4RG = one(MCRG,WRG4);
WDTW5RG = one(MCRG,WRG5);
WDTW6RG = one(MCRG,WRG6);
WDTW7RG = one(MCRG,WRG7);

WDTW0RB = one(MCRB,WRB0);
WDTW1RB = one(MCRB,WRB1);
WDTW2RB = one(MCRB,WRB2);
WDTW3RB = one(MCRB,WRB3);
WDTW4RB = one(MCRB,WRB4);
WDTW5RB = one(MCRB,WRB5);
WDTW6RB = one(MCRB,WRB6);
WDTW7RB = one(MCRB,WRB7);

WDTW0GB = one(MCGB,WGB0);
WDTW1GB = one(MCGB,WGB1);
WDTW2GB = one(MCGB,WGB2);
WDTW3GB = one(MCGB,WGB3);
WDTW4GB = one(MCGB,WGB4);
WDTW10BB = one(MCGB,WGB5);
WDTW6GB = one(MCGB,WGB6);
WDTW7GB = one(MCGB,WGB7);

WDTWGB = [WDTW0GB(:,1); WDTW1GB(:,1); WDTW2GB(:,1); WDTW3GB(:,1); WDTW4GB(:,1); WDTW10BB(:,1); WDTW6GB(:,1); WDTW7GB(:,1)];
WDTWRG = [WDTW0RG(:,1); WDTW1RG(:,1); WDTW2RG(:,1); WDTW3RG(:,1); WDTW4RG(:,1); WDTW5RG(:,1); WDTW6RG(:,1); WDTW7RG(:,1)];
Wone = [WDTW0RB(:,1); WDTW1RB(:,1); WDTW2RB(:,1); WDTW3RB(:,1); WDTW4RB(:,1); WDTW5RB(:,1); WDTW6RB(:,1); WDTW7RB(:,1)];

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

D0G = batchG(DCS);
D1G = batchG(D1S);
D2G = batchG(D2S);
D3G = batchG(D3S);
D4G = batchG(D4S);
D10B = batchG(D5S);
D6G = batchG(D6S);
D7G = batchG(D7S);

D0B = batchB(DCS);
D1B = batchB(D1S);
D2B = batchB(D2S);
D3B = batchB(D3S);
D4B = batchB(D4S);
D10B = batchB(D5S);
D6B = batchB(D6S);
D7B = batchB(D7S);

DRG0 = [D0R;D0G];
DRG1 = [D1R;D1G];
DRG2 = [D2R;D2G];
DRG3 = [D3R;D3G];
DRG4 = [D4R;D4G];
DRG5 = [D5R;D10B];
DRG6 = [D6R;D6G];
DRG7 = [D7R;D7G];

DRB0 = [D0R;D0B];
DRB1 = [D1R;D1B];
DRB2 = [D2R;D2B];
DRB3 = [D3R;D3B];
DRB4 = [D4R;D4B];
DRB5 = [D5R;D10B];
DRB6 = [D6R;D6B];
DRB7 = [D7R;D7B];

DGB0 = [D0G;D0B];
DGB1 = [D1G;D1B];
DGB2 = [D2G;D2B];
DGB3 = [D3G;D3B];
DGB4 = [D4G;D4B];
DGB5 = [D10B;D10B];
DGB6 = [D6G;D6B];
DGB7 = [D7G;D7B];

DDTW0RG = one(MCRG,DRG0);
DDTW1RG = one(MCRG,DRG1);
DDTW2RG = one(MCRG,DRG2);
DDTW3RG = one(MCRG,DRG3);
DDTW4RG = one(MCRG,DRG4);
DDTW5RG = one(MCRG,DRG5);
DDTW6RG = one(MCRG,DRG6);
DDTW7RG = one(MCRG,DRG7);

DDTW0RB = one(MCRB,DRB0);
DDTW1RB = one(MCRB,DRB1);
DDTW2RB = one(MCRB,DRB2);
DDTW3RB = one(MCRB,DRB3);
DDTW4RB = one(MCRB,DRB4);
DDTW5RB = one(MCRB,DRB5);
DDTW6RB = one(MCRB,DRB6);
DDTW7RB = one(MCRB,DRB7);

DDTW0GB = one(MCGB,DGB0);
DDTW1GB = one(MCGB,DGB1);
DDTW2GB = one(MCGB,DGB2);
DDTW3GB = one(MCGB,DGB3);
DDTW4GB = one(MCGB,DGB4);
DDTW10BB = one(MCGB,DGB5);
DDTW6GB = one(MCGB,DGB6);
DDTW7GB = one(MCGB,DGB7);

DDTWGB = [DDTW0GB(:,1); DDTW1GB(:,1); DDTW2GB(:,1); DDTW3GB(:,1); DDTW4GB(:,1); DDTW10BB(:,1); DDTW6GB(:,1); DDTW7GB(:,1)];
DDTWRG = [DDTW0RG(:,1); DDTW1RG(:,1); DDTW2RG(:,1); DDTW3RG(:,1); DDTW4RG(:,1); DDTW5RG(:,1); DDTW6RG(:,1); DDTW7RG(:,1)];
Done = [DDTW0RB(:,1); DDTW1RB(:,1); DDTW2RB(:,1); DDTW3RB(:,1); DDTW4RB(:,1); DDTW5RB(:,1); DDTW6RB(:,1); DDTW7RB(:,1)];

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

N0G = batchG(NCS);
N1G = batchG(N1S);
N2G = batchG(N2S);
N3G = batchG(N3S);
N4G = batchG(N4S);
N10B = batchG(N5S);
N6G = batchG(N6S);
N7G = batchG(N7S);

N0B = batchB(NCS);
N1B = batchB(N1S);
N2B = batchB(N2S);
N3B = batchB(N3S);
N4B = batchB(N4S);
N10B = batchB(N5S);
N6B = batchB(N6S);
N7B = batchB(N7S);

NRG0 = [N0R;N0G];
NRG1 = [N1R;N1G];
NRG2 = [N2R;N2G];
NRG3 = [N3R;N3G];
NRG4 = [N4R;N4G];
NRG5 = [N5R;N10B];
NRG6 = [N6R;N6G];
NRG7 = [N7R;N7G];

NRB0 = [N0R;N0B];
NRB1 = [N1R;N1B];
NRB2 = [N2R;N2B];
NRB3 = [N3R;N3B];
NRB4 = [N4R;N4B];
NRB5 = [N5R;N10B];
NRB6 = [N6R;N6B];
NRB7 = [N7R;N7B];

NGB0 = [N0G;N0B];
NGB1 = [N1G;N1B];
NGB2 = [N2G;N2B];
NGB3 = [N3G;N3B];
NGB4 = [N4G;N4B];
NGB5 = [N10B;N10B];
NGB6 = [N6G;N6B];
NGB7 = [N7G;N7B];

NDTW0RG = one(MCRG,NRG0);
NDTW1RG = one(MCRG,NRG1);
NDTW2RG = one(MCRG,NRG2);
NDTW3RG = one(MCRG,NRG3);
NDTW4RG = one(MCRG,NRG4);
NDTW5RG = one(MCRG,NRG5);
NDTW6RG = one(MCRG,NRG6);
NDTW7RG = one(MCRG,NRG7);

NDTW0RB = one(MCRB,NRB0);
NDTW1RB = one(MCRB,NRB1);
NDTW2RB = one(MCRB,NRB2);
NDTW3RB = one(MCRB,NRB3);
NDTW4RB = one(MCRB,NRB4);
NDTW5RB = one(MCRB,NRB5);
NDTW6RB = one(MCRB,NRB6);
NDTW7RB = one(MCRB,NRB7);

NDTW0GB = one(MCGB,NGB0);
NDTW1GB = one(MCGB,NGB1);
NDTW2GB = one(MCGB,NGB2);
NDTW3GB = one(MCGB,NGB3);
NDTW4GB = one(MCGB,NGB4);
NDTW10BB = one(MCGB,NGB5);
NDTW6GB = one(MCGB,NGB6);
NDTW7GB = one(MCGB,NGB7);

NDTWGB = [NDTW0GB(:,1); NDTW1GB(:,1); NDTW2GB(:,1); NDTW3GB(:,1); NDTW4GB(:,1); NDTW10BB(:,1); NDTW6GB(:,1); NDTW7GB(:,1)];
NDTWRG = [NDTW0RG(:,1); NDTW1RG(:,1); NDTW2RG(:,1); NDTW3RG(:,1); NDTW4RG(:,1); NDTW5RG(:,1); NDTW6RG(:,1); NDTW7RG(:,1)];
None = [NDTW0RB(:,1); NDTW1RB(:,1); NDTW2RB(:,1); NDTW3RB(:,1); NDTW4RB(:,1); NDTW5RB(:,1); NDTW6RB(:,1); NDTW7RB(:,1)];

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

L0G = batchG(LCS);
L1G = batchG(L1S);
L2G = batchG(L2S);
L3G = batchG(L3S);
L4G = batchG(L4S);
L10B = batchG(L5S);
L6G = batchG(L6S);
L7G = batchG(L7S);

L0B = batchB(LCS);
L1B = batchB(L1S);
L2B = batchB(L2S);
L3B = batchB(L3S);
L4B = batchB(L4S);
L10B = batchB(L5S);
L6B = batchB(L6S);
L7B = batchB(L7S);

LRG0 = [L0R;L0G];
LRG1 = [L1R;L1G];
LRG2 = [L2R;L2G];
LRG3 = [L3R;L3G];
LRG4 = [L4R;L4G];
LRG5 = [L5R;L10B];
LRG6 = [L6R;L6G];
LRG7 = [L7R;L7G];

LRB0 = [L0R;L0B];
LRB1 = [L1R;L1B];
LRB2 = [L2R;L2B];
LRB3 = [L3R;L3B];
LRB4 = [L4R;L4B];
LRB5 = [L5R;L10B];
LRB6 = [L6R;L6B];
LRB7 = [L7R;L7B];

LGB0 = [L0G;L0B];
LGB1 = [L1G;L1B];
LGB2 = [L2G;L2B];
LGB3 = [L3G;L3B];
LGB4 = [L4G;L4B];
LGB5 = [L10B;L10B];
LGB6 = [L6G;L6B];
LGB7 = [L7G;L7B];

LDTW0RG = one(MCRG,LRG0);
LDTW1RG = one(MCRG,LRG1);
LDTW2RG = one(MCRG,LRG2);
LDTW3RG = one(MCRG,LRG3);
LDTW4RG = one(MCRG,LRG4);
LDTW5RG = one(MCRG,LRG5);
LDTW6RG = one(MCRG,LRG6);
LDTW7RG = one(MCRG,LRG7);

LDTW0RB = one(MCRB,LRB0);
LDTW1RB = one(MCRB,LRB1);
LDTW2RB = one(MCRB,LRB2);
LDTW3RB = one(MCRB,LRB3);
LDTW4RB = one(MCRB,LRB4);
LDTW5RB = one(MCRB,LRB5);
LDTW6RB = one(MCRB,LRB6);
LDTW7RB = one(MCRB,LRB7);

LDTW0GB = one(MCGB,LGB0);
LDTW1GB = one(MCGB,LGB1);
LDTW2GB = one(MCGB,LGB2);
LDTW3GB = one(MCGB,LGB3);
LDTW4GB = one(MCGB,LGB4);
LDTW10BB = one(MCGB,LGB5);
LDTW6GB = one(MCGB,LGB6);
LDTW7GB = one(MCGB,LGB7);

LDTWGB = [LDTW0GB(:,1); LDTW1GB(:,1); LDTW2GB(:,1); LDTW3GB(:,1); LDTW4GB(:,1); LDTW10BB(:,1); LDTW6GB(:,1); LDTW7GB(:,1)];
LDTWRG = [LDTW0RG(:,1); LDTW1RG(:,1); LDTW2RG(:,1); LDTW3RG(:,1); LDTW4RG(:,1); LDTW5RG(:,1); LDTW6RG(:,1); LDTW7RG(:,1)];
Lone = [LDTW0RB(:,1); LDTW1RB(:,1); LDTW2RB(:,1); LDTW3RB(:,1); LDTW4RB(:,1); LDTW5RB(:,1); LDTW6RB(:,1); LDTW7RB(:,1)];

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

S0G = batchG(SCS);
S1G = batchG(S1S);
S2G = batchG(S2S);
S3G = batchG(S3S);
S4G = batchG(S4S);
S10B = batchG(S5S);
S6G = batchG(S6S);
S7G = batchG(S7S);

S0B = batchB(SCS);
S1B = batchB(S1S);
S2B = batchB(S2S);
S3B = batchB(S3S);
S4B = batchB(S4S);
S10B = batchB(S5S);
S6B = batchB(S6S);
S7B = batchB(S7S);

SRG0 = [S0R;S0G];
SRG1 = [S1R;S1G];
SRG2 = [S2R;S2G];
SRG3 = [S3R;S3G];
SRG4 = [S4R;S4G];
SRG5 = [S5R;S10B];
SRG6 = [S6R;S6G];
SRG7 = [S7R;S7G];

SRB0 = [S0R;S0B];
SRB1 = [S1R;S1B];
SRB2 = [S2R;S2B];
SRB3 = [S3R;S3B];
SRB4 = [S4R;S4B];
SRB5 = [S5R;S10B];
SRB6 = [S6R;S6B];
SRB7 = [S7R;S7B];

SGB0 = [S0G;S0B];
SGB1 = [S1G;S1B];
SGB2 = [S2G;S2B];
SGB3 = [S3G;S3B];
SGB4 = [S4G;S4B];
SGB5 = [S10B;S10B];
SGB6 = [S6G;S6B];
SGB7 = [S7G;S7B];

SDTW0RG = one(MCRG,SRG0);
SDTW1RG = one(MCRG,SRG1);
SDTW2RG = one(MCRG,SRG2);
SDTW3RG = one(MCRG,SRG3);
SDTW4RG = one(MCRG,SRG4);
SDTW5RG = one(MCRG,SRG5);
SDTW6RG = one(MCRG,SRG6);
SDTW7RG = one(MCRG,SRG7);

SDTW0RB = one(MCRB,SRB0);
SDTW1RB = one(MCRB,SRB1);
SDTW2RB = one(MCRB,SRB2);
SDTW3RB = one(MCRB,SRB3);
SDTW4RB = one(MCRB,SRB4);
SDTW5RB = one(MCRB,SRB5);
SDTW6RB = one(MCRB,SRB6);
SDTW7RB = one(MCRB,SRB7);

SDTW0GB = one(MCGB,SGB0);
SDTW1GB = one(MCGB,SGB1);
SDTW2GB = one(MCGB,SGB2);
SDTW3GB = one(MCGB,SGB3);
SDTW4GB = one(MCGB,SGB4);
SDTW10BB = one(MCGB,SGB5);
SDTW6GB = one(MCGB,SGB6);
SDTW7GB = one(MCGB,SGB7);

SDTWGB = [SDTW0GB(:,1); SDTW1GB(:,1); SDTW2GB(:,1); SDTW3GB(:,1); SDTW4GB(:,1); SDTW10BB(:,1); SDTW6GB(:,1); SDTW7GB(:,1)];
SDTWRG = [SDTW0RG(:,1); SDTW1RG(:,1); SDTW2RG(:,1); SDTW3RG(:,1); SDTW4RG(:,1); SDTW5RG(:,1); SDTW6RG(:,1); SDTW7RG(:,1)];
Sone = [SDTW0RB(:,1); SDTW1RB(:,1); SDTW2RB(:,1); SDTW3RB(:,1); SDTW4RB(:,1); SDTW5RB(:,1); SDTW6RB(:,1); SDTW7RB(:,1)];

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

A0G = batchG(ACS);
A1G = batchG(A1S);
A2G = batchG(A2S);
A3G = batchG(A3S);
A4G = batchG(A4S);
A10B = batchG(A5S);
A6G = batchG(A6S);
A7G = batchG(A7S);

A0B = batchB(ACS);
A1B = batchB(A1S);
A2B = batchB(A2S);
A3B = batchB(A3S);
A4B = batchB(A4S);
A10B = batchB(A5S);
A6B = batchB(A6S);
A7B = batchB(A7S);

ARG0 = [A0R;A0G];
ARG1 = [A1R;A1G];
ARG2 = [A2R;A2G];
ARG3 = [A3R;A3G];
ARG4 = [A4R;A4G];
ARG5 = [A5R;A10B];
ARG6 = [A6R;A6G];
ARG7 = [A7R;A7G];

ARB0 = [A0R;A0B];
ARB1 = [A1R;A1B];
ARB2 = [A2R;A2B];
ARB3 = [A3R;A3B];
ARB4 = [A4R;A4B];
ARB5 = [A5R;A10B];
ARB6 = [A6R;A6B];
ARB7 = [A7R;A7B];

AGB0 = [A0G;A0B];
AGB1 = [A1G;A1B];
AGB2 = [A2G;A2B];
AGB3 = [A3G;A3B];
AGB4 = [A4G;A4B];
AGB5 = [A10B;A10B];
AGB6 = [A6G;A6B];
AGB7 = [A7G;A7B];

ADTW0RG = one(MCRG,ARG0);
ADTW1RG = one(MCRG,ARG1);
ADTW2RG = one(MCRG,ARG2);
ADTW3RG = one(MCRG,ARG3);
ADTW4RG = one(MCRG,ARG4);
ADTW5RG = one(MCRG,ARG5);
ADTW6RG = one(MCRG,ARG6);
ADTW7RG = one(MCRG,ARG7);

ADTW0RB = one(MCRB,ARB0);
ADTW1RB = one(MCRB,ARB1);
ADTW2RB = one(MCRB,ARB2);
ADTW3RB = one(MCRB,ARB3);
ADTW4RB = one(MCRB,ARB4);
ADTW5RB = one(MCRB,ARB5);
ADTW6RB = one(MCRB,ARB6);
ADTW7RB = one(MCRB,ARB7);

ADTW0GB = one(MCGB,AGB0);
ADTW1GB = one(MCGB,AGB1);
ADTW2GB = one(MCGB,AGB2);
ADTW3GB = one(MCGB,AGB3);
ADTW4GB = one(MCGB,AGB4);
ADTW10BB = one(MCGB,AGB5);
ADTW6GB = one(MCGB,AGB6);
ADTW7GB = one(MCGB,AGB7);

ADTWGB = [ADTW0GB(:,1); ADTW1GB(:,1); ADTW2GB(:,1); ADTW3GB(:,1); ADTW4GB(:,1); ADTW10BB(:,1); ADTW6GB(:,1); ADTW7GB(:,1)];
ADTWRG = [ADTW0RG(:,1); ADTW1RG(:,1); ADTW2RG(:,1); ADTW3RG(:,1); ADTW4RG(:,1); ADTW5RG(:,1); ADTW6RG(:,1); ADTW7RG(:,1)];
Aone = [ADTW0RB(:,1); ADTW1RB(:,1); ADTW2RB(:,1); ADTW3RB(:,1); ADTW4RB(:,1); ADTW5RB(:,1); ADTW6RB(:,1); ADTW7RB(:,1)];

x = (0:7);
figure;
plot(x,CuDTWGB,'LineWidth',2);
hold on
plot(x,ZnDTWGB,'LineWidth',2);
plot(x,PbDTWGB,'LineWidth',2);
plot(x,MDTWGB,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)')
%ylabel('DTW')
axis([0 7 .1 .6]);
hold off

%red
figure;
plot(x,Cuone,'LineWidth',2);
hold on
plot(x,Znone,'LineWidth',2);
plot(x,Pbone,'LineWidth',2);
plot(x,Mone,'LineWidth',2);
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
%ylabel('DTW')
axis([0 7 .1 .6]);
hold off

%green
figure;
plot(x,CuDTWRG,'LineWidth',2);
hold on
plot(x,ZnDTWRG,'LineWidth',2);
plot(x,PbDTWRG,'LineWidth',2);
plot(x,MDTWRG,'LineWidth',2);
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
%ylabel('DTW')
axis([0 7 .1 .6]);
hold off

%ALL figure thing
figure;
plot(x,CuDTWGB);
hold on
plot(x,ZnDTWGB);
plot(x,PbDTWGB);
plot(x,MDTWGB);
plot(x,CDTWGB);
plot(x,WDTWGB);
plot(x,DDTWGB);
plot(x,NDTWGB);
plot(x,LDTWGB);
plot(x,SDTWGB);
plot(x,ADTWGB);
legend('Cu','Zn','Pb','Mix','Cont','Wet','Dry','Nutr','Long','Short','Dark');
yline(Mmean,'k');
yline(Mstd2pos,'k--');
yline(Mstd3pos,'k:');
yline(Mstd2neg,'k--');
yline(Mstd3neg,'k:');
hold off