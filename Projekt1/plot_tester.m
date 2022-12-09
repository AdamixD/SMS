% close all;
clear all;


%%%%%%%%%%%%%%%%%%%%% Foldery %%%%%%%%%%%%%%%%%%%%%

% folder = "PID_workspaces/old/do500/";
% folder = "PID_workspaces/old/do1000/";
% folder = "PID_workspaces/";
folder = "DMC_workspaces/";
% folder = "";


%%%%%%%%%%%%%%%%%%%%% Workspace %%%%%%%%%%%%%%%%%%%%%

% workspace = "odpowiedz"; %% ok

%%% PID_workspaces/old/do500

% workspace = "pid_k8_25_ti_0_4_td_0_0"; %%%%% - nieużywany
% workspace = "pid_k8_25_ti_0_6_td_0_0"; %% ok
% workspace = "pid_k8_25_ti_0_6_td_0_1"; %% ok
% workspace = "pid_k8_25_ti_0_6_td_0_09"; %% ok
% workspace = "pid_k8_25_ti_0_7_td_0_0"; %% ok
% workspace = "pid_k8_25_ti_1_5_td_0_0"; %% ok
% workspace = "pid_k8_25_ti_1_5_td_0_05"; %%%%% - nieużywany
% workspace = "ziegler"; %% ok


%%% PID_workspaces

% workspace = "pid_k8_25_ti_0_6_td_0_0_mod"; %% ok
% workspace = "pid_k8_25_ti_0_6_td_0_1_mod"; %% ok
% workspace = "pid_k8_25_ti_0_6_td_0_09_mod"; %% ok
% workspace = "pid_k8_25_ti_0_7_td_0_0_mod"; %% ok
% workspace = "pid_k8_25_ti_1_5_td_0_0_mod"; %% ok
% workspace = "ziegler_mod"; %% ok
% workspace = "pid_k16_5_ti_101010101_td_0"; %% ok
% workspace = "PID_zakl"; %% ok
% workspace = "pid_zakl_1"; %% ok


%%% PID_workspaces/old/do1000

% workspace = "bezTv"; %% ok
% workspace = "k8_25_ti0_75"; %% ok
% workspace = "k8_25_ti1_5"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_01"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_1"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_3"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_10"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_100"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_wyl"; %% ok
% workspace = "pid_k6_ti_0_75_td_0_1"; %% ok
% workspace = "pid_k6_ti_1_5_td_0_1"; %% ok
% workspace = "pid_k8_25_ti_0_75_td_0_1"; %% ok
% workspace = "tv10"; %% ok
% workspace = "tv20"; %% ok
% workspace = "tv_1f"; %% ok
% workspace = "tv_02"; %% ok


% workspace = "bezTv_mod"; 
% workspace = "k8_25_ti0_75_mod"; 
% workspace = "k8_25_ti1_5_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_01_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_1_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_3_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_10_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_100_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_Tv_wyl_mod"; 
% workspace = "pid_k6_ti_0_75_td_0_1_mod";
% workspace = "pid_k6_ti_1_5_td_0_1_mod"; 
% workspace = "pid_k8_25_ti_0_75_td_0_1_mod"; 
% workspace = "tv10_mod"; 
% workspace = "tv20_mod"; 
% workspace = "tv_1f_mod"; 
% workspace = "tv_02_mod"; 


%%% DMC_workspaces

% workspace = "dmc_35_5_5_1"; %% ok
% workspace = "dmc_35_10_1_01_zakl"; %% ok
% workspace = "dmc_35_10_1_001"; %% ok
% workspace = "dmc_35_10_1_01"; %% ok
% workspace = "dmc_35_10_1_1"; %% ok
% workspace = "dmc_35_10_1_10"; %% ok
% workspace = "dmc_35_10_2_1"; %% ok
% workspace = "dmc_35_10_4_1"; %% ok
% workspace = "dmc_35_10_10_1"; %% ok
% workspace = "dmc_35_15_15_1"; %% ok
% workspace = "dmc_35_35_35_1"; %% ok

% workspace = "dmc_35_5_5_1_mod"; 
% workspace = "dmc_35_10_1_01_zakl_mod";
% workspace = "dmc_35_10_1_001_mod";
% workspace = "dmc_35_10_1_01_mod"; 
% workspace = "dmc_35_10_1_1_mod"; 
% workspace = "dmc_35_10_1_10_mod"; 
% workspace = "dmc_35_10_2_1_mod"; 
% workspace = "dmc_35_10_4_1_mod"; 
% workspace = "dmc_35_10_10_1_mod"; 
% workspace = "dmc_35_15_15_1_mod"; 
workspace = "dmc_35_35_35_1_mod"; 



nazwa_work = folder + workspace;

%% Wizualizacja - Gdy potrzebujemy tylko podglądu 

% y=load(nazwa_work+".mat").y;
% u=load(nazwa_work+".mat").u;
% 
% 
% figure;
% subplot(2,1,1)
% stairs(y);
% ylim([min(y)-50 max(y)*1.1])
% xlabel('$k$', 'Interpreter','latex');
% ylabel('$y$', 'Interpreter','latex'),
% legend({'$y$','$y^{zad}$'}, 'Interpreter','latex')
% 
% 
% subplot(2,1,2)
% stairs(u, 'r');
% ylim([min(u)-50 max(u)*1.1])
% xlabel('$k$', 'Interpreter','latex');
% ylabel('$u$', 'Interpreter','latex')
% legend({'$u$'}, 'Interpreter','latex')
% 
% set(groot,'defaultAxesTickLabelInterpreter','latex'); 
% set(gcf,'units','points','position',[100 100 800 600]);


%% Wizualizacja - Gdy chcemy zobaczyć gotowy przetworzony wykres (i ewentualnie go zapisać)

y=load(nazwa_work+".mat").y;
u=load(nazwa_work+".mat").u;
y_zad=load(nazwa_work+".mat").y_zad;

%
E=sum((y_zad-y).^2);
disp(E)

k=0:length(y)-1;

figure;
subplot(2,1,1)
stairs(k, y);
hold on
stairs(k, y_zad,':');
ylim([min(y)-50 max(y)*1.1])
xlabel('$k$', 'Interpreter','latex');
ylabel('$y$', 'Interpreter','latex')
title(strrep(sprintf("$E=%0.5e$", E),'.',','), 'Interpreter','latex')
legend({'$y$','$y^{zad}$'}, 'Interpreter','latex')


subplot(2,1,2)
stairs(k, u, 'r');
ylim([min(u)-50 max(u)*1.1])
xlabel('$k$', 'Interpreter','latex');
ylabel('$u$', 'Interpreter','latex')
legend({'$u$'}, 'Interpreter','latex')


set(groot,'defaultAxesTickLabelInterpreter','latex'); 
set(gcf,'units','points','position',[100 100 450 300]);
% print(nazwa_work,'-depsc','-r400') % zapis do eps (żeby wykresy ładne były)