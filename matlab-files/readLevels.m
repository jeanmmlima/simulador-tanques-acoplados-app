function PV = readLevels(t,ch)
    try
        msg = sprintf('READ %i',ch);
        fprintf(t,msg);
        read_value = fscanf(t);
        PV = str2double(read_value);
    catch
        disp('> Não foi possível lere valores de níveis da simulação');
    end
end