PROGRAM giaima;
VAR st,st1:STRING;i:INTEGER;
PROCEDURE input;
BEGIN
write('nhap xau');
readln(st);
END;
PROCEDURE xuly;
BEGIN
st1:=''; 
st:=' '+st;
FOR i:=1 TO length(st)-1 DO 
BEGIN
IF (st[i]=' ') AND (st[i+1]<>' ') THEN
BEGIN
 st1:=st1+st[i+1];
  delete(st,i+1,1);
END;
END;
write(st1);
END;
BEGIN
input;
xuly;
readln
END.
