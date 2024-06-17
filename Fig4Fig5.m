
%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 186);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["VarName1", "SampleID", "Year", "Month", "Day", "Time", "Site", "SampleDepth_m", "Lat_D", "Lat_M", "Lat", "Lon_D", "Lon_M", "Lon", "distance_km", "Alkalinity_mgL", "Organiccontent_", "ConcPOM_mgL", "NPOC_mgL", "DIC", "TN_mgL", "DON_umolL", "TC_mgL", "Microcystin", "Chlorophylla_L", "NitrateNO2_olL", "Ammonium_olL", "Nitrite_olL", "DRP_olL", "Silicate_olL", "Nitrate_olL", "TP_olL", "TKN_olL", "TN_olL", "TNTP_molar", "WaterDepth_m", "Greenalgaechla_L", "Bluegreenalgaechla_L", "Diatomschla_L", "Cryptophyteschla_L", "abs254", "SUVA254", "BIX", "HIX", "FI", "MaxEm", "RamanArea", "Date_MMDDYYYY", "Time_HHmmss", "Time_FractSec", "SiteName", "Depthm", "Matchingdepth", "ChlorophyllRFU", "Condcm", "fDOMQSU", "fDOMRFU", "nLFCondcm", "ODOpercsat", "ODOperclocal", "ODOmgL", "Pressurepsia", "Salpsu", "SpCondcm", "TALPCRFU", "TDSmgL", "TurbidityFNU", "TSSmgL", "WiperPositionvolt", "pH", "pHmV", "TempC", "VerticalPositionm", "BatteryV", "incorrectpH", "pHadjusted", "Datetime", "month", "Unnamed0", "par1", "par1_type", "par2", "par2_type", "alkalinity", "dic", "opt_k_bisulfate", "opt_k_carbonic", "opt_k_fluoride", "opt_total_borate", "opt_gas_constant", "opt_pH_scale", "opt_buffers_mode", "salinity", "temperature", "pressure", "total_ammonia", "total_borate", "total_calcium", "total_fluoride", "total_phosphate", "total_silicate", "total_sulfate", "total_sulfide", "peng_correction", "gas_constant", "total_alpha", "total_beta", "pressure_atmosphere", "pressure_atmosphere_out", "pCO2", "fCO2", "bicarbonate", "carbonate", "aqueous_CO2", "xCO2", "alkalinity_borate", "hydroxide", "alkalinity_phosphate", "alkalinity_silicate", "alkalinity_ammonia", "alkalinity_sulfide", "hydrogen_free", "revelle_factor", "saturation_calcite", "saturation_aragonite", "pH_total", "pH_sws", "pH_free", "pH_nbs", "gamma_dic", "beta_dic", "omega_dic", "gamma_alk", "beta_alk", "omega_alk", "isocapnic_quotient", "isocapnic_quotient_approx", "psi", "substrate_inhibitor_ratio", "alkalinity_alpha", "alkalinity_beta", "HCO3", "CO3", "CO2", "BOH4", "BOH3", "OH", "Hfree", "H3PO4", "H2PO4", "HPO4", "PO4", "H3SiO4", "H4SiO4", "NH3", "NH4", "HS", "H2S", "HSO4", "SO4", "HF", "F", "alpha", "alphaH", "beta", "betaH", "k_CO2", "k_carbonic_1", "k_carbonic_2", "k_water", "k_borate", "k_bisulfate", "k_fluoride", "k_phosphoric_1", "k_phosphoric_2", "k_phosphoric_3", "k_silicate", "k_ammonia", "k_sulfide", "k_calcite", "k_aragonite", "fugacity_factor", "vp_factor", "fH", "k_alpha", "k_beta","rwf"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "string", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "datetime", "datetime", "double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "datetime", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string", "double", "double", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Time", "omega_dic", "omega_alk"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Time", "Site", "SiteName", "omega_dic", "omega_alk"], "EmptyFieldRule", "auto");
opts = setvaropts(opts, "Date_MMDDYYYY", "InputFormat", "MM/dd/yyyy");
opts = setvaropts(opts, "Time_HHmmss", "InputFormat", "HH:mm:ss");
opts = setvaropts(opts, "Datetime", "InputFormat", "MM/dd/yyyy HH:mm");
opts = setvaropts(opts, ["SampleID", "Microcystin"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["SampleID", "Microcystin"], "ThousandsSeparator", ",");

% Import the data
owrc = readtable("/Users/gabor.40/Dropbox/Lake Erie Data/PaperFigures/owrcmasterdf.csv", opts);
clear owrcmasterdf

%% Clear temporary variables
clear opts

%% Find rows for June, August, October surface samples
June = find(owrc.Month==6 & owrc.SampleDepth_m==0.5);
Aug = find(owrc.Month==8 & owrc.SampleDepth_m==0.5);
Oct = find(owrc.Month==10 & owrc.SampleDepth_m==0.5);

%% write code to take POM and DOC and convert from mg/L to uMol/L

owrc.DOC=owrc.NPOC_mgL./1000./12.011./10^-6;
owrc.POC=owrc.ConcPOM_mgL./1000./12.011./10^-6;
owrc.DIC2=owrc.DIC./1000./12.011./10^-6;
owrc.DIC2(find(owrc.Month==6))=owrc.dic(find(owrc.Month==6)); %combine modeled DIC (June) wiht measured (Aug, Oct)

%% Graph of Carbon over time period
figure(5)
subplot(3,1,1)
a=area(owrc.distance_km(June),[owrc.DIC2(June)';owrc.DOC(June)';owrc.POC(June)']');
xlabel('km from Maumee River')
ylabel ({'Carbon','(\mu Mol C/kg H_2O)'})
legend({'DIC','DOC','POC'})
title('June','Position',[25 4000 0])
ylim([0 5000])
xlim([0 55])
a(1).FaceColor='#a6cee3';
a(2).FaceColor='#33a02c';
a(3).FaceColor='#1f78b4';
grid on

subplot(3,1,2)
a=area(owrc.distance_km(Aug),[owrc.DIC2(Aug)';owrc.DOC(Aug)';owrc.POC(Aug)']');
xlabel('km from Maumee River')
ylabel ({'Carbon','(\mu Mol C/kg H_2O)'})
%legend({'DIC','DOC','POC'})
title('August','Position',[25 4000 0])
ylim([0 5000])
xlim([0 55])
a(1).FaceColor='#a6cee3';
a(2).FaceColor='#33a02c';
a(3).FaceColor='#1f78b4';
grid on


subplot(3,1,3)
a=area(owrc.distance_km(Oct),[owrc.DIC2(Oct)';owrc.DOC(Oct)';owrc.POC(Oct)']');
xlabel('km from Maumee River')
ylabel ({'Carbon','(\mu Mol C/kg H_2O)'})
%legend({'DIC','DOC','POC'})
title('October','Position',[25 4000 0])
ylim([0 5000])
xlim([0 55])
a(1).FaceColor='#a6cee3';
a(2).FaceColor='#33a02c';
a(3).FaceColor='#1f78b4';
grid on

%% Graph of all algae over time
figure(6)
subplot(3,1,1)
a=area(owrc.distance_km(June),[owrc.Bluegreenalgaechla_L(June)';owrc.Diatomschla_L(June)';owrc.Greenalgaechla_L(June)';owrc.Cryptophyteschla_L(June)']');
xlabel('km from Maumee River')
ylabel ('Chl a (\mug/L)')
title('June','Position',[25 90 0])
xlim([0 55])
 ylim([0 110])
a(1).FaceColor='#004d40';
a(2).FaceColor='#4e93d0';
a(3).FaceColor='#ce4678';
a(4).FaceColor='#ffc107';
legend({'Cyanobacteria','Diatoms','Green Algae','Cryptophytes'})
grid on


subplot(3,1,2)
a=area(owrc.distance_km(Aug),[owrc.Bluegreenalgaechla_L(Aug)';owrc.Diatomschla_L(Aug)';owrc.Greenalgaechla_L(Aug)';owrc.Cryptophyteschla_L(Aug)']');
xlabel('km from Maumee River')
ylabel ('Chl a (\mug/L)')
title('August','Position',[25 90 0])
xlim([0 55])
ylim([0 110])
a(1).FaceColor='#004d40';
a(2).FaceColor='#4e93d0';
a(3).FaceColor='#ce4678';
a(4).FaceColor='#ffc107';
grid on


subplot(3,1,3)
a=area(owrc.distance_km(Oct),[owrc.Bluegreenalgaechla_L(Oct)';owrc.Diatomschla_L(Oct)';owrc.Greenalgaechla_L(Oct)';owrc.Cryptophyteschla_L(Oct)']');
xlabel('km from Maumee River')
ylabel ('Chl a (\mug/L)')
title('October','Position',[25 14 0])
xlim([0 55])
ylim([0 110])
a(1).FaceColor='#004d40';
a(2).FaceColor='#4e93d0';
a(3).FaceColor='#ce4678';
a(4).FaceColor='#ffc107';
grid on
