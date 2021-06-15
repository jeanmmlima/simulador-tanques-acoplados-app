function y = closeConnection(t)
    try
        fclose(t);
    catch
        disp('> Não foi possível fechar conexão');
    end
end