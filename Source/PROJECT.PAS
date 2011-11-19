(*
 * (x) 2001, Nikolay Morev, Natalya Zabrudskaya
 *     Vladimir, Russia. School #31, form 11b.
 *
 *     Test program.
 *     Version 1.0.
 *)

{$I-}
program TestProgram;
uses
   crt,graph,dos,
   lang,monobmp,mycrypt;
type
   tStrings = array[0..254] of string;
const
   TestsPath = 'Tests\';
   PicsPath = 'Pics\';
   ESCAPE = '%escape%';
   CLEAR = '%clear%';
   fResults = 'results';
   fAbout = 'about.txt';
   fHelp = 'help.txt';
var
   items: byte;
   fnames: ^tStrings;
   captions: ^tStrings;
   gd,gm: integer;
   lng: tLng;
   testname: string;
   srec: SearchRec;
   i: byte;
   f: text;
label
   main_menu;

procedure randombitmap;
var
   srec: SearchRec;
   i: word;
begin
   i:=0;
   findfirst(PicsPath+'\*.bmp',AnyFile,srec);
   while DosError=0 do begin
      inc(i);
      findnext(srec);
   end;
   i:=random(i)+1;
   findfirst(PicsPath+'\*.bmp',AnyFile,srec);
   while (DosError=0) and (i<>0) do begin
      dec(i);
      findnext(srec);
   end;
   showbmp(PicsPath+'\'+srec.name);
end;

procedure drawbutton(x,y,xdim,ydim: word;
                     caption: string;
                     active: boolean);
const
   col      = LightCyan;   acol      = LightRed;
   shadecol = Cyan;        ashadecol = Red;
   textcol  = Black;       atextcol  = White;
begin
   setlinestyle(SolidLn,0,ThickWidth);
   setfillstyle(SolidFill,LightGray);
   bar(x,y,x+xdim,y+ydim);
   if active then setcolor(acol)
   else setcolor(col);
   line(x,y,x+xdim,y);
   line(x,y,x,y+ydim);
   if active then setcolor(ashadecol)
   else setcolor(shadecol);
   line(x+xdim,y+ydim,x+xdim,y);
   line(x+xdim,y+ydim,x,y+ydim);
   if active then setcolor(atextcol)
   else setcolor(textcol);
   settextstyle(DefaultFont,HorizDir,0);
   outtextxy (x+(xdim-textwidth(caption)) div 2,
              y+(ydim-textheight(caption)) div 2,
              caption);
end;

procedure StatusLine(st: string);
const
   x = 10;  y = 455;
   dx = 10;
   xdim = 620; ydim = 16;
   clear = '%clear%';
begin
   setviewport(x,y,x+xdim,y+ydim,true);
   clearviewport;
   if st<>clear then begin
      setlinestyle(SolidLn,0,NormWidth);
      setcolor(LightGray);
      line(xdim,ydim,0,ydim);
      line(xdim,ydim,xdim,0);
      setcolor(DarkGray);
      line(0,0,0,ydim);
      line(0,0,xdim,0);
      setcolor(White);
      settextstyle(SmallFont, HorizDir, 0);
      outtextxy(dx, (ydim - textheight(st)) div 2, st);
   end;
   setviewport(0,0,getmaxx,getmaxy,false);
end;

function menu (count: integer;
               const values,captions: array of string;
               x,y,xdim,ydim,time: word): string;
const
   kUp = #72;
   kDown = #80;
   kEnter = #13;
   kEsc = #27;
   skipbutton = 4;
   skipempty = 10;
var
   cy,active: integer;
   time0,timec,timelast: longint;
   i,hour,min,sec: word;
   st: string;
begin
   active:=0;
   while (captions[active]='') and (active<count) do inc(active);
   if time<>0 then begin
      gettime(hour,min,sec,i);
      time0:=hour*60*60+min*60+sec;
      timelast:=time0;
   end;
   repeat
      cy:=y;
      for i:=0 to count-1 do
         if captions[i]<>'' then begin
            drawbutton(x, cy, xdim, ydim, captions[i], i = active);
            cy:=cy+(ydim+skipbutton);
         end else
            cy:=cy+skipempty;
      if time<>0 then
         repeat
            gettime(hour,min,sec,i);
            timec:=hour*60*60+min*60+sec;
            if (timec-time0)>=time then begin
               menu:='';
               exit;
            end;
            if timec-timelast = 2 then begin
               str(time-(timec-time0),st);
               setcolor(White);
               settextstyle(SmallFont,HorizDir,0);
               StatusLine(lng.status_test+' - '+
                          lng.time_left+' '+st+' '+lng.sec);
               timelast:=timec;
            end;
         until keypressed;
      case readkey of
         kUp:    repeat
                    dec(active);
                 until (captions[active]<>'') and (active<count);
         kDown:  repeat
                    inc(active);
                 until (captions[active]<>'') and (active>=0);
         kEsc:   begin
                    menu:=ESCAPE;
                    exit;
                 end;
         kEnter: begin
                    menu:=values[active];
                    exit;
                 end;
      end;
      if active<0 then begin
         active:=count-1;
         while (captions[active]='') and (active>=0) do dec(active);
      end
      else if active>count-1 then begin
         active:=0;
         while (captions[active]='') and (active<count) do inc(active);
      end;
   until false;
end;

procedure test(name: string);
const
   tests = 4;
   txdim = 500; ty = 80;
   lnskip = 10;
   right = '%right%';
   question = '??';
   comments = '#';
var
   f,fTest: text;
   captions,values: array[1..tests] of string;
   st,tmpst,ans: string;
   capts,cstr,rand,i,bottomy: word;
   rightans, quest: real;
   month,day,hour,minute: word;
label
   end_of_test;
begin
   assign(fTest, name);
   reset(fTest);
   if IOResult<>0 then begin
      closegraph;
      writeln(lng.file_not_found);
      halt;
   end;
   rightans:=0; quest:=0;
   repeat
      setcolor(White);
      cleardevice;
      randombitmap;
      capts:=1; cstr:=0;
      repeat
         if eof(fTest) then goto END_OF_TEST;
         readln(fTest,st);
         st:=decrypt(st);
         if pos(comments,st)=1 then continue
         else if pos(question,st)=1 then
         begin
            captions[capts]:=copy(st,1+length(question),
                                  length(st)-length(question));
            inc(capts);
            if capts>tests then break;
         end else
         begin
            settextstyle(0,0,0);
            outtextxy((getmaxx-txdim) div 2 + 5,
                      5+ty+cstr*(textheight(st)+lnskip),st);
            inc(cstr);
         end;
      until false;
      setlinestyle(SolidLn,0,NormWidth);
      bottomy:=ty + (textheight(st)+lnskip)*cstr;
      rectangle((getmaxx-txdim) div 2, ty,
                (getmaxx-txdim) div 2 + txdim, bottomy);
      StatusLine(lng.status_test);

      rand:=random(4)+1;
      for i:=1 to tests do values[i]:='';
      values[rand]:=right;
      tmpst:=captions[1];
      captions[1]:=captions[rand];
      captions[rand]:=tmpst;
      ans:=menu(tests,values,captions,
                (getmaxx-230) div 2,bottomy+50,230,30,60);
      quest:=quest+1;
      if ans=right then rightans:=rightans+1;
      if ans=ESCAPE then begin
         setcolor(White);
         cleardevice;
         randombitmap;
         goto END_OF_TEST;
      end;
   until false;
END_OF_TEST:
   close(fTest);

   assign(f,fResults);
   append(f);
   if IOResult<>0 then rewrite(f);
   writeln(f);
   getdate(i,month,day,i);
   gettime(hour,minute,i,i);
   writeln(f,day,'.',month,' ',hour,':',minute);
   setlinestyle(SolidLn,0,NormWidth);
   rectangle (90, 90, 300, 170);
   settextstyle(DefaultFont,HorizDir,0);
   str(trunc(rightans),st);
   str(trunc((rightans/quest)*100),tmpst);
   outtextxy(100,100,lng.results_right+st+' ('+tmpst+'%)');
   writeln(f,lng.results_right+st+' ('+tmpst+'%)');
   str(trunc(quest),st);
   outtextxy(100,150,lng.results_all+st);
   writeln(f,lng.results_all+st);
   StatusLine(lng.status_text);
   close(f);
   readkey;
end;

procedure TextFile(fname: string);
const
   x = 100;    y = 100;
   xdim = 400; ydim = 200;
var
   f: text;
   s: string;
   cy: word;
label
   end_of_proc;
begin
      setviewport(x,y,x+xdim,y+ydim,true);
      clearviewport;
      setlinestyle(SolidLn,0,NormWidth);
      setcolor(DarkGray);
      line(xdim,ydim,0,ydim);
      line(xdim,ydim,xdim,0);
      setcolor(LightGray);
      line(0,0,0,ydim);
      line(0,0,xdim,0);
      setcolor(White);
      settextstyle(SmallFont, HorizDir, 0);
      assign(f, fname);
      reset(f);
      cy:=10;
      if IOResult<>0 then begin
         outtextxy(20,cy, lng.file_not_found);
         goto end_of_proc;
      end else
      while not eof(f) do begin
        readln(f,s);
        outtextxy(20, cy, s);
        inc(cy,textheight(s)+2);
      end;
      close(f);
end_of_proc:
      StatusLine(lng.status_text);
      readkey;
      setviewport(0,0,getmaxx,getmaxy,false);
      cleardevice;
end;

procedure GraphDrv; external; {$L egavga.obj}
procedure LittFont; external; {$L litt.obj}
procedure SansFont; external; {$L sans.obj}

begin
   randomize;
   lng_read(lng);
   RegisterBGIDriver(@GraphDrv);
   RegisterBGIFont(@LittFont);
   RegisterBGIFont(@SansFont);
   initgraph(gd,gm,'');

   items:=4;
   findfirst(TestsPath+'\*.enc',AnyFile,srec);
   while DosError=0 do begin
      inc(items);
      findnext(srec);
   end;
   getmem(captions,sizeof(string)*items);
   getmem(fnames,sizeof(string)*items);

   i:=0;
   findfirst(TestsPath+'\*.enc',AnyFile,srec);
   while DosError=0 do begin
      fnames^[i]:=TestsPath+'\'+srec.name;
      assign(f,fnames^[i]);
      reset(f);
      readln(f,captions^[i]);
      delete(captions^[i],1,1);
      captions^[i]:=decrypt(captions^[i]);
      close(f);
      inc(i);
      findnext(srec);
   end;
   fnames^[items-4]:='';
   fnames^[items-3]:=fAbout;
   fnames^[items-2]:=fHelp;
   fnames^[items-1]:='';

   captions^[items-4]:='';
   captions^[items-3]:=lng.menu_about;
   captions^[items-2]:=lng.menu_help;
   captions^[items-1]:=lng.menu_quit;

MAIN_MENU:
   randombitmap;

   settextstyle(SansSerifFont, HorizDir, 0);
   setcolor(LightRed);
   outtextxy(101,51,lng.header);
   setcolor(White);
   outtextxy(100,50,lng.header);
   StatusLine(lng.status_menu);
   testname:=menu(items,fnames^,captions^,
                  (getmaxx-250) div 2,120,250,30,0);
   if (testname=fAbout) or (testname=fHelp) then begin
      StatusLine(CLEAR);
      TextFile(testname);
      goto MAIN_MENU;
   end
   else if testname=ESCAPE then begin
      closegraph;
      halt
   end
   else if testname<>'' then
      test(testname);
   closegraph;
end.
