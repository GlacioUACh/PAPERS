NumStacksPerGroup = 3; 
NumGroupsPerAxis = 5; 
NumStackElements = 0;
% labels to use on tick marks for groups 
groupLabels = {'Bello';'San Francisco';'Mocho-Choshuenco';'Exploradores';'Tyndall'}; 

%% stack data without modifications
%stackData(:,:,1)=[B_meltrate_C B_meltrate_B B_meltrate_COS; SF_meltrate_C SF_meltrate_B SF_meltrate_COS; MC_meltrate_C MC_meltrate_B MC_meltrate_COS; E_meltrate_C E_meltrate_B E_meltrate_COS; T_meltrate_C T_meltrate_B T_meltrate_COS];
% stackData(:,:,1)=[B_ES_C B_ES_B B_ES_COS; P_ES_C P_ES_B P_ES_COS ; SF_ES_C SF_ES_B SF_ES_COS; MC_ES_C MC_ES_B MC_ES_COS; E_ES_C E_ES_B E_ES_COS; T_ES_C T_ES_B T_ES_COS ; T2_ES_C T2_ES_B T2_ES_COS];
% stackData(:,:,2)=[B_EL_C B_EL_B B_EL_COS; P_EL_C P_EL_B P_EL_COS ; SF_EL_C SF_EL_B SF_EL_COS; MC_EL_C MC_EL_B MC_EL_COS; E_EL_C E_EL_B E_EL_COS; T_ES_C T_ES_B T_ES_COS ; T2_EL_C T2_EL_B T2_EL_COS];
% stackData(:,:,3)=[B_EH_C B_EH_B B_EH_COS; P_EH_C P_EH_B P_EH_COS ; SF_EH_C SF_EH_B SF_EH_COS; MC_EH_C MC_EH_B MC_EH_COS; E_EH_C E_EH_B E_EH_COS; T_ES_C T_ES_B T_ES_COS ;  T2_EH_C T2_EH_B T2_EH_COS];
% stackData(:,:,4)=[B_EE_C B_EE_B B_EE_COS; P_EE_C P_EE_B P_EE_COS ; SF_EE_C SF_EE_B SF_EE_COS; MC_EE_C MC_EE_B MC_EE_COS; E_EE_C E_EE_B E_EE_COS; T_ES_C T_ES_B T_ES_COS ; T2_EE_C T2_EE_B T2_EE_COS];

% %% positive stack data
 stackData(:,:,1)=[B_ES_C B_ES_B B_ES_COS; SF_ES_C SF_ES_B SF_ES_COS; MC_ES_C MC_ES_B MC_ES_COS; E_ES_C E_ES_B E_ES_COS; T_ES_C T_ES_B T_ES_COS];
 stackData(:,:,2)=[0 0 0; 0 0 0;0 0 0; 0 0 0;0 0 0];
 stackData(:,:,3)=[B_EH_C B_EH_B B_EH_COS; SF_EH_C SF_EH_B SF_EH_COS; MC_EH_C MC_EH_B MC_EH_COS; E_EH_C E_EH_B E_EH_COS; T_ES_C T_ES_B T_ES_COS];
 stackData(:,:,4)=[B_EH_C 0 0 ; SF_EH_C 0 0 ;0 0 MC_EE_COS; E_EE_C E_EE_B E_EE_COS; T_EE_C T_EE_B T_EE_COS];

%% negative_stacked
stackData2(:,:,1)=[0 0 0; 0 0 0;0 0 0; 0 0 0;0 0 0];
stackData2(:,:,2)=[B_EL_C B_EL_B B_EL_COS; SF_EL_C SF_EL_B SF_EL_COS; MC_EL_C MC_EL_B MC_EL_COS; E_EL_C E_EL_B E_EL_COS; T_EL_C T_EL_B T_EL_COS];
stackData2(:,:,3)=[0 0 0; 0 0 0;0 0 0; 0 0 0;0 0 0];
stackData2(:,:,4)=[0 B_EE_B B_EE_COS; 0 SF_EE_B SF_EE_COS; MC_EE_C MC_EE_B 0; 0 0 0; 0 0 0];

%% Positive
plotBarStackGroups(stackData, groupLabels); 
set(gca,'FontSize',18) 
set(gcf,'Position',[100 100 720 650]) 
grid on 
set(gca,'Layer','top') % put grid lines on top of stacks

%% Negative
plotBarStackGroups_with_negative_values(stackData,stackData2, groupLabels); 
set(gca,'FontSize',18) 
set(gcf,'Position',[100 100 720 650]) 
grid on 
set(gca,'Layer','top') % put grid lines on top of stacks