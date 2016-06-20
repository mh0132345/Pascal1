PROGRAM phantich;
VAR x: ARRAY [0..100] OF INTEGER;
n:INTEGER;
count:LONGINT;
k:INTEGER;
tiep_tuc:BOOLEAN;
PROCEDURE khoi_tao;
BEGIN
    x[0]:=0;
    x[1]:=n-1;
    x[2]:=1;
    k:=2;
    count:=0;
END;
PROCEDURE incauhinh;
VAR i:INTEGER;
BEGIN
    inc(count);
    write(count:4,'.',n,'=');
    FOR i:=1 TO k DO write(x[i]:2,'+');
    write(x[k]:2);
END;
PROCEDURE sinh_ke_tiep;
VAR i,j,tongcuoi,thuong,du:INTEGER;
BEGIN
    i:=k;
    WHILE x[i]=1 DO dec(i);
    IF i=0 THEN tiep_tuc:=FALSE
    ELSE
    BEGIN
        x[i]:=x[i]-1;
        tongcuoi:=k-i+1;
        thuong:=tongcuoi DIV x[i];
        du:=tongcuoi MOD x[i];   
        FOR j:=i+1 TO i+thuong DO x[j]:=x[i];
        k:=i+thuong;
        IF du>0 THEN
        BEGIN
            k:=k+1;
            x[k]:=du
        END
    END;
END;
PROCEDURE sinh;
BEGIN
    khoi_tao;
    tiep_tuc:=TRUE;
    WHILE tiep_tuc DO
    BEGIN
        incauhinh;
        sinh_ke_tiep;
    END; 
    END;
BEGIN
write('nhap n');
readln(n);
sinh;
readln
END.    
        
