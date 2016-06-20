VAR n,s1,s2,s3,i:INTEGER;
FUNCTION F(X:LONGINT):LONGINT;
BEGIN
IF X>2 THEN
    BEGIN
        s1:=1; 
        s2:=1; 
        WHILE s3<n DO
        BEGIN
            s3:= s1+ s2;
            s1:=s2;
            s2:=s3;
        END;
        F:=s3;
    END
    ELSE F:=1;
    
        
END;
BEGIN
    write('nhap n');
    readln(n);
    writeln(s3);
    readln;
    END.