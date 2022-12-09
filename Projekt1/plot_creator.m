close all;
clear all;


%%%%%%%%%%%%%%%%%%%%% Foldery %%%%%%%%%%%%%%%%%%%%%

folder = "PID_workspaces/old/do500/";
% folder = "PID_workspaces/";
% folder = "DMC_workspaces/";


%%%%%%%%%%%%%%%%%%%%% Workspace %%%%%%%%%%%%%%%%%%%%%


%%% PID_workspaces/old/do500/

workspace = "pid_k8_25_ti_0_6_td_0_0";
% workspace = "pid_k8_25_ti_0_6_td_0_1";
% workspace = "pid_k8_25_ti_0_6_td_0_09";
% workspace = "pid_k8_25_ti_0_7_td_0_0";
% workspace = "pid_k8_25_ti_1_5_td_0_0";
% workspace = "ziegler";



%% pid_k8_25_ti_0_6_td_0_0
chwila_skoku = 168;
dlugosc_skoku = 90;
przedskok = 10;

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

%% Wykresy

nazwa_work = folder + workspace;

y=load(nazwa_work+".mat").y;
u=load(nazwa_work+".mat").u;

y=y(chwila_skoku-przedskok:chwila_skoku+dlugosc_skoku);
u=u(chwila_skoku-przedskok:chwila_skoku+dlugosc_skoku);

%% Do przerabiania wykresów (z 500 na 1000)

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

% y(81:101) = y(40:60);
% u(81:101) = u(40:60);
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
% nazwa_work_mod = "PID_workspaces/" + workspace + "_mod.mat";
% save(nazwa_work_mod)