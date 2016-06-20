PROGRAM phantichthuasonguyento;
VAR i,n :LONGINT;
BEGIN
    Write ('Nhap n:');
    Readln(n);
    Write (n,'=');
    i:=2;
    REPEAT           
        WHILE n MOD i <> 0 DO
            i:=i+1;
        Write(i);
        n:=n DIV i;
        IF n > 1 THEN
            write ('*');
    UNTIL n = 1;
    readln;
END. 