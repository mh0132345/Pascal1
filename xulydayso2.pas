PROGRAM dayso;
VAR a:ARRAY [1..100] OF INTEGER;
    i,n:INTEGER;
    f:TEXT;
PROCEDURE input;
BEGIN
    write('nhap so phan tu cua day');
    readln(n);
    FOR i:=1 TO n DO
    BEGIN
        write('nhap phan tu thu ',i);
        readln(a[i]);
    END;
END;
PROCEDURE output;
BEGIN
    FOR i:=1 TO n-1 DO write(a[i],',');
    write(a[n]);
    assign(f,'SOCHAN.TXT');
    rewrite(f);
    FOR i:=1 TO n DO
    IF a[i] MOD 2 =0 THEN write(f,a[i]);
    close(f);
END;
BEGIN
    input;
    output;
    readln
END.
