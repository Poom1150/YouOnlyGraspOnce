function rp2040Send(cmmd)
    s = serialport("COM9", 9600);
    flush(s);
    pause(0.5)

    writeline(s, cmmd);

    clear s;
end