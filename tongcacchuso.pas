PROGRAM tinh;
VAR n,i:qword;so,st:ansiSTRING;sum:COMP;
BEGIN
    write('nhap n');
    readln(n);
    so:='';
    sum:=0;
    FOR i:=1 TO
    n DO
    BEGIN
        str(i,st);
         so:=so+st;
        sum:=sum+i;
    END;
    writeln(so);
    writeln(sum);
    readln
    END.

