PROGRAM stancung;
VAR n, i, j, dem: LONGINT;
BEGIN
write('Nhap N (N>=1): '); readln(n);
FOR i:=1 TO n DO
BEGIN
j:=i;
WHILE j MOD 5 = 0 DO
BEGIN
j:=j DIV 5;
dem:=dem+1;
END;
END;
write(' So chu so 0 cuoi cua ',n,'! la: ',dem); 
readln;
END.