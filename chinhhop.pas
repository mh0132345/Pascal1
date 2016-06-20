PROGRAM chinhhop; 
CONST max=100;
VAR x:ARRAY[1..max] OF INTEGER;
c:ARRAY[1..max] OF BOOLEAN;
n,k:INTEGER;
PROCEDURE printresult;
VAR i:INTEGER;
BEGIN
    FOR i:=1 TO k DO write(x[i],' ');
    writeln;
END;
PROCEDURE attempt(i:INTEGER);
VAR j:INTEGER;
BEGIN
    FOR j:=1 TO n DO
    IF c[j] THEN 
    BEGIN
        x[i]:=j;
        IF i=k THEN printresult
        ELSE 
        BEGIN
            c[j]:=FALSE;
            attempt(i+1);
            c[j]:=TRUE;
        END;
    END;
END;
BEGIN
    readln(n,k);
    Fillchar(c,sizeof(c),TRUE);
    attempt(1);
    readln
    END.        