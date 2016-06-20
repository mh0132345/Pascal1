PROGRAM doinhiphan;
VAR he10,i,tg:LONGINT;he2:STRING;coso,x:INTEGER;
BEGIN
    write('nhap so nhi phan');
    readln(he2);
    he10:=0;
    coso:=0; 
    FOR i:= length(he2) downto 1 DO
    BEGIN
        IF coso>0 THEN coso:=coso*2
        ELSE coso:=1; 
        val(he2[i],tg,x);
        he10:= he10+ tg * coso ;
    END;
    writeln(he10);
    readln
    END.
    