PROGRAM subseq;
CONST
inp = 'subseq.inp';
out = 'subseq.out';
VAR n,dau,i, cuoi, d:LONGINT;
max,max2,T:LONGINT;
f, g:TEXT;
PROCEDURE input;
BEGIN
assign(f,inp); reset(f);
assign(g,out); rewrite(g);
Readln(f,n);
END;
 PROCEDURE solve;
VAR i ,j:LONGINT;
BEGIN
dau:=1; cuoi:=1; d:=1;
max:=-maxlongint; T:=0;
FOR i:=1 TO n DO
BEGIN
readln(f,j); T:=T + j ;
IF T> max THEN 
BEGIN
max:=T;
dau:=d; cuoi:=i;
END;
IF T<0 THEN BEGIN T:=0; d:=i+1; END;
END;
END;
PROCEDURE output;
BEGIN
writeln(g,dau);
writeln(g,cuoi);
writeln(g,max);
Close(f); Close(g);
END;
BEGIN
input;
solve;
output;
END. 