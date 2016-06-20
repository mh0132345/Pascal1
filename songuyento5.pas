VAR i,ka,kb,cs,n:LONGINT;
a,b:ARRAY[1..1000] OF LONGINT;
FUNCTION ngto(n:LONGINT):BOOLEAN;
BEGIN
    IF n<2 THEN exit;
    ngto:=TRUE;
    FOR i:=2 TO round(sqrt(n)) DO
    IF n MOD i=0 THEN ngto:=FALSE;
END;
BEGIN
    write('Nhap n');
    readln(n);
    ka:=1;
    a[ka]:=0;
    FOR i:=1 TO n DO
    BEGIN
     kb:=0;  
    FOR i:=1 TO ka DO
    FOR cs:=0 TO 9 DO
    IF ngto(a[i]*10+cs) THEN 
    BEGIN
        inc(kb);
        b[kb]:=a[i]*10+cs;
    END;
    ka:=kb;
    FOR i:=1 TO ka DO
    a[i]:=b[i];
    end;
    
FOR i:=1 TO ka DO write(b[i]);
readln;
END.
    