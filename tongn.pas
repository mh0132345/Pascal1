var n,i,k,count,d,s,r,j: integer;
stop:boolean;
c: array of integer;
procedure input;
begin
        write('Nhap n'); read(n);
        k:=1; count:=0; c[k]:=n;
end;
procedure result;
begin
        inc(count);
        write('Cach chia ' , count, ': ');
        for i:=1 to k do write(c[i]);
end;
procedure nextDivision;
begin
        i:=k;
        while (i>0) and (c[i]=1) do
        begin
                dec(i);
                if (i>0) then
                begin
                        dec(c[i]);
                        d := k-i+1;
                        r := d div  c[i];
                        s := d mod c[i];
                        if r>0 then
                        begin
                                for j:=i+1 to i+r do
                                begin
                                        c[j]:= c[i];
                                        k:= k+R;
                                end;
                        end;
                        if s>0 then
                        begin
                                inc(k);
                                c[k]:= s;
                        end;
                end
                else stop:=true;
        end;
end;
begin
        input();
        stop:= false;
        while (stop = false) do
        begin
                result();
                nextDivision();
        end;
end.



