CMR = 0.142
CMG = 0.147
CMB = 0.157
 
CSR = 0.175
CSG = 0.188
CSB = 0.195

x = [0 1 2 3 4 5 6 7];

CuR = [0.192
0.202
0.139
0.131
0.145
0.296
0.177
0.162
];
CuG = [0.134
0.294
0.120
0.205
0.164
0.307
0.273
0.265
];
CuB = [0.084
0.272
0.103
0.235
0.197
0.328
0.288
0.278
];

ZnR = [0.107
0.125
0.106
0.114
0.111
0.133
0.113
0.107
];
ZnG = [0.110
0.171
0.134
0.124
0.156
0.206
0.165
0.170
];
ZnB = [0.163
0.226
0.184
0.176
0.214
0.258
0.230
0.218
];

PbR = [0.147
0.271
0.136
0.298
0.130
0.272
0.147
0.127
];
PbG = [0.106
0.303
0.104
0.341
0.182
0.331
0.180
0.139
];
PbB = [0.081
0.250
0.088
0.301
0.178
0.306
0.197
0.161
];

MixR = [0.149
0.328
0.210
0.427
0.264
0.445
0.356
0.254
];
MixG = [0.136
0.388
0.262
0.517
0.339
0.574
0.471
0.346
];
MixB = [0.104
0.307
0.199
0.448
0.290
0.518
0.433
0.357
];


NuR = [0.144
0.186
0.134
0.164
0.158
0.205
0.163
0.183
];
NuG = [0.179
0.227
0.166
0.199
0.200
0.247
0.209
0.240
];
NuB = [0.227
0.276
0.236
0.267
0.271
0.307
0.277
0.287
];

DryR = [0.118
0.118
0.104
0.111
0.105
0.104
0.133
0.239
];
DryG = [0.195
0.195
0.142
0.145
0.122
0.124
0.124
0.177
];
DryB = [0.213
0.213
0.171
0.174
0.147
0.165
0.186
0.286
];

WetR = [0.158
0.158
0.170
0.173
0.182
0.177
0.195
0.206
];
WetG = [0.181
0.181
0.189
0.206
0.222
0.222
0.243
0.261
];
WetB = [0.201
0.201
0.223
0.231
0.251
0.266
0.279
0.291
];



ShR = [0.176
0.176
0.180
0.191
0.187
0.189
0.205
0.203
];
ShG = [0.223
0.223
0.227
0.245
0.243
0.244
0.254
0.245
];
ShB = [0.289
0.289
0.282
0.301
0.294
0.299
0.306
0.295
];

LgR = [0.198
0.198
0.244
0.184
0.238
0.261
0.281
0.272
];
LgG = [0.241
0.241
0.271
0.236
0.283
0.306
0.315
0.301
];
LgB = [0.241
0.241
0.255
0.237
0.266
0.276
0.269
0.262
];

DkR = [0.238
0.238
0.218
0.260
0.220
0.234
0.221
0.225
];
DkG = [0.294
0.294
0.271
0.309
0.276
0.293
0.281
0.278
];
DkB = [0.391 0.391 0.401 0.391 0.406 0.401 0.403 0.404];


figure;
plot(x,CuR,'LineWidth',2);
hold on
plot(x,ZnR,'LineWidth',2);
plot(x,PbR,'LineWidth',2);
plot(x,MixR,'LineWidth',2);
yline(CMR,'k','LineWidth',2);
yline(CSR,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (Red)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,CuG,'LineWidth',2);
hold on
plot(x,ZnG,'LineWidth',2);
plot(x,PbG,'LineWidth',2);
plot(x,MixG,'LineWidth',2);
yline(CMG,'k','LineWidth',2);
yline(CSG,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (Green)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,CuB,'LineWidth',2);
hold on
plot(x,ZnB,'LineWidth',2);
plot(x,PbB,'LineWidth',2);
plot(x,MixB,'LineWidth',2);
yline(CMB,'k','LineWidth',2);
yline(CSB,'k--','LineWidth',2);
legend('Copper','Zinc','Lead', 'Mix','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Metals (Blue)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,WetR,'LineWidth',2);
hold on
plot(x,DryR,'LineWidth',2);
plot(x,NuR,'LineWidth',2);
yline(CMR,'k','LineWidth',2);
yline(CSR,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (Red)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,WetG,'LineWidth',2);
hold on
plot(x,DryG,'LineWidth',2);
plot(x,NuG,'LineWidth',2);
yline(CMG,'k','LineWidth',2);
yline(CSG,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (Green)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,WetB,'LineWidth',2);
hold on
plot(x,DryB,'LineWidth',2);
plot(x,NuB,'LineWidth',2);
yline(CMB,'k','LineWidth',2);
yline(CSB,'k--','LineWidth',2);
legend('Wet','Dry','Nutrients','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Environmental Stressors (Blue)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,LgR,'LineWidth',2);
hold on
plot(x,ShR,'LineWidth',2);
plot(x,DkR,'LineWidth',2);
yline(CMR,'k','LineWidth',2);
yline(CSR,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (Red)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,LgG,'LineWidth',2);
hold on
plot(x,ShG,'LineWidth',2);
plot(x,DkG,'LineWidth',2);
yline(CMG,'k','LineWidth',2);
yline(CSG,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (Green)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off

figure;
plot(x,LgB,'LineWidth',2);
hold on
plot(x,ShB,'LineWidth',2);
plot(x,DkB,'LineWidth',2);
yline(CMB,'k','LineWidth',2);
yline(CSB,'k--','LineWidth',2);
legend('Long','Short','Dark','Mean','3\sigma');
set(gca,'fontname','arial','fontsize',18,'fontweight','bold');
title('T-test Comparison of Photoperiod (Blue)');
xlabel('Time(days)');
ylabel('t-value');
axis([0 7 0.2 .5]);
hold off


