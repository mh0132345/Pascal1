PROGRAM chohang;
VAR a:ARRAY[0..3500] OF INTEGER;
k,i,j,max,dem:INTEGER;
BEGIN
    k:=0;
    FOR i:=0 TO 50 DO
    FOR j:=0 TO 70 DO 
    BEGIN
    a[k]:=i*7+j*13;
    inc(k);
    END;
    max:=a[0];
    FOR i:=1 TO 3500 DO
    IF (a[i]>max) AND (a[i]<=500)THEN max:=a[i];
    dem:=0;
    FOR i:=1 TO 3500 DO
    IF a[i]=max THEN inc(dem);
    writeln(dem);
    writeln(500-max);
    readln
    END.
    