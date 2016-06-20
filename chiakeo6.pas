VAR a:ARRAY[1..100] OF INTEGER;
i,n,j,tg,s1,s2:INTEGER;
PROCEDURE sapxep;
BEGIN
    FOR i:=1 TO n-1 DO  
    FOR j:=i+1 TO n DO
    IF a[i]<a[j] THEN
    BEGIN
        tg:=a[i];
        a[i]:=a[j];
        a[j]:=tg;
    END;
END;
BEGIN
    readln(n);
    FOR i:=1 TO n DO readln(a[i]);
    sapxep;
    s1:=a[1];
    s2:=a[2];
    FOR i:=3 TO n DO
    IF s1<s2 THEN  
    s1:=s1+a[i]              
    ELSE s2:=s2+a[i];
    writeln;
    writeln(s1);
    writeln(s2);
    readln
END.    