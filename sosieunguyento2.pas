VAR n,i,dem:LONGINT;
FUNCTION ngto(x:LONGINT):BOOLEAN;
VAR j:INTEGER;
BEGIN
    ngto:=TRUE;
    FOR j:=2 TO round(sqrt(x)) DO
    IF x MOD j=0 THEN
    BEGIN
        ngto:=FALSE;
        exit;
    END;
END;
FUNCTION cs(x:LONGINT):INTEGER;
VAR m,k:INTEGER;
BEGIN
    m:=x;
    k:=0;
    REPEAT
    m:=m DIV 10;
    inc(k);
    UNTIL m<1;
    cs:=k
END;
PROCEDURE snt(h:LONGINT);
VAR i:INTEGER;
BEGIN
    h:=h*10;
    FOR i:=1 TO 9 DO
    IF (ngto(h+i)) AND (cs(h+i)<n) THEN snt(h+1)
    ELSE IF (ngto(h+i)) AND (cs(h+i)=n) THEN
    BEGIN
        write(h+i);
        inc(dem);
    END;
END;
BEGIN
    write('nhap n');
    readln(n);
    dem:=0;
    FOR i:=2 TO 9 DO
    IF ngto(i) THEN snt(i);
    writeln;
    write('Co',dem,'so sieu nguyen to',n,'chu so');
    readln
    END.
