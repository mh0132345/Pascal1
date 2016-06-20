VAR i,n,k:INTEGER; 
 FUNCTION ngto(n:INTEGER):BOOLEAN;
BEGIN
    ngto:=FALSE;
    FOR k:=2 TO trunc(sqrt(n)) DO
        IF n MOD k=0 THEN exit; {n?u n chia h?t cho i thì n không là nguyên t? => thoát luôn}
    ngto:=TRUE;
END;
BEGIN
    write('nhap n');
    readln(n);
    FOR i:=2 TO n DO 
    IF ngto(i) THEN write(i);
      
    readln
  END.  