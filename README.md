# simulador-tanques-acoplados-app

## Simulador de Tanques Acoplados Quaser com driver de comunicação via Simulink - MATLAB.

O sistema de tanques acoplados Quanser é uma planta didática utilizada nas disciplinas de Controle de Sistemas ofertadas pelo [Departamento de Engenharia de Computação e Automação](https://www.dca.ufrn.br) da [UFRN](https://www.ufrn.br). A implementação das rotidas é feita via Simulink. No Modelo simulado dos tanques, a implementação das rotinas de controle também é feita via Simulink da mesma forma que é estabelecida para o sistema real.

Para construção do simulador, utilizou-se o modelo matemático da planta com adição de ruído. Além disso, um modelo baseado em redes neurais artificiais (RNA) também foi construído para inferência da dinâmica da planta. Os dois modos ficam disponíveis. O modelo matemático é o padrão de funcionamento. O modelo baseado em RNA é usado quando o "checkbox" *Usar RNA* é ativado.

#### Simulador dos Tanques

![Figure](simulador-app.png)

### Passos Para Utilizar

1. Instale o app .apk que se encontra na pasta *simulador-app* no seu dispositivo Android.
2. Executar o app. A simulação informa o endereço de IP e a porta utilizada para comunicação. 
3. Execute o MATLAB. Abra todos os arquivos .m da pasta *matlab-files*.
4. No script *run_coupled_tanks*, ajustar o campo *ip* para o IP que aparece no app em execução.
5. No script *run_coupled_tanks*, ajustar o campo *simulation_time* para o tempo de execução, em segundos, desejado.
6. Executa o script: *run_coupled_tanks.m*. Para que o script funcione de maneira adequada, é necessário executar todos os outros arquivos .m antes. 
7. A simulação será iniciada.

#### Planta Base no Simulink

![Figure](planta-base-simulink.png)

### Para realizar incrementos na planta base

1. Pause a simulação no MATLAB se estiver em execução.
2. Na simulação *coupled_tanks_sim.slx*, adicione elementos como ganhos, somadores, bloco PID, etc.
3. Salve a simulação.
4. Execute o script *run_coupled_tanks.m* novamente.

#### **OBS**: Não alterar os blocos da simulação base presentes no *subsystem* TanquesAcoplados.

Qualquer dúvida ou erro encontrado, por favor, entrar em contato! <jean@dca.ufrn.br>