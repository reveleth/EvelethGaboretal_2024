clear
close all
clc
load('LakeErieData.mat');

%Find locations (rows) of surface samples
JuneS=find(June(:,1)==0.5);
AugS=find(August(:,1)==0.5);
OctS=find(October(:,1)==0.5);

JuneD=find(June(:,1)~=0.5);
AugD=find(August(:,1)~=0.5);
OctD=find(October(:,1)~=0.5);

%write code to take POM and DOC and convert from mg/L to uMol/L (= uMol/kg)

n=6; %DOC
June(JuneS,n)=June(JuneS,n)./1000./12.011./10^-6;
August(AugS,n)=August(AugS,n)./1000./12.011./10^-6;
October(OctS,n)=October(OctS,n)./1000./12.011./10^-6;

n=5; %POM
June(JuneS,n)=June(JuneS,n)./1000./12.011./10^-6;
August(AugS,n)=August(AugS,n)./1000./12.011./10^-6;
October(OctS,n)=October(OctS,n)./1000./12.011./10^-6;

n=7; %DIC
%June(JuneS,n)=June(JuneS,n)./1000./12.011./10^-6;
August(AugS,n)=August(AugS,n)./1000./12.011./10^-6;
October(OctS,n)=October(OctS,n)./1000./12.011./10^-6;



%% calculate average and st dev DOC
n=6;
JuneMouthA=mean(June([3,5,6,7,8],n));
AugMouthA=mean(August([1,3,4,5,6],n));
OctMouthA=mean(October([1,2,3,4,5],n));
JuneMouthSD=std(June([3,5,6,7,8],n));
AugMouthSD=std(August([1,3,4,5,6],n));
OctMouthSD=std(October([1,2,3,4,5],n));
DOMmouth=[JuneMouthA AugMouthA OctMouthA; JuneMouthSD AugMouthSD OctMouthSD];
DOMmouthmg=DOMmouth.*1000.*12.011.*10^-6;

JuneOpenA=mean(June([1,10,11,12,14],n));
AugOpenA=mean(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenA=mean(October([6,7,8,9,10,11,12,13,15,16],n));
JuneOpenSD=std(June([1,10,11,12,14],n));
AugOpenSD=std(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenSD=std(October([6,7,8,9,10,11,12,13,15,16],n));
DOMOpen=[JuneOpenA AugOpenA OctOpenA; JuneOpenSD AugOpenSD OctOpenSD];
DOMOpenmg=DOMOpen.*1000.*12.011.*10^-6;

JuneAllA=mean(June(JuneS,n));
AugAllA=mean(August(AugS,n));
OctAllA=mean(October(OctS,n));
JuneAllSD=std(June(JuneS,n));
AugAllSD=std(August(AugS,n));
OctAllSD=std(October(OctS,n));
DOMAll=[JuneAllA AugAllA OctAllA; JuneAllSD AugAllSD OctAllSD];
DOMAllmg=DOMAll.*1000.*12.011.*10^-6;

%% calculate average and st dev DIC
n=7;
JuneMouthA=mean(June([3,5,6,7,8],n));
AugMouthA=mean(August([1,3,4,5,6],n));
OctMouthA=mean(October([1,2,3,4,5],n));
JuneMouthSD=std(June([3,5,6,7,8],n));
AugMouthSD=std(August([1,3,4,5,6],n));
OctMouthSD=std(October([1,2,3,4,5],n));
DICmouth=[JuneMouthA AugMouthA OctMouthA; JuneMouthSD AugMouthSD OctMouthSD];
DICmouthmg=DICmouth.*1000.*12.011.*10^-6;

JuneOpenA=mean(June([1,10,11,12,14],n));
AugOpenA=mean(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenA=mean(October([6,7,8,9,10,11,12,13,15,16],n));
JuneOpenSD=std(June([1,10,11,12,14],n));
AugOpenSD=std(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenSD=std(October([6,7,8,9,10,11,12,13,15,16],n));
DICOpen=[JuneOpenA AugOpenA OctOpenA; JuneOpenSD AugOpenSD OctOpenSD];
DICOpenmg=DICOpen.*1000.*12.011.*10^-6;

JuneAllA=mean(June(JuneS,n));
AugAllA=mean(August(AugS,n));
OctAllA=mean(October(OctS,n));
JuneAllSD=std(June(JuneS,n));
AugAllSD=std(August(AugS,n));
OctAllSD=std(October(OctS,n));
DICAll=[JuneAllA AugAllA OctAllA; JuneAllSD AugAllSD OctAllSD];
DICAllmg=DICAll.*1000.*12.011.*10^-6;

%% calculate average and st dev POC
n=5;
JuneMouthA=mean(June([3,5,6,7,8],n));
AugMouthA=mean(August([1,3,4,5,6],n));
OctMouthA=mean(October([1,2,3,4,5],n));
JuneMouthSD=std(June([3,5,6,7,8],n));
AugMouthSD=std(August([1,3,4,5,6],n));
OctMouthSD=std(October([1,2,3,4,5],n));
POCmouth=[JuneMouthA AugMouthA OctMouthA; JuneMouthSD AugMouthSD OctMouthSD];
POCmouthmg=POCmouth.*1000.*12.011.*10^-6;

JuneOpenA=mean(June([1,10,11,12,14],n));
AugOpenA=mean(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenA=mean(October([6,7,8,9,10,11,12,13,15,16],n));
JuneOpenSD=std(June([1,10,11,12,14],n));
AugOpenSD=std(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenSD=std(October([6,7,8,9,10,11,12,13,15,16],n));
POCOpen=[JuneOpenA AugOpenA OctOpenA; JuneOpenSD AugOpenSD OctOpenSD];
POCOpenmg=POCOpen.*1000.*12.011.*10^-6;

JuneAllA=mean(June(JuneS,n));
AugAllA=mean(August(AugS,n));
OctAllA=mean(October(OctS,n));
JuneAllSD=std(June(JuneS,n));
AugAllSD=std(August(AugS,n));
OctAllSD=std(October(OctS,n));
POCAll=[JuneAllA AugAllA OctAllA; JuneAllSD AugAllSD OctAllSD];
POCAllmg=POCAll.*1000.*12.011.*10^-6;

%% calculate average and st dev percent organic
n=4;
JuneMouthA=mean(June([3,5,6,7,8],n));
AugMouthA=mean(August([1,3,4,5,6],n));
OctMouthA=mean(October([1,2,3,4,5],n));
JuneMouthSD=std(June([3,5,6,7,8],n));
AugMouthSD=std(August([1,3,4,5,6],n));
OctMouthSD=std(October([1,2,3,4,5],n));
Pcarmouth=[JuneMouthA AugMouthA OctMouthA; JuneMouthSD AugMouthSD OctMouthSD];

JuneOpenA=mean(June([1,10,11,12,14],n));
AugOpenA=mean(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenA=mean(October([6,7,8,9,10,11,12,13,15,16],n));
JuneOpenSD=std(June([1,10,11,12,14],n));
AugOpenSD=std(August([8,10,11,12,13,15,17,19,20,22,23],n));
OctOpenSD=std(October([6,7,8,9,10,11,12,13,15,16],n));
PcarOpen=[JuneOpenA AugOpenA OctOpenA; JuneOpenSD AugOpenSD OctOpenSD];

JuneAllA=mean(June(JuneS,n));
AugAllA=mean(August(AugS,n));
OctAllA=mean(October(OctS,n));
JuneAllSD=std(June(JuneS,n));
AugAllSD=std(August(AugS,n));
OctAllSD=std(October(OctS,n));
PcarAll=[JuneAllA AugAllA OctAllA; JuneAllSD AugAllSD OctAllSD];

%% calculate average and st dev total carbon
TotJune=June(:,5)+June(:,6)+June(:,7);
TotAug=August(:,5)+August(:,6)+August(:,7);
TotOct=October(:,5)+October(:,6)+October(:,7);

JuneMouthA=mean(TotJune([3,5,6,7,8]));
AugMouthA=mean(TotAug([1,3,4,5,6]));
OctMouthA=mean(TotOct([1,2,3,4,5]));
JuneMouthSD=std(TotJune([3,5,6,7,8]));
AugMouthSD=std(TotAug([1,3,4,5,6]));
OctMouthSD=std(TotOct([1,2,3,4,5]));
TotCmouth=[JuneMouthA AugMouthA OctMouthA; JuneMouthSD AugMouthSD OctMouthSD];

JuneOpenA=mean(TotJune([1,10,11,12,14]));
AugOpenA=mean(TotAug([8,10,11,12,13,15,17,19,20,22,23]));
OctOpenA=mean(TotOct([6,7,8,9,10,11,12,13,15,16]));
JuneOpenSD=std(TotJune([1,10,11,12,14]));
AugOpenSD=std(TotAug([8,10,11,12,13,15,17,19,20,22,23]));
OctOpenSD=std(TotOct([6,7,8,9,10,11,12,13,15,16]));
TotCOpen=[JuneOpenA AugOpenA OctOpenA; JuneOpenSD AugOpenSD OctOpenSD];

JuneAllA=mean(TotJune([3,5,6,7,8,1,10,11,12,14]));
AugAllA=mean(TotAug([1,3,4,5,6,8,10,11,12,13,15,17,19,20,22,23]));
OctAllA=mean(TotOct([1,2,3,4,5,6,7,8,9,10,11,12,13,15,16]));
JuneAllSD=std(TotJune([3,5,6,7,8,1,10,11,12,14]));
AugAllSD=std(TotAug([1,3,4,5,6,8,10,11,12,13,15,17,19,20,22,23]));
OctAllSD=std(TotOct([1,2,3,4,5,6,7,8,9,10,11,12,13,15,16]));
TotCAll=[JuneAllA AugAllA OctAllA; JuneAllSD AugAllSD OctAllSD];
