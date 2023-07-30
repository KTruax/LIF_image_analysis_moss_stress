%This code is for just running the dtw comparisons for single color

MasterC = 'E:\Batch\10B\Control';
MasterCS = imageDatastore(MasterC);
MCR = batchMR(MasterCS);
MSR = batchR(MasterCS);

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

CuDTW0R = one(MSR,Cu0R);
CuDTW1R = one(MSR,Cu1R);
CuDTW2R = one(MSR,Cu2R);
CuDTW3R = one(MSR,Cu3R);
CuDTW4R = one(MSR,Cu4R);
CuDTW5R = one(MSR,Cu5R);
CuDTW6R = one(MSR,Cu6R);
CuDTW7R = one(MSR,Cu7R);

CuDTWR = [CuDTW0R(:,1); CuDTW1R(:,1); CuDTW2R(:,1); CuDTW3R(:,1); CuDTW4R(:,1); CuDTW5R(:,1); CuDTW6R(:,1); CuDTW7R(:,1)];
CuDTWRstd2 = [CuDTW0R(:,2); CuDTW1R(:,2); CuDTW2R(:,2); CuDTW3R(:,2); CuDTW4R(:,2); CuDTW5R(:,2); CuDTW6R(:,2); CuDTW7R(:,2)];
CuDTWRstd3 = [CuDTW0R(:,3); CuDTW1R(:,3); CuDTW2R(:,3); CuDTW3R(:,3); CuDTW4R(:,3); CuDTW5R(:,3); CuDTW6R(:,3); CuDTW7R(:,3)];

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

ZnDTW0R = one(MSR,Zn0R);
ZnDTW1R = one(MSR,Zn1R);
ZnDTW2R = one(MSR,Zn2R);
ZnDTW3R = one(MSR,Zn3R);
ZnDTW4R = one(MSR,Zn4R);
ZnDTW5R = one(MSR,Zn5R);
ZnDTW6R = one(MSR,Zn6R);
ZnDTW7R = one(MSR,Zn7R);

ZnDTWR = [ZnDTW0R(:,1); ZnDTW1R(:,1); ZnDTW2R(:,1); ZnDTW3R(:,1); ZnDTW4R(:,1); ZnDTW5R(:,1); ZnDTW6R(:,1); ZnDTW7R(:,1)];
ZnDTWRstd2 = [ZnDTW0R(:,2); ZnDTW1R(:,2); ZnDTW2R(:,2); ZnDTW3R(:,2); ZnDTW4R(:,2); ZnDTW5R(:,2); ZnDTW6R(:,2); ZnDTW7R(:,2)];
ZnDTWRstd3 = [ZnDTW0R(:,3); ZnDTW1R(:,3); ZnDTW2R(:,3); ZnDTW3R(:,3); ZnDTW4R(:,3); ZnDTW5R(:,3); ZnDTW6R(:,3); ZnDTW7R(:,3)];

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

PbDTW0R = one(MSR,Pb0R);
PbDTW1R = one(MSR,Pb1R);
PbDTW2R = one(MSR,Pb2R);
PbDTW3R = one(MSR,Pb3R);
PbDTW4R = one(MSR,Pb4R);
PbDTW5R = one(MSR,Pb5R);
PbDTW6R = one(MSR,Pb6R);
PbDTW7R = one(MSR,Pb7R);

PbDTWR = [PbDTW0R(:,1); PbDTW1R(:,1); PbDTW2R(:,1); PbDTW3R(:,1); PbDTW4R(:,1); PbDTW5R(:,1); PbDTW6R(:,1); PbDTW7R(:,1)];
PbDTWRstd2 = [PbDTW0R(:,2); PbDTW1R(:,2); PbDTW2R(:,2); PbDTW3R(:,2); PbDTW4R(:,2); PbDTW5R(:,2); PbDTW6R(:,2); PbDTW7R(:,2)];
PbDTWRstd3 = [PbDTW0R(:,3); PbDTW1R(:,3); PbDTW2R(:,3); PbDTW3R(:,3); PbDTW4R(:,3); PbDTW5R(:,3); PbDTW6R(:,3); PbDTW7R(:,3)];

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

MDTW0R = one(MSR,M0R);
MDTW1R = one(MSR,M1R);
MDTW2R = one(MSR,M2R);
MDTW3R = one(MSR,M3R);
MDTW4R = one(MSR,M4R);
MDTW5R = one(MSR,M5R);
MDTW6R = one(MSR,M6R);
MDTW7R = one(MSR,M7R);

MDTWR = [MDTW0R(:,1); MDTW1R(:,1); MDTW2R(:,1); MDTW3R(:,1); MDTW4R(:,1); MDTW5R(:,1); MDTW6R(:,1); MDTW7R(:,1)];
MDTWRstd2 = [MDTW0R(:,2); MDTW1R(:,2); MDTW2R(:,2); MDTW3R(:,2); MDTW4R(:,2); MDTW5R(:,2); MDTW6R(:,2); MDTW7R(:,2)];
MDTWRstd3 = [MDTW0R(:,3); MDTW1R(:,3); MDTW2R(:,3); MDTW3R(:,3); MDTW4R(:,3); MDTW5R(:,3); MDTW6R(:,3); MDTW7R(:,3)];

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

CDTW0R = one(MSR,C0R);
CDTW1R = one(MSR,C1R);
CDTW2R = one(MSR,C2R);
CDTW3R = one(MSR,C3R);
CDTW4R = one(MSR,C4R);
CDTW5R = one(MSR,C5R);
CDTW6R = one(MSR,C6R);
CDTW7R = one(MSR,C7R);

CDTWR = [CDTW0R(:,1); CDTW1R(:,1); CDTW2R(:,1); CDTW3R(:,1); CDTW4R(:,1); CDTW5R(:,1); CDTW6R(:,1); CDTW7R(:,1)];
CDTWRstd2 = [CDTW0R(:,2); CDTW1R(:,2); CDTW2R(:,2); CDTW3R(:,2); CDTW4R(:,2); CDTW5R(:,2); CDTW6R(:,2); CDTW7R(:,2)];
CDTWRstd3 = [CDTW0R(:,3); CDTW1R(:,3); CDTW2R(:,3); CDTW3R(:,3); CDTW4R(:,3); CDTW5R(:,3); CDTW6R(:,3); CDTW7R(:,3)];

ContM = sum(CDTWR)/8
Contvar = sum((CDTWR - ContM).^2)./(7);
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

WDTW0R = one(MSR,W0R);
WDTW1R = one(MSR,W1R);
WDTW2R = one(MSR,W2R);
WDTW3R = one(MSR,W3R);
WDTW4R = one(MSR,W4R);
WDTW5R = one(MSR,W5R);
WDTW6R = one(MSR,W6R);
WDTW7R = one(MSR,W7R);

WDTWR = [WDTW0R(:,1); WDTW1R(:,1); WDTW2R(:,1); WDTW3R(:,1); WDTW4R(:,1); WDTW5R(:,1); WDTW6R(:,1); WDTW7R(:,1)];
WDTWRstd2 = [WDTW0R(:,2); WDTW1R(:,2); WDTW2R(:,2); WDTW3R(:,2); WDTW4R(:,2); WDTW5R(:,2); WDTW6R(:,2); WDTW7R(:,2)];
WDTWRstd3 = [WDTW0R(:,3); WDTW1R(:,3); WDTW2R(:,3); WDTW3R(:,3); WDTW4R(:,3); WDTW5R(:,3); WDTW6R(:,3); WDTW7R(:,3)];

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

DDTW0R = one(MSR,D0R);
DDTW1R = one(MSR,D1R);
DDTW2R = one(MSR,D2R);
DDTW3R = one(MSR,D3R);
DDTW4R = one(MSR,D4R);
DDTW5R = one(MSR,D5R);
DDTW6R = one(MSR,D6R);
DDTW7R = one(MSR,D7R);

DDTWR = [DDTW0R(:,1); DDTW1R(:,1); DDTW2R(:,1); DDTW3R(:,1); DDTW4R(:,1); DDTW5R(:,1); DDTW6R(:,1); DDTW7R(:,1)];
DDTWRstd2 = [DDTW0R(:,2); DDTW1R(:,2); DDTW2R(:,2); DDTW3R(:,2); DDTW4R(:,2); DDTW5R(:,2); DDTW6R(:,2); DDTW7R(:,2)];
DDTWRstd3 = [DDTW0R(:,3); DDTW1R(:,3); DDTW2R(:,3); DDTW3R(:,3); DDTW4R(:,3); DDTW5R(:,3); DDTW6R(:,3); DDTW7R(:,3)];

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

NDTW0R = one(MSR,N0R);
NDTW1R = one(MSR,N1R);
NDTW2R = one(MSR,N2R);
NDTW3R = one(MSR,N3R);
NDTW4R = one(MSR,N4R);
NDTW5R = one(MSR,N5R);
NDTW6R = one(MSR,N6R);
NDTW7R = one(MSR,N7R);

NDTWR = [NDTW0R(:,1); NDTW1R(:,1); NDTW2R(:,1); NDTW3R(:,1); NDTW4R(:,1); NDTW5R(:,1); NDTW6R(:,1); NDTW7R(:,1)];
NDTWRstd2 = [NDTW0R(:,2); NDTW1R(:,2); NDTW2R(:,2); NDTW3R(:,2); NDTW4R(:,2); NDTW5R(:,2); NDTW6R(:,2); NDTW7R(:,2)];
NDTWRstd3 = [NDTW0R(:,3); NDTW1R(:,3); NDTW2R(:,3); NDTW3R(:,3); NDTW4R(:,3); NDTW5R(:,3); NDTW6R(:,3); NDTW7R(:,3)];

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

LDTW0R = one(MSR,L0R);
LDTW1R = one(MSR,L1R);
LDTW2R = one(MSR,L2R);
LDTW3R = one(MSR,L3R);
LDTW4R = one(MSR,L4R);
LDTW5R = one(MSR,L5R);
LDTW6R = one(MSR,L6R);
LDTW7R = one(MSR,L7R);

LDTWR = [LDTW0R(:,1); LDTW1R(:,1); LDTW2R(:,1); LDTW3R(:,1); LDTW4R(:,1); LDTW5R(:,1); LDTW6R(:,1); LDTW7R(:,1)];
LDTWRstd2 = [LDTW0R(:,2); LDTW1R(:,2); LDTW2R(:,2); LDTW3R(:,2); LDTW4R(:,2); LDTW5R(:,2); LDTW6R(:,2); LDTW7R(:,2)];
LDTWRstd3 = [LDTW0R(:,3); LDTW1R(:,3); LDTW2R(:,3); LDTW3R(:,3); LDTW4R(:,3); LDTW5R(:,3); LDTW6R(:,3); LDTW7R(:,3)];

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

SDTW0R = one(MSR,S0R);
SDTW1R = one(MSR,S1R);
SDTW2R = one(MSR,S2R);
SDTW3R = one(MSR,S3R);
SDTW4R = one(MSR,S4R);
SDTW5R = one(MSR,S5R);
SDTW6R = one(MSR,S6R);
SDTW7R = one(MSR,S7R);

SDTWR = [SDTW0R(:,1); SDTW1R(:,1); SDTW2R(:,1); SDTW3R(:,1); SDTW4R(:,1); SDTW5R(:,1); SDTW6R(:,1); SDTW7R(:,1)];
SDTWRstd2 = [SDTW0R(:,2); SDTW1R(:,2); SDTW2R(:,2); SDTW3R(:,2); SDTW4R(:,2); SDTW5R(:,2); SDTW6R(:,2); SDTW7R(:,2)];
SDTWRstd3 = [SDTW0R(:,3); SDTW1R(:,3); SDTW2R(:,3); SDTW3R(:,3); SDTW4R(:,3); SDTW5R(:,3); SDTW6R(:,3); SDTW7R(:,3)];

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

ADTW0R = one(MSR,A0R);
ADTW1R = one(MSR,A1R);
ADTW2R = one(MSR,A2R);
ADTW3R = one(MSR,A3R);
ADTW4R = one(MSR,A4R);
ADTW5R = one(MSR,A5R);
ADTW6R = one(MSR,A6R);
ADTW7R = one(MSR,A7R);

ADTWR = [ADTW0R(:,1); ADTW1R(:,1); ADTW2R(:,1); ADTW3R(:,1); ADTW4R(:,1); ADTW5R(:,1); ADTW6R(:,1); ADTW7R(:,1)];
ADTWRstd2 = [ADTW0R(:,2); ADTW1R(:,2); ADTW2R(:,2); ADTW3R(:,2); ADTW4R(:,2); ADTW5R(:,2); ADTW6R(:,2); ADTW7R(:,2)];
ADTWRstd3 = [ADTW0R(:,3); ADTW1R(:,3); ADTW2R(:,3); ADTW3R(:,3); ADTW4R(:,3); ADTW5R(:,3); ADTW6R(:,3); ADTW7R(:,3)];

x = (0:7);
figure;
plot(x,CuDTWR,'LineWidth',2);
hold on
plot(x,ZnDTWR,'LineWidth',2);
plot(x,PbDTWR,'LineWidth',2);
plot(x,MDTWR,'LineWidth',2);
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
axis([0 7 .05 .3]);
hold off

%ALL figure thing
figure;
plot(x,CuDTWR);
hold on
plot(x,ZnDTWR);
plot(x,PbDTWR);
plot(x,MDTWR);
plot(x,CDTWR);
plot(x,WDTWR);
plot(x,DDTWR);
plot(x,NDTWR);
plot(x,LDTWR);
plot(x,SDTWR);
plot(x,ADTWR);
legend('Cu','Zn','Pb','Mix','Cont','Wet','Dry','Nutr','Long','Short','Dark');
yline(Mmean,'k');
yline(Mstd2pos,'k--');
yline(Mstd3pos,'k:');
yline(Mstd2neg,'k--');
yline(Mstd3neg,'k:');
hold off


%GREEN
MCG = batchMG(MasterCS);
MSG = batchG(MasterCS);

%COPPER TRIAL 1
Cu0G = batchG(CuCS);
Cu1G = batchG(Cu1S);
Cu2G = batchG(Cu2S);
Cu3G = batchG(Cu3S);
Cu4G = batchG(Cu4S);
Cu5G = batchG(Cu5S);
Cu6G = batchG(Cu6S);
Cu7G = batchG(Cu7S);

CuDTW0G = one(MSG,Cu0G);
CuDTW1G = one(MSG,Cu1G);
CuDTW2G = one(MSG,Cu2G);
CuDTW3G = one(MSG,Cu3G);
CuDTW4G = one(MSG,Cu4G);
CuDTW5G = one(MSG,Cu5G);
CuDTW6G = one(MSG,Cu6G);
CuDTW7G = one(MSG,Cu7G);

CuDTWG = [CuDTW0G(:,1); CuDTW1G(:,1); CuDTW2G(:,1); CuDTW3G(:,1); CuDTW4G(:,1); CuDTW5G(:,1); CuDTW6G(:,1); CuDTW7G(:,1)];

%zinc trial 2
Zn0G = batchG(ZnCS);
Zn1G = batchG(Zn1S);
Zn2G = batchG(Zn2S);
Zn3G = batchG(Zn3S);
Zn4G = batchG(Zn4S);
Zn5G = batchG(Zn5S);
Zn6G = batchG(Zn6S);
Zn7G = batchG(Zn7S);

ZnDTW0G = one(MSG,Zn0G);
ZnDTW1G = one(MSG,Zn1G);
ZnDTW2G = one(MSG,Zn2G);
ZnDTW3G = one(MSG,Zn3G);
ZnDTW4G = one(MSG,Zn4G);
ZnDTW5G = one(MSG,Zn5G);
ZnDTW6G = one(MSG,Zn6G);
ZnDTW7G = one(MSG,Zn7G);

ZnDTWG = [ZnDTW0G(:,1); ZnDTW1G(:,1); ZnDTW2G(:,1); ZnDTW3G(:,1); ZnDTW4G(:,1); ZnDTW5G(:,1); ZnDTW6G(:,1); ZnDTW7G(:,1)];

%lead trial 3
Pb0G = batchG(PbCS);
Pb1G = batchG(Pb1S);
Pb2G = batchG(Pb2S);
Pb3G = batchG(Pb3S);
Pb4G = batchG(Pb4S);
Pb5G = batchG(Pb5S);
Pb6G = batchG(Pb6S);
Pb7G = batchG(Pb7S);

PbDTW0G = one(MSG,Pb0G);
PbDTW1G = one(MSG,Pb1G);
PbDTW2G = one(MSG,Pb2G);
PbDTW3G = one(MSG,Pb3G);
PbDTW4G = one(MSG,Pb4G);
PbDTW5G = one(MSG,Pb5G);
PbDTW6G = one(MSG,Pb6G);
PbDTW7G = one(MSG,Pb7G);

PbDTWG = [PbDTW0G(:,1); PbDTW1G(:,1); PbDTW2G(:,1); PbDTW3G(:,1); PbDTW4G(:,1); PbDTW5G(:,1); PbDTW6G(:,1); PbDTW7G(:,1)];

%Mix - Trial 4
M0G = batchG(MCS);
M1G = batchG(M1S);
M2G = batchG(M2S);
M3G = batchG(M3S);
M4G = batchG(M4S);
M5G = batchG(M5S);
M6G = batchG(M6S);
M7G = batchG(M7S);

MDTW0G = one(MSG,M0G);
MDTW1G = one(MSG,M1G);
MDTW2G = one(MSG,M2G);
MDTW3G = one(MSG,M3G);
MDTW4G = one(MSG,M4G);
MDTW5G = one(MSG,M5G);
MDTW6G = one(MSG,M6G);
MDTW7G = one(MSG,M7G);

MDTWG = [MDTW0G(:,1); MDTW1G(:,1); MDTW2G(:,1); MDTW3G(:,1); MDTW4G(:,1); MDTW5G(:,1); MDTW6G(:,1); MDTW7G(:,1)];

%Control for comparison
C0G = batchG(CCS);
C1G = batchG(C1S);
C2G = batchG(C2S);
C3G = batchG(C3S);
C4G = batchG(C4S);
C5G = batchG(C5S);
C6G = batchG(C6S);
C7G = batchG(C7S);

CDTW0G = one(MSG,C0G);
CDTW1G = one(MSG,C1G);
CDTW2G = one(MSG,C2G);
CDTW3G = one(MSG,C3G);
CDTW4G = one(MSG,C4G);
CDTW5G = one(MSG,C5G);
CDTW6G = one(MSG,C6G);
CDTW7G = one(MSG,C7G);

CDTWG = [CDTW0G(:,1); CDTW1G(:,1); CDTW2G(:,1); CDTW3G(:,1); CDTW4G(:,1); CDTW5G(:,1); CDTW6G(:,1); CDTW7G(:,1)];

ContMg = sum(CDTWG)/8
Contvarg = sum((CDTWG - ContMg).^2)./(7);
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

WDTW0G = one(MSG,W0G);
WDTW1G = one(MSG,W1G);
WDTW2G = one(MSG,W2G);
WDTW3G = one(MSG,W3G);
WDTW4G = one(MSG,W4G);
WDTW5G = one(MSG,W5G);
WDTW6G = one(MSG,W6G);
WDTW7G = one(MSG,W7G);

WDTWG = [WDTW0G(:,1); WDTW1G(:,1); WDTW2G(:,1); WDTW3G(:,1); WDTW4G(:,1); WDTW5G(:,1); WDTW6G(:,1); WDTW7G(:,1)];

%Dry - Trial 7
D0G = batchG(DCS);
D1G = batchG(D1S);
D2G = batchG(D2S);
D3G = batchG(D3S);
D4G = batchG(D4S);
D5G = batchG(D5S);
D6G = batchG(D6S);
D7G = batchG(D7S);

DDTW0G = one(MSG,D0G);
DDTW1G = one(MSG,D1G);
DDTW2G = one(MSG,D2G);
DDTW3G = one(MSG,D3G);
DDTW4G = one(MSG,D4G);
DDTW5G = one(MSG,D5G);
DDTW6G = one(MSG,D6G);
DDTW7G = one(MSG,D7G);

DDTWG = [DDTW0G(:,1); DDTW1G(:,1); DDTW2G(:,1); DDTW3G(:,1); DDTW4G(:,1); DDTW5G(:,1); DDTW6G(:,1); DDTW7G(:,1)];

%Nutrients - Trial 8
N0G = batchG(NCS);
N1G = batchG(N1S);
N2G = batchG(N2S);
N3G = batchG(N3S);
N4G = batchG(N4S);
N5G = batchG(N5S);
N6G = batchG(N6S);
N7G = batchG(N7S);

NDTW0G = one(MSG,N0G);
NDTW1G = one(MSG,N1G);
NDTW2G = one(MSG,N2G);
NDTW3G = one(MSG,N3G);
NDTW4G = one(MSG,N4G);
NDTW5G = one(MSG,N5G);
NDTW6G = one(MSG,N6G);
NDTW7G = one(MSG,N7G);

NDTWG = [NDTW0G(:,1); NDTW1G(:,1); NDTW2G(:,1); NDTW3G(:,1); NDTW4G(:,1); NDTW5G(:,1); NDTW6G(:,1); NDTW7G(:,1)];

%Long - Trial 9
L0G = batchG(LCS);
L1G = batchG(L1S);
L2G = batchG(L2S);
L3G = batchG(L3S);
L4G = batchG(L4S);
L5G = batchG(L5S);
L6G = batchG(L6S);
L7G = batchG(L7S);

LDTW0G = one(MCG,L0G);
LDTW1G = one(MCG,L1G);
LDTW2G = one(MCG,L2G);
LDTW3G = one(MCG,L3G);
LDTW4G = one(MCG,L4G);
LDTW5G = one(MCG,L5G);
LDTW6G = one(MCG,L6G);
LDTW7G = one(MCG,L7G);

LDTWG = [LDTW0G(:,1); LDTW1G(:,1); LDTW2G(:,1); LDTW3G(:,1); LDTW4G(:,1); LDTW5G(:,1); LDTW6G(:,1); LDTW7G(:,1)];

%Short - Trial 10
S0G = batchG(SCS);
S1G = batchG(S1S);
S2G = batchG(S2S);
S3G = batchG(S3S);
S4G = batchG(S4S);
S5G = batchG(S5S);
S6G = batchG(S6S);
S7G = batchG(S7S);

SDTW0G = one(MSG,S0G);
SDTW1G = one(MSG,S1G);
SDTW2G = one(MSG,S2G);
SDTW3G = one(MSG,S3G);
SDTW4G = one(MSG,S4G);
SDTW5G = one(MSG,S5G);
SDTW6G = one(MSG,S6G);
SDTW7G = one(MSG,S7G);

SDTWG = [SDTW0G(:,1); SDTW1G(:,1); SDTW2G(:,1); SDTW3G(:,1); SDTW4G(:,1); SDTW5G(:,1); SDTW6G(:,1); SDTW7G(:,1)];

%Dark - Trial 11
A0G = batchG(ACS);
A1G = batchG(A1S);
A2G = batchG(A2S);
A3G = batchG(A3S);
A4G = batchG(A4S);
A5G = batchG(A5S);
A6G = batchG(A6S);
A7G = batchG(A7S);

ADTW0G = one(MSG,A0G);
ADTW1G = one(MSG,A1G);
ADTW2G = one(MSG,A2G);
ADTW3G = one(MSG,A3G);
ADTW4G = one(MSG,A4G);
ADTW5G = one(MSG,A5G);
ADTW6G = one(MSG,A6G);
ADTW7G = one(MSG,A7G);

ADTWG = [ADTW0G(:,1); ADTW1G(:,1); ADTW2G(:,1); ADTW3G(:,1); ADTW4G(:,1); ADTW5G(:,1); ADTW6G(:,1); ADTW7G(:,1)];

x = (0:7);
figure;
plot(x,CuDTWG,'LineWidth',2);
hold on
plot(x,ZnDTWG,'LineWidth',2);
plot(x,PbDTWG,'LineWidth',2);
plot(x,MDTWG,'LineWidth',2);
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
axis([0 7 .05 .3]);
hold off


%BLUE
MCB = batchMB(MasterCS);
MSB = batchB(MasterCS);

%COPPER TRIAL 1
Cu0B = batchB(CuCS);
Cu1B = batchB(Cu1S);
Cu2B = batchB(Cu2S);
Cu3B = batchB(Cu3S);
Cu4B = batchB(Cu4S);
Cu10B = batchB(Cu5S);
Cu6B = batchB(Cu6S);
Cu7B = batchB(Cu7S);

CuDTW0B = one(MSB,Cu0B);
CuDTW1B = one(MSB,Cu1B);
CuDTW2B = one(MSB,Cu2B);
CuDTW3B = one(MSB,Cu3B);
CuDTW4B = one(MSB,Cu4B);
CuDTW10B = one(MSB,Cu10B);
CuDTW6B = one(MSB,Cu6B);
CuDTW7B = one(MSB,Cu7B);

CuDTWB = [CuDTW0B(:,1); CuDTW1B(:,1); CuDTW2B(:,1); CuDTW3B(:,1); CuDTW4B(:,1); CuDTW10B(:,1); CuDTW6B(:,1); CuDTW7B(:,1)];
%CuDTWB4 = [CuDTW0B(:,4); CuDTW1B(:,4); CuDTW2B(:,4); CuDTW3B(:,4); CuDTW4B(:,4); CuDTW10B(:,4); CuDTW6B(:,4); CuDTW7B(:,4)];

%zinc trial 2
Zn0B = batchB(ZnCS);
Zn1B = batchB(Zn1S);
Zn2B = batchB(Zn2S);
Zn3B = batchB(Zn3S);
Zn4B = batchB(Zn4S);
Zn10B = batchB(Zn5S);
Zn6B = batchB(Zn6S);
Zn7B = batchB(Zn7S);

ZnDTW0B = one(MSB,Zn0B);
ZnDTW1B = one(MSB,Zn1B);
ZnDTW2B = one(MSB,Zn2B);
ZnDTW3B = one(MSB,Zn3B);
ZnDTW4B = one(MSB,Zn4B);
ZnDTW10B = one(MSB,Zn10B);
ZnDTW6B = one(MSB,Zn6B);
ZnDTW7B = one(MSB,Zn7B);

ZnDTWB = [ZnDTW0B(:,1); ZnDTW1B(:,1); ZnDTW2B(:,1); ZnDTW3B(:,1); ZnDTW4B(:,1); ZnDTW10B(:,1); ZnDTW6B(:,1); ZnDTW7B(:,1)];
%ZnDTWB4 = [ZnDTW0B(:,4); ZnDTW1B(:,4); ZnDTW2B(:,4); ZnDTW3B(:,4); ZnDTW4B(:,4); ZnDTW10B(:,4); ZnDTW6B(:,4); ZnDTW7B(:,4)];

%lead trial 3
Pb0B = batchB(PbCS);
Pb1B = batchB(Pb1S);
Pb2B = batchB(Pb2S);
Pb3B = batchB(Pb3S);
Pb4B = batchB(Pb4S);
Pb10B = batchB(Pb5S);
Pb6B = batchB(Pb6S);
Pb7B = batchB(Pb7S);

PbDTW0B = one(MSB,Pb0B);
PbDTW1B = one(MSB,Pb1B);
PbDTW2B = one(MSB,Pb2B);
PbDTW3B = one(MSB,Pb3B);
PbDTW4B = one(MSB,Pb4B);
PbDTW10B = one(MSB,Pb10B);
PbDTW6B = one(MSB,Pb6B);
PbDTW7B = one(MSB,Pb7B);

PbDTWB = [PbDTW0B(:,1); PbDTW1B(:,1); PbDTW2B(:,1); PbDTW3B(:,1); PbDTW4B(:,1); PbDTW10B(:,1); PbDTW6B(:,1); PbDTW7B(:,1)];
%PbDTWB4 = [PbDTW0B(:,4); PbDTW1B(:,4); PbDTW2B(:,4); PbDTW3B(:,4); PbDTW4B(:,4); PbDTW10B(:,4); PbDTW6B(:,4); PbDTW7B(:,4)];

%Mix - Trial 4
M0B = batchB(MCS);
M1B = batchB(M1S);
M2B = batchB(M2S);
M3B = batchB(M3S);
M4B = batchB(M4S);
M10B = batchB(M5S);
M6B = batchB(M6S);
M7B = batchB(M7S);

MDTW0B = one(MSB,M0B);
MDTW1B = one(MSB,M1B);
MDTW2B = one(MSB,M2B);
MDTW3B = one(MSB,M3B);
MDTW4B = one(MSB,M4B);
MDTW10B = one(MSB,M10B);
MDTW6B = one(MSB,M6B);
MDTW7B = one(MSB,M7B);

MDTWB = [MDTW0B(:,1); MDTW1B(:,1); MDTW2B(:,1); MDTW3B(:,1); MDTW4B(:,1); MDTW10B(:,1); MDTW6B(:,1); MDTW7B(:,1)];
%MDTWB4 = [MDTW0B(:,4); MDTW1B(:,4); MDTW2B(:,4); MDTW3B(:,4); MDTW4B(:,4); MDTW10B(:,4); MDTW6B(:,4); MDTW7B(:,4)];

%Control for comparison
C0B = batchB(CCS);
C1B = batchB(C1S);
C2B = batchB(C2S);
C3B = batchB(C3S);
C4B = batchB(C4S);
C10B = batchB(C5S);
C6B = batchB(C6S);
C7B = batchB(C7S);

CDTW0B = one(MSB,C0B);
CDTW1B = one(MSB,C1B);
CDTW2B = one(MSB,C2B);
CDTW3B = one(MSB,C3B);
CDTW4B = one(MSB,C4B);
CDTW10B = one(MSB,C10B);
CDTW6B = one(MSB,C6B);
CDTW7B = one(MSB,C7B);

CDTWB = [CDTW0B(:,1); CDTW1B(:,1); CDTW2B(:,1); CDTW3B(:,1); CDTW4B(:,1); CDTW10B(:,1); CDTW6B(:,1); CDTW7B(:,1)];

ContMb = sum(CDTWB)/8
Contvarb = sum((CDTWB - ContMb).^2)./(7);
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

WDTW0B = one(MSB,W0B);
WDTW1B = one(MSB,W1B);
WDTW2B = one(MSB,W2B);
WDTW3B = one(MSB,W3B);
WDTW4B = one(MSB,W4B);
WDTW10B = one(MSB,W10B);
WDTW6B = one(MSB,W6B);
WDTW7B = one(MSB,W7B);

WDTWB = [WDTW0B(:,1); WDTW1B(:,1); WDTW2B(:,1); WDTW3B(:,1); WDTW4B(:,1); WDTW10B(:,1); WDTW6B(:,1); WDTW7B(:,1)];

%Dry - Trial 7
D0B = batchB(DCS);
D1B = batchB(D1S);
D2B = batchB(D2S);
D3B = batchB(D3S);
D4B = batchB(D4S);
D10B = batchB(D5S);
D6B = batchB(D6S);
D7B = batchB(D7S);

DDTW0B = one(MSB,D0B);
DDTW1B = one(MSB,D1B);
DDTW2B = one(MSB,D2B);
DDTW3B = one(MSB,D3B);
DDTW4B = one(MSB,D4B);
DDTW10B = one(MSB,D10B);
DDTW6B = one(MSB,D6B);
DDTW7B = one(MSB,D7B);

DDTWB = [DDTW0B(:,1); DDTW1B(:,1); DDTW2B(:,1); DDTW3B(:,1); DDTW4B(:,1); DDTW10B(:,1); DDTW6B(:,1); DDTW7B(:,1)];

%Nutrients - Trial 8
N0B = batchB(NCS);
N1B = batchB(N1S);
N2B = batchB(N2S);
N3B = batchB(N3S);
N4B = batchB(N4S);
N10B = batchB(N5S);
N6B = batchB(N6S);
N7B = batchB(N7S);

NDTW0B = one(MSB,N0B);
NDTW1B = one(MSB,N1B);
NDTW2B = one(MSB,N2B);
NDTW3B = one(MSB,N3B);
NDTW4B = one(MSB,N4B);
NDTW10B = one(MSB,N10B);
NDTW6B = one(MSB,N6B);
NDTW7B = one(MSB,N7B);

NDTWB = [NDTW0B(:,1); NDTW1B(:,1); NDTW2B(:,1); NDTW3B(:,1); NDTW4B(:,1); NDTW10B(:,1); NDTW6B(:,1); NDTW7B(:,1)];

%Long - Trial 9
L0B = batchB(LCS);
L1B = batchB(L1S);
L2B = batchB(L2S);
L3B = batchB(L3S);
L4B = batchB(L4S);
L10B = batchB(L5S);
L6B = batchB(L6S);
L7B = batchB(L7S);

LDTW0B = one(MSB,L0B);
LDTW1B = one(MSB,L1B);
LDTW2B = one(MSB,L2B);
LDTW3B = one(MSB,L3B);
LDTW4B = one(MSB,L4B);
LDTW10B = one(MSB,L10B);
LDTW6B = one(MSB,L6B);
LDTW7B = one(MSB,L7B);

LDTWB = [LDTW0B(:,1); LDTW1B(:,1); LDTW2B(:,1); LDTW3B(:,1); LDTW4B(:,1); LDTW10B(:,1); LDTW6B(:,1); LDTW7B(:,1)];

%Short - Trial 10
S0B = batchB(SCS);
S1B = batchB(S1S);
S2B = batchB(S2S);
S3B = batchB(S3S);
S4B = batchB(S4S);
S10B = batchB(S5S);
S6B = batchB(S6S);
S7B = batchB(S7S);

SDTW0B = one(MSB,S0B);
SDTW1B = one(MSB,S1B);
SDTW2B = one(MSB,S2B);
SDTW3B = one(MSB,S3B);
SDTW4B = one(MSB,S4B);
SDTW10B = one(MSB,S10B);
SDTW6B = one(MSB,S6B);
SDTW7B = one(MSB,S7B);

SDTWB = [SDTW0B(:,1); SDTW1B(:,1); SDTW2B(:,1); SDTW3B(:,1); SDTW4B(:,1); SDTW10B(:,1); SDTW6B(:,1); SDTW7B(:,1)];

%Dark - Trial 11
A0B = batchB(ACS);
A1B = batchB(A1S);
A2B = batchB(A2S);
A3B = batchB(A3S);
A4B = batchB(A4S);
A10B = batchB(A5S);
A6B = batchB(A6S);
A7B = batchB(A7S);

ADTW0B = one(MSB,A0B);
ADTW1B = one(MSB,A1B);
ADTW2B = one(MSB,A2B);
ADTW3B = one(MSB,A3B);
ADTW4B = one(MSB,A4B);
ADTW10B = one(MSB,A10B);
ADTW6B = one(MSB,A6B);
ADTW7B = one(MSB,A7B);

ADTWB = [ADTW0B(:,1); ADTW1B(:,1); ADTW2B(:,1); ADTW3B(:,1); ADTW4B(:,1); ADTW10B(:,1); ADTW6B(:,1); ADTW7B(:,1)];

x = (0:7);
figure;
plot(x,CuDTWB,'LineWidth',2);
hold on
plot(x,ZnDTWB,'LineWidth',2);
plot(x,PbDTWB,'LineWidth',2);
plot(x,MDTWB,'LineWidth',2);
%plot(x,crmean);
%yline(Mmean,'k');
%yline(Mstd2pos,'k--');
%yline(Mstd3pos,'k:');
yline(ContMb,'k','LineWidth',2);
yline(Contstd2b,'k--','LineWidth',2);
yline(Contstd3b,'k:','LineWidth',2);
%legend('Cu','Zn','Pb','Mix','Mean','2\sigma','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
xlabel('Time(days)');
ylabel('DTW');
axis([0 7 .05 .3]);
hold off;

%err
x = (0:7);
figure;
errorbar(x,CuDTWB,CuDTWB4,'LineWidth',2);
hold on
errorbar(x,ZnDTWB,ZnDTWB4,'LineWidth',2);
errorbar(x,PbDTWB,PbDTWB4,'LineWidth',2);
errorbar(x,MDTWB,MDTWB4,'LineWidth',2);
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
ylabel('DTW')


%environmental
x = (0:7);
figure;
plot(x,WDTWB,'LineWidth',2);
hold on
plot(x,DDTWB,'LineWidth',2);
plot(x,NDTWB,'LineWidth',2);
plot(x,LDTWB,'LineWidth',2);
plot(x,SDTWB,'LineWidth',2);
plot(x,ADTWB,'LineWidth',2);
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
ylabel('DTW')