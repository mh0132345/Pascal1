PROGRAM demsokitu;
VAR st: STRING;
i,d:BYTE;
ch:CHAR;
BEGIN
write('nhap vao mot xau bat ki'); Readln(st);
FOR ch:='A' TO 'Z' DO
BEGIN
d:=0;
FOR i:= 1 TO length(st) DO 
IF ch=upcase(st[i]) THEN d:= d+1;
write(' so ki tu ', ch ,' co trong xau la', d);
END;
readln;
END.