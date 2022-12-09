% close all;
clear all;


%%%%%%%%%%%%%%%%%%%%% Foldery %%%%%%%%%%%%%%%%%%%%%

% folder = "PID_workspaces/old/do500/";
% folder = "PID_workspaces/old/do1000/";
folder = "PID_workspaces/";
% folder = "DMC_workspaces/";



%%%%%%%%%%%%%%%%%%%%% Workspace %%%%%%%%%%%%%%%%%%%%%


%%% PID_workspaces/old/do500/

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
workspace = "ziegler_mod"; %% ok






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
print(nazwa_work,'-depsc','-r400') % zapis do eps (żeby wykresy ładne były)
