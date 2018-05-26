var s,i,j,n,b,m,k,u,c,y: integer;
    a:array [1..10000] of integer;
    function SumNum(var x:integer):integer;
    begin
    k:=x;
    s:=0;
     while k>0 do begin
     b:=k mod 10;
     s:=s+b;
     k:=k div 10;
     end;
     SumNum:=s;
    end;
    function Pyatorka(var x:integer):integer;
    begin
    m:=0;
    y:=x;
    while y>0 do begin
      if (y mod 10) = 5 then 
        inc(m);
      y:=y div 10;
      end;
      Pyatorka:=m;
    end;
    
begin
  writeln('Укажите число элементов массива: ');
  read(n);
  for i:=1 to n do
    read(a[i]);
   
    For i:=1 to n do 
      If SumNum(a[i])=21 then begin
       If i=n then begin
       n:=n-1;
       break;
       end;
        for u:=i to n-1 do 
          a[u]:=a[u+1];
       n:=n-1;
      end;
      
    
        
        // Вторая часть 
        for i:=n downto 1 do //begin
          if Pyatorka(a[i])>0 then begin
           n:=n+1; 
            for j:= n downto i+1 do
              a[j]:=a[j-1];
              
             end;
         
     for i:=1 to n do
      write(a[i]+' ');
     
end.