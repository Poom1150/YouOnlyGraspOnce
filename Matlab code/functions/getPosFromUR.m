function pos = getPosFromUR(ur3)
msg = [
    "def getPos():"
    "pose = get_actual_tcp_pose()"
    "socket_open(""192.168.32.5"",48570)"
    "socket_send_string(pose)"
    "socket_close()"
    "end"
];


ur3.write(join(msg,newline)+newline,"uint8");
clear server
server = tcpserver("192.168.32.5",48570);
tic;
while server.NumBytesAvailable() == 0 && toc < 10
end

pos_str = read(server,server.NumBytesAvailable,'string');
pos = sscanf(pos_str, 'p[%f,%f,%f,%f,%f,%f]')';
end