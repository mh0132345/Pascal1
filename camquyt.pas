PROGRAM camquyt;
VAR g,t:INTEGER;
BEGIN
    FOR g:=1 TO 80 DO
    FOR t:=1 TO 80 DO
    IF (g/10+t/3=15) AND (g+t=80) THEN write(g,t);
    readln
    END.