PROGRAM tongbinhphuon;
VAR m,n,k:INTEGER;
BEGIN  
    write('nhap k');
    readln(k);
    FOR n:=1 TO 9 DO
    FOR m:=1 TO 9 DO;
    IF m*m+n*n=k THEN write(k,'=',m,'*',n)
    ELSE write('ko phan tich dc');
    readln
    END.
