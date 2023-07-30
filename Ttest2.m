CMRvG = 0.147
CMRvB = 0.148
CMGvB = 0.153
 
CSRvG = 0.190
CSRvB = 0.163
CSGvB = 0.200

x = [0 1 2 3 4 5 6 7];

CuRvG = [0.192 0.202 0.139 0.131 0.145 0.296 0.177 0.162];
CuGvB = [0.189 0.196 0.148 0.146 0.158 0.362 0.209 0.193];
CuRvB = [0.176 0.195 0.137 0.139 0.143 0.194 0.181 0.169];

ZnRvG = [0.138 0.136 0.134 0.142 0.130 0.247 0.140 0.149];
ZnGvB = [0.141 0.148 0.140 0.146 0.140 0.282 0.162 0.163];
ZnRvB = [0.138 0.143 0.136 0.142 0.137 0.156 0.151 0.155];

PbRvG = [0.145 0.229 0.134 0.209 0.147 0.218 0.201 0.136];
PbGvB = [0.165 0.219 0.143 0.206 0.154 0.228 0.211 0.146];
PbRvB = [0.159 0.202 0.134 0.198 0.151 0.151 0.194 0.139];

MixRvG = [0.134 0.295 0.155 0.425 0.195 0.545 0.320 0.224];
MixGvB = [0.141 0.288 0.152 0.418 0.206 0.676 0.370 0.266];
MixRvB = [0.139 0.248 0.147 0.361 0.183 0.404 0.301 0.232];


NuRvG = [0.148 0.154 0.156 0.152 0.152 0.281 0.152 0.154];
NuGvB = [0.158 0.172 0.163 0.175 0.178 0.332 0.177 0.187];
NuRvB = [0.149 0.165 0.157 0.170 0.175 0.182 0.173 0.170];

DryRvG = [0.144 0.144 0.148 0.150 0.145 0.204 0.155 0.161];
DryGvB = [0.148 0.148 0.152 0.151 0.138 0.204 0.155 0.170];
DryRvB = [0.146 0.146 0.145 0.149 0.142 0.160 0.135 0.182];

WetRvG = [0.149 0.149 0.165 0.147 0.144 0.258 0.160 0.157];
WetGvB = [0.151 0.151 0.172 0.156 0.154 0.287 0.176 0.178];
WetRvB = [0.146 0.146 0.171 0.151 0.150 0.167 0.170 0.172];


ShRvG = [0.153 0.153 0.150 0.158 0.155 0.248 0.176 0.145];
ShGvB = [0.172 0.172 0.172 0.183 0.181 0.305 0.203 0.165];
ShRvB = [0.168 0.168 0.167 0.176 0.172 0.158 0.196 0.159];

LgRvG = [0.162 0.162 0.184 0.149 0.167 0.288 0.202 0.186];
LgGvB = [0.172 0.172 0.187 0.159 0.173 0.306 0.197 0.185];
LgRvB = [0.164 0.164 0.181 0.151 0.162 0.194 0.185 0.176];

DkRvG = [0.160 0.160 0.142 0.174 0.147 0.281 0.151 0.150];
DkGvB = [0.194 0.194 0.179 0.210 0.188 0.349 0.192 0.191];
DkRvB = [0.183 0.183 0.168 0.201 0.178 0.186 0.179 0.185];


figure;
plot(x,CuRvG,'LineWidth',2);
hold on
plot(x,ZnRvG,'LineWidth',2);
plot(x,PbRvG,'LineWidth',2);
plot(x,MixRvG,'LineWidth',2);
yline(CMRvG,'k','LineWidth',2);
yline(CSRvG,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (RvG)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,CuGvB,'LineWidth',2);
hold on
plot(x,ZnGvB,'LineWidth',2);
plot(x,PbGvB,'LineWidth',2);
plot(x,MixGvB,'LineWidth',2);
yline(CMGvB,'k','LineWidth',2);
yline(CSGvB,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (GvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,CuRvB,'LineWidth',2);
hold on
plot(x,ZnRvB,'LineWidth',2);
plot(x,PbRvB,'LineWidth',2);
plot(x,MixRvB,'LineWidth',2);
yline(CMRvB,'k','LineWidth',2);
yline(CSRvB,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (RvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,WetRvG,'LineWidth',2);
hold on
plot(x,DryRvG,'LineWidth',2);
plot(x,NuRvG,'LineWidth',2);
yline(CMRvG,'k','LineWidth',2);
yline(CSRvG,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (RvG)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,WetGvB,'LineWidth',2);
hold on
plot(x,DryGvB,'LineWidth',2);
plot(x,NuGvB,'LineWidth',2);
yline(CMGvB,'k','LineWidth',2);
yline(CSGvB,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (GvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,WetRvB,'LineWidth',2);
hold on
plot(x,DryRvB,'LineWidth',2);
plot(x,NuRvB,'LineWidth',2);
yline(CMRvB,'k','LineWidth',2);
yline(CSRvB,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (RvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,LgRvG,'LineWidth',2);
hold on
plot(x,ShRvG,'LineWidth',2);
plot(x,DkRvG,'LineWidth',2);
yline(CMRvG,'k','LineWidth',2);
yline(CSRvG,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (RvG)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,LgGvB,'LineWidth',2);
hold on
plot(x,ShGvB,'LineWidth',2);
plot(x,DkGvB,'LineWidth',2);
yline(CMGvB,'k','LineWidth',2);
yline(CSGvB,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (GvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off

figure;
plot(x,LgRvB,'LineWidth',2);
hold on
plot(x,ShRvB,'LineWidth',2);
plot(x,DkRvB,'LineWidth',2);
yline(CMRvB,'k','LineWidth',2);
yline(CSRvB,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (RvB)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.1 .7]);
hold off


