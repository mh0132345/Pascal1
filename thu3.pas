  PROGRAM timban;
FUNCTION uoc(k:INTEGER):INTEGER;
VAR i,tong:INTEGER;
BEGIN
tong:=0;
FOR i:=1 TO k DIV 2 DO
IF k MOD i =0 THEN tong:=tong+i;
uoc:=tong;
END;
VAR m,n:INTEGER;
BEGIN
FOR m:=1 TO 10001 DO
FOR n:=m+1 TO 10001 DO
IF uoc(m)=uoc(n) THEN writeln(m,'va',n,'la ban cua nhau');
readln
END.
