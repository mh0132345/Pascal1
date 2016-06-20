PROGRAM tapcon;
VAR x:ARRAY[0..100] OF INTEGER;
n,k,i,j:INTEGER;
PROCEDURE Printresult;
BEGIN 
     write('{');
    FOR i:=1 TO k-1 DO write(x[i],',');
    writeln(x[k],'}');
END;
PROCEDURE attempt(i:INTEGER);
VAR j:INTEGER;
BEGIN
    FOR j:=x[i-1]+1 TO n-k+i DO
    BEGIN
        x[i]:=j;
        IF i=k THEN printresult
        ELSE attempt(i+1);
    END;
END;
BEGIN
    readln(n,k);{1..n,tap con co k phan tu}
    x[0]:=0;
    attempt(1);
    readln
    END.