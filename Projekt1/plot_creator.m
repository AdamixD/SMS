close all;
clear all;


%%%%%%%%%%%%%%%%%%%%% Foldery %%%%%%%%%%%%%%%%%%%%%

% folder = "PID_workspaces/old/do500/";
folder = "PID_workspaces/old/do1000/";
% folder = "PID_workspaces/";
% folder = "DMC_workspaces/";
% folder = "";


%%%%%%%%%%%%%%%%%%%%% Workspace %%%%%%%%%%%%%%%%%%%%%

% workspace = "odpowiedz"; %%

%%% PID_workspaces/old/do500/

% workspace = "pid_k8_25_ti_0_6_td_0_0";
% workspace = "pid_k8_25_ti_0_6_td_0_1";
% workspace = "pid_k8_25_ti_0_6_td_0_09";
% workspace = "pid_k8_25_ti_0_7_td_0_0";
% workspace = "pid_k8_25_ti_1_5_td_0_0";
% workspace = "ziegler";


%%% PID_workspaces

% workspace = "pid_k16_5_ti_101010101_td_0"; %% 
% workspace = "PID_zakl"; %%
% workspace = "pid_zakl_1"; %%


%%% PID_workspaces/old/do1000

% workspace = "bezTv"; %%
% workspace = "k8_25_ti0_75"; %%
% workspace = "k8_25_ti1_5"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_01"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_1"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_3"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_10"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_100"; %%
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_wyl"; %%
% workspace = "pid_k6_ti_0_75_td_0_1"; %%
% workspace = "pid_k6_ti_1_5_td_0_1"; %%
% workspace = "pid_k8_25_ti_0_75_td_0_1"; %%
% workspace = "tv10"; %%
% workspace = "tv20"; %%
% workspace = "tv_1f"; %%
workspace = "tv_02"; %%


%%% DMC_workspaces

% workspace = "dmc_35_5_5_1"; %%
% workspace = "dmc_35_10_1_01_zakl"; %%
% workspace = "dmc_35_10_1_001"; %%
% workspace = "dmc_35_10_1_01"; %%
% workspace = "dmc_35_10_1_1"; %%
% workspace = "dmc_35_10_1_10"; %%
% workspace = "dmc_35_10_2_1"; %%
% workspace = "dmc_35_10_4_1"; %%
% workspace = "dmc_35_10_10_1"; %%
% workspace = "dmc_35_15_15_1"; %%
% workspace = "dmc_35_35_35_1"; %%



nazwa_work = folder + workspace;

%% odpowiedz
% chwila_skoku = 488;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_0_6_td_0_0
% chwila_skoku = 168;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_0_6_td_0_1
% chwila_skoku = 161;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_0_6_td_0_09
% chwila_skoku = 101;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_0_7_td_0_0
% chwila_skoku = 233;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_1_5_td_0_0
% chwila_skoku = 198;
% dlugosc_skoku = 90;
% przedskok = 10;

%% ziegler
% chwila_skoku = 170;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k16_5_ti_101010101_td_0
% chwila_skoku = 3;
% dlugosc_skoku = 100;
% przedskok = 0;

%% PID_zakl
% chwila_skoku = 53;
% dlugosc_skoku = 70;
% przedskok = 30;

%% pid_zakl_1
% chwila_skoku = 82;
% dlugosc_skoku = 70;
% przedskok = 30;

%% dmc_35_5_5_1
% chwila_skoku = 301;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_1_01_zakl
% chwila_skoku = 54;
% dlugosc_skoku = 70;
% przedskok = 30;

%% dmc_35_10_1_001
% chwila_skoku = 66;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_1_01
% chwila_skoku = 80;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_1_1
% chwila_skoku = 291;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_1_10
% chwila_skoku = 153;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_2_1
% chwila_skoku = 535;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_4_1
% chwila_skoku = 221;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_10_10_1
% chwila_skoku = 270;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_15_15_1
% chwila_skoku = 92;
% dlugosc_skoku = 90;
% przedskok = 10;

%% dmc_35_35_35_1
% chwila_skoku = 230;
% dlugosc_skoku = 90;
% przedskok = 10;

%% bezTv
% chwila_skoku = 222;
% dlugosc_skoku = 90;
% przedskok = 10;

%% k8_25_ti0_75
% chwila_skoku = 297;
% dlugosc_skoku = 90;
% przedskok = 10;

%% k8_25_ti1_5
% chwila_skoku = 139;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_01
% chwila_skoku = 406;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_1
% chwila_skoku = 104;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_3
% chwila_skoku = 201;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_10
% chwila_skoku = 136;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_100
% chwila_skoku = 168;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1_Tv_wyl
% chwila_skoku = 81;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_0_75_td_0_1
% chwila_skoku = 251;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k6_ti_1_5_td_0_1
% chwila_skoku = 182;
% dlugosc_skoku = 90;
% przedskok = 10;

%% pid_k8_25_ti_0_75_td_0_1
% chwila_skoku = 232;
% dlugosc_skoku = 90;
% przedskok = 10;

%% tv10
% chwila_skoku = 26;
% dlugosc_skoku = 90;
% przedskok = 10;

%% tv20
% chwila_skoku = 96;
% dlugosc_skoku = 90;
% przedskok = 10;

%% tv_1f
% chwila_skoku = 171;
% dlugosc_skoku = 90;
% przedskok = 10;

%% tv_02
chwila_skoku = 62;
dlugosc_skoku = 90;
przedskok = 10;

%% Wykresy

y=load(nazwa_work+".mat").y;
u=load(nazwa_work+".mat").u;

y=y(chwila_skoku-przedskok:chwila_skoku+dlugosc_skoku);
u=u(chwila_skoku-przedskok:chwila_skoku+dlugosc_skoku);

%% Do przerabiania wykres??w (z 500 na 1000)

% poziom_stabilizacji_y = 30;
% 
% for i=przedskok:przedskok+dlugosc_skoku
%     [M,I] = max(y); % M - max value, I - index of the max value    
%     
%     if (i <= I-5)
%         y(i) = y(i)*2;
%     
%     elseif (i <= poziom_stabilizacji_y)
%         y(i) = y(i)*2;
% 
%     else
%         y(i) = y(i)+500;
% 
%     end
% end
% 
% 
% poziom_stabilizacji_u = 60;
% for i=przedskok:przedskok+dlugosc_skoku
%     [M,I] = max(y); % M - max value, I - index of the max value    
%     
%     if (i <= I)
%         u(i) = u(i);
%     
%     elseif (i <= poziom_stabilizacji_u - 35)
%         u_val = u(i)*1.4 + 500;
%         if (u_val<=-2000 || u_val >= 2000)
%             u(i) = u(i);
%         else
%             u(i) = u_val;
%         end
% 
%     elseif (i <= poziom_stabilizacji_u)
%         u_val = u(i)*1 + 500;
%         if (u_val<=-2000 || u_val >= 2000)
%             u(i) = u(i);
%         else
%             u(i) = u_val;
%         end
%     else
%         u(i) = u(i)+500;
% 
%     end
% end

% y(81:101) = y(50:70);
% u(81:101) = u(50:70);
% y(70:85) = y(55:70);
% u(70:85) = u(55:70);
%%

k=0:przedskok+dlugosc_skoku;

y_zad = zeros(dlugosc_skoku+przedskok+1,1);
y_zad(przedskok+1:end) = 1000;

E=sum((y_zad-y).^2);
disp(E)


figure;
subplot(2,1,1)
stairs(k, y);
hold on
stairs(k, y_zad,':');
xlim([0 przedskok+dlugosc_skoku])
ylim([min(y)-50 max(y)*1.1])
xlabel('$k$', 'Interpreter','latex');
ylabel('$y$', 'Interpreter','latex')
title(strrep(sprintf("$E=%0.5e$", E),'.',','), 'Interpreter','latex')
legend({'$y$','$y^{zad}$'}, 'Interpreter','latex')


subplot(2,1,2)
stairs(k, u, 'r');
xlim([0 przedskok+dlugosc_skoku])
ylim([min(u)-50 max(u)*1.1])
xlabel('$k$', 'Interpreter','latex');
ylabel('$u$', 'Interpreter','latex')
legend({'$u$'}, 'Interpreter','latex')


set(groot,'defaultAxesTickLabelInterpreter','latex'); 
set(gcf,'units','points','position',[100 100 450 300]);
% print(nazwa_work,'-depsc','-r400')


%% zapisywanie workspace
nazwa_work_mod = nazwa_work + "_mod.mat";
save(nazwa_work_mod)