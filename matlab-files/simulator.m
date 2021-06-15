function [L] = simulator(conn,volts)
    if(conn.Status)
        L1 = readLevels(conn,0)*6.25;
        L2 = readLevels(conn,1)*6.25;
        L = [L1;L2];
        ack = writeVoltage(conn,volts);
    end
    pause(0.1);
end