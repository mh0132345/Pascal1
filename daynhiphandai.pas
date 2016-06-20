PROGRAM nhiphan;
VAR x:array[1..100] of INTEGER;
n,i:INTEGER;
BEGIN
    readln(n);
    fillchar(x,sizeof(x),0);
    REPEAT
    FOR i:=1 TO n DO write(x[i]);
    writeln;
    i:=n;
    WHILE(i>0) AND (x[i]=1) DO dec(i);
    IF i>0 THEN
    BEGIN
        x[i]:=1;
        fillchar(x[i+1],(n-i)*sizeof(x[i]),0);
    END;
    UNTIL i=0; 
    readln
    END.
        