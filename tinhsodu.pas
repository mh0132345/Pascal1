PROGRAM tinhdu;
VAR i,du:LONGINT;
BEGIN 
    du:=1;
    FOR i:=1 TO 65 DO du:=(du*2) MOD 1000;
    IF du>=2 THEN du:=du-2
    ELSE du:=1000+du-2;
    write(du);
    readln
    END.
