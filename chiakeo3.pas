TYPE mang=ARRAY[0..3500] OF LONGINT;
VAR a,p1,p2,tg:mang;
i,j,s,s2,n:LONGINT;
fi:TEXT;
FUNCTION getmax(a:mang):LONGINT;
VAR max,i:LONGINT;
BEGIN
    max:=1;
    FOR i:=1 TO n DO
    IF A[max]<a[i] THEN max:=i;
    getmax:=max;
END;
BEGIN
    n:=0;
    i:=0;
    assign(fi,'chiakeo.inp');
    reset(fi);
    WHILE NOT eof(fi) DO
    BEGIN
     inc(i);
     read(fi,a[i]);
     inc(n);
    END;
    close(fi);
    p1[0]:=0;
    p2[0]:=0;
    WHILE a[getmax(a)] <>0 DO
    BEGIN
        s:=0;
        s2:=0;
        p1[0]:=p1[0]+i;
        p1[p1[0]]:=a[getmax(a)];
        a[getmax(a)]:=0;
        FOR i:=1 TO p1[0] DO s:=s+p1[i];
        FOR i:=1 TO p2[0] DO s2:=s2+p2[i];
        IF s>=s2 THEN
        BEGIN
            tg:=p1;
            p1:=p2;
            p2:=tg;
        END;
    END;
    write(n,' ');
    write(s,' ');
    write(s2,' '); 
    write(abs(s2-s),' ');
    writeln;
    FOR i:=1 TO p1[0] DO
    IF p1[i]<> 0 THEN write(p1[i],' ');
    writeln;
    FOR i:=1 TO p2[0] DO 
    IF p2[i]<> 0 THEN write(p2[i],' ');
    readln
    END.