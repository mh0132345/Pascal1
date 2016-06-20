PROGRAM Chia_keo; 
CONST fi= 'chiakeo.inp'; 
fo='chiakeo.out'; 
max=10000; 
VAR p1,p2:ARRAY[1..max] OF INTEGER; 
tp1,tp2,c,n:LONGINT; 
f:TEXT; 
PROCEDURE input; 
VAR i:INTEGER; 
BEGIN 
fillchar(p1,sizeof(p1),0); 
p2:=p1; 
assign(f,fi); 
reset(f); 
tp1:=0;tp2:=0; 
c:=0;i:=0; 
WHILE NOT eof(f) DO 
BEGIN 
WHILE NOT eof(f) DO 
IF tp2>=tp1 THEN {docvao phan nao it keo hon} 
BEGIN 
inc(i); 
read(f,p1[i]); 
tp1:=tp1+p1[i]; 
END 
ELSE 
BEGIN 
inc(i); 
read(f,p2[i]); 
tp2:=tp2+p2[i]; 
END; 
readln(f); 
END; 
n:=i; c:=abs(tp1-tp2); 
close(f); 
END; 
PROCEDURE Divice; 
VAR ok:BOOLEAN; 
i,t,j:INTEGER; 
BEGIN 
ok:=TRUE; 
WHILE ok DO 
BEGIN 
ok:=FALSE; 
FOR i:=1 TO n DO 
FOR j:=1 TO n DO 
IF abs((tp1+p2[i]-p1[j])-(tp2+p1[j]-p2[i])) BEGIN 
tp1:=tp1-p1[j]+p2[i]; 
tp2:=tp2+p1[j]-p2[i]; 
c:=abs(tp1-tp2); 
t:=p2[i]; 
p2[i]:=p1[j]; 
p1[j]:=t; 
ok:=TRUE; 
END; 
END; 
END; 
Procedureoutput; 
VAR i:INTEGER; 
BEGIN 
assign(f,fo); 
rewrite(f); 
writeln(f,n,’ ’,tp1,’ ’,tp2,’ ’,c); 
FOR i:=1 TO n DO IF p1[i]>0 THEN write(f,p1[i],’ ’); 
writeln(f); 
FOR i:=1 TO n DO IF p2[i]>0 THEN write(f,p2[i],’ ’); 
close(f); 
END; 
BEGIN 
input; 
divice; 
output; 
END. 