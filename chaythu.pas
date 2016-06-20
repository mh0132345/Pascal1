PROGRAM nhap; 
VAR a:ARRAY[1..100] OF INTEGER;
i:INTEGER;
f:TEXT;
BEGIN
    i:=0;
assign(f,'test.inp');
reset(f);
WHILE NOT eof(f) DO
BEGIN
    inc(i); 
read(f,a[i]) ;
write(a[i])
END;
close(f);
readln
END.
