function conn = connectSimulator(ip,porta)
    
    conn = tcpip(ip,porta,'NetworkRole','Client');  
    try 
        %disp("Conectando...");
        fopen(conn);
    catch
        disp("> Não foi possível conectar ao servidor...")
    end 
end