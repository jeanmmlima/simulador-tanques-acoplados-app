function ack = writeVoltage(t,v)
    try
        msg = sprintf('WRITE 0 %.2f',v);
        fprintf(t,msg);
        ack = fscanf(t);
    catch
        disp('> Não foi possível enviar sinal de tensão!');
    end
end