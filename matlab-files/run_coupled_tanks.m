
%%DCA-CT-UFRN
% Desenvolvido por: Eng. Msc. Jean Mário Moreira de Lima
% Codigo base para integracao do modelo da planta no simulink
% com o simulador dos tanques
head()
%% IP e PORTA do Simulador
ip = '192.168.1.37';
porta = 20081;

%Parametros Iniciais
volts = 0;
L1 = 0;
L2 = 0;

%% Abrindo a o modelo no simulink
open_system('coupled_tanks_sim');  
set_param(gcs,'SimulationCommand','start')

%% Conecta ao simulador

%tempo de duração da operação em segundos
simulation_time = 30;
%conecta
conn = connectSimulator(ip,porta);
%parametros iniciais
step = 1;
    
    
if(conn.Status)
     disp("> Conectado!");
end

%% Rodando Simulação

while(step < simulation_time*4)
    try
        %escreve valor volts e ler vetor L, representando L1 e L2,
        %respecitvamente.
        L = simulator(conn,volts);
        L1 = L(1);
        L2 = L(2);
        %coletando sinal de entrada do subsystem - run-time object 
        rtoTA = get_param('coupled_tanks_sim/TanquesAcoplados','RuntimeObject');
        %volts recebe o sinal de entrada do sistema Tanques Acoplados
        volts = rtoTA.InputPort(1).dataasdouble;
        set_param(gcs,'SimulationCommand','update')
        step = step + 1;
    catch
        disp("Algum erro ocorreu ou a simulação foi parada! Saindo...");
        closeConnection(conn)
        set_param(gcs,'SimulationCommand','stop')
        break;
    end
end
closeConnection(conn)
set_param(gcs,'SimulationCommand','stop')