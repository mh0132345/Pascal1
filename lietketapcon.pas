PROGRAM tapcon;
VAR x:ARRAY[1..100] OF INTEGER;
n,k,i,j:INTEGER;
BEGIN
    readln(n,k);{1..n,tap con co k phan tu}
    FOR i:=1 TO k DO x[i]:=i;
    REPEAT
    write('{');
    FOR i:=1 TO k-1 DO write(x[i],',');
    writeln(x[k],'}');
    i:=k;
    WHILE (i>0) AND (x[i]=n-k+1) DO dec(i);
    IF i>0 THEN
    BEGIN
        inc(x[i]);
        FOR j:=i+1 TO k DO x[j]:=x[j-1]+1;
    END;
    UNTIL i=0;
    readln
    END.