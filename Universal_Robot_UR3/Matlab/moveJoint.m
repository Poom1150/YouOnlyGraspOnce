function moveJoint(ur3,qs,v)
msg = "def movepProc():"+newline;

for i = 1:size(qs,1)
    msg = msg.append("movej(["+join(string(qs(i,:)),",")+"],v="+string(v)+")"+newline);
end
msg = msg.append("end"+newline)

ur3.write(msg+newline,"uint8");
end
