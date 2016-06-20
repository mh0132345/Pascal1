PROGRAM thu;
VAR i:INTEGER;
BEGIN
    i:=1;
    REPEAT
    write(i:3);
    IF i<=5 THEN i:=i+2;
    i:=i+3;
    UNTIL i>10;
    readln
    end.