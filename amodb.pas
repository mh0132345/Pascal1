PROGRAM dequy;
VAR a,s:longint;i,d:INTEGER; 
st:STRING;
BEGIN 
    a:=1;
    s:=0;
    FOR i:=1 TO 64 DO 
    begin
        a:=a*2;
        s:=s+a;
    END;  
    str(s,st);
    d:=length(st);
    write(st[d],st[d-1],st[d-2]);
    
    readln
    END.
    
   
    