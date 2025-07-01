function q = getJointFromUR(ur3)
msg = [
    "def myprog():"
    "pose = get_actual_joint_positions()"
    "socket_open(""192.168.32.5"",48570)"
    "socket_send_string(pose)"
    "socket_close()"
    "end"
];


ur3.write(join(msg,newline)+newline,"uint8");
clear server
server = tcpserver("192.168.32.5",48570);
tic;
while server.NumBytesAvailable() == 0 && toc < 5
end

joint_str = read(server,server.NumBytesAvailable,'string');
q = str2num(joint_str);
end