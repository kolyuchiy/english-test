
uses mycrypt;
var fi,fo: text;
    st: string;
begin
   if ParamCount<2 then begin
      writeln('Usage: ',ParamStr(0),' file1 file2');
   end
   else begin
      assign(fi,ParamStr(1));
      assign(fo,ParamStr(2));
      reset(fi);
      rewrite(fo);
      while not eof(fi) do begin
         readln(fi,st);
         st:=encrypt(st);
         writeln(fo,st);
      end;
      close(fi);
      close(fo);
   end;
end.