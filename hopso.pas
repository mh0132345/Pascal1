VAR t,i:LONGINT;
BEGIN
    i:=1;
    FOR i:=1 TO 32 DO  t:=t*2;
    FOR i:=1 TO round(sqrt(t)) DO
    IF t MOD i =0 THEN write(i,' ');
    readln;
    end.
    