Муниципальное образовательное учреждение
Средняя общеобразовательная школа №31 г. Владимира





Контролирующая программа 
по английскому языку 

Реферат



учеников 11 класса
Морева Николая и
Забрудской Натальи.
Научный руководитель
Н.В. Зарайская.













Владимир
2001
Содержание
I.	Введение
1.	Формулировка проблемы
II.	Основная часть
1.	Постановка задачи, подзадач
2.	Построение алгоритма
3.	Описание программы
III.	Заключение
Приложения
Библиография

Введение
Люди конца XX века стали свидетелями лавинообразного увеличения 
возможностей и благ, которые дают им новые технологии. Компьютеры и 
Интернет, новые машины и средства коммуникаций, новые материалы и услуги. 
Все это впечатляет и поражает воображение, но как ни странно, менее всего 
изменились технологии, связанные непосредственно с формированием человека, 
его интеллектуального и духовного миров. В области образования одной из 
актуальных является проблема оценки уровня знаний учащихся по различным 
предметам. Безнадежно устарели методы, когда учителя учат детей и сами же 
оценивают свою работу - знания учеников. Во всем мире возрастает потребность 
в объективной оценке знаний учащихся. Это нужно прежде всего для принятия 
верного решения при проектировании деятельности учащихся по окончании 
средней школы.
Для объективной оценки знаний учащегося необходимо использовать 
современные стандартизированные методы оценки учебных достижений, т.е. 
тестирование. Правильно составленный тест представляет собой совокупность 
сбалансированных тестовых заданий. Количество заданий в тесте должно быть 
таким, чтобы пропорционально отразить основное содержание. Трудность заданий 
должна быть сбалансирована таким образом, чтобы обеспечить равносложность 
различных вариантов тестов. Дифференцирующая сила тестовых заданий должна 
обеспечивать надежную дифференциацию уровня подготовки учащихся. Разработка 
современных контролирующих тестов представляет собой сложную и трудоемкую 
научную задачу. Практическое использование современных контролирующих 
тестов дает учащимся возможность объективно оценить уровень своих знаний. Эта 
услуга пользуется все возрастающим спросом. Общепринято мнение, что, только 
используя современные технологии в образовании, возможно снижение риска 
принятия неверного решения, как на уровне управления образованием, так и на 
уровне отдельного учащегося. Неверно или предвзято поставленные в школе 
оценки могут неверно сориентировать учащегося и его родителей в дальнейшем, 
что неизбежно приведет к излишним дополнительным трудностям и проблемам. 
Формулировка проблемы
В современном мире значение английского языка велико. Он фактически стал 
международным, на нем говорят носители совершенно разных языков и культур.
На английском языке печатается большинство научных работ, технических 
текстов, самые популярные периодические издания. Любая новая информация 
изначально появляется именно на английском языке и уже затем переводится на 
другие языки мира. Поэтому любой человек должен владеть английским языком, 
чтобы свободно общаться и получать всю необходимую информацию как можно 
быстрее.
Компьютерная техника применяется в различных областях деятельности 
человека. Она предоставляет новые возможности, отсутствовавшие ранее. Жизнь 
современного человека немыслима без компьютера.
Применение компьютеров в образовании позволяет использовать более 
эффективно время и деньги (на покупку тетрадей, книг, пишущих 
принадлежностей и др.). Специальное обучающее программное обеспечение 
позволяет интенсифицировать процесс обучения.
Поэтому мы решили создать программу, которая могла бы облегчить работу 
учителя и ученика по контролю знаний учащегося по английскому языку.

Основная часть
Постановка задачи, подзадач
Разработка программы для контроля знаний ученика в виде тестирования в 
среде Turbo Pascal 7.0.
1. Создание тестов по темам английского языка.
2. Создание пользовательского меню для выбора теста или получения справки 
и информации о программе.
3. Создание основы программы, проводящей тестирование, используя данные 
из файла теста, отформатированные специальным образом, понятным программе.
4. Создание подпрограммы для обработки и сохранения результатов теста.
Построение алгоритма
1. Поиск имеющихся тестов в каталоге тестов и формирование массива для 
пунктов меню.
2. Вывод меню и ожидание выбора пользователя:
? Пункт меню "Выход" осуществляет завершение программы.
? Пункты меню "О программе" и "Справка" выводят на экран 
соответственно файлы "about.txt" и "help.txt", в которых находится 
информация о программе и справка о пользовании программой.
? Пункты меню тестов запускают процедуру "test" для выбранного 
пользователем файла теста, которая проводит тестирование.
3. Процедура test последовательно задает тестируемому вопросы из файла 
теста и ожидает от него ответ в течении 60 секунд. По завершении теста 
результаты сохраняются в файле "results" и выводятся на экран. Затем программа 
завершается.
Описание программы
Задача нашей программы - проконтролировать работу учащихся, помочь 
выявить пробелы в знаниях. Для работы с тестом учащимся следует приобрести 
определенный запас слов и изучить грамматический строй языка на уровне 10-11 
класса. В тестировании имеются разделы, встречающиеся как в бытовой и деловой 
разговорной речи, так и в экономических документах.
Программа позволяет проводить тестирование по любым темам. При этом 
программой используется файл теста, в котором находятся вопросы и ответы на 
них. Файл теста специально отформатирован для программы и зашифрован для 
того, чтобы тестируемый не мог подсмотреть правильные ответы.
Наша программа составлена в соответствии со школьным курсом и 
отличается тщательно продуманной внутренней структурой, позволяющей 
использовать ее и как курс-тренинг, и как пособие при подготовке к контрольным 
работам по грамматике английского языка, а также к Всероссийскому 
централизованному тестированию, позволяющему сдать одновременно выпускные 
и вступительные экзамены. Наш тест уникален тем, что вопросы в нем 
расположены не в порядке возрастания степени их сложности. Мы считаем, что, 
во-первых это облегчит работу ученика с тестом, во-вторых, увеличится процент 
самостоятельно принятых решений, в-третьих, надо учитывать то, что на 
выполнение одного задания выделяется только одна минута, что поможет ученику 
правильно и экономно расходовать отведенное ему время. По истечении 
отведенного времени ответ на текущий вопрос засчитывается как неверный, и 
автоматически на экран выводится следующее задание. Мы считаем, что именно 
такая структура тестирования поможет наиболее объективно оценить знания 
учащихся по заданным темам с наименьшими потерями времени, так на тест из 20 
вопросов будет отведено 20 минут, что поможет учителю лучше спланировать свое 
время.
Выбор такого малого промежутка времени обусловлен тем, что разговорная 
речь, как и письменная, требует четкого знания грамматики и быстрой реакции, 
поэтому, если знания систематизированы вам не составит большого труда такое 
небольшое испытание, как наш тест.
Всего в программе имеется четыре раздела по основным темам, изучаемым в 
школе: пассивный залог, согласование времен, наклонение, прямая и косвенная 
речь.
? Каждый из предложенных тестов состоит из вопросов имеющих 4 варианта 
ответа, из которых только один правильный.
? На каждый вопрос дается 60 секунд.
? Результат теста сохраняется в файле "results".
? Вы можете завершить тест нажатием  клавиши "Esc", при  этом текущие 
результаты сохраняются  в файле "results".
Требования к программному и аппаратному обеспечению компьютера для 
запуска программы:
?  Компьютер IBM PC или совместимый с ним.
?  Видео карта VGA с памятью 256Kb и больше.
?  Операционная система MS DOS версии 3.0 и выше.

Заключение
Компьютер в жизни современного человека играет большую роль. 
Исследовательские данные говорят о том, что компьютер позволяет наиболее 
быстро и эффективно произвести оценку учащихся.
Безусловно, разработка контролирующих компьютерных программ - это 
очень перспективное направление в учебной деятельности. Эти внедрения позволят 
полностью компьютеризировать процесс обучения, который будет соответствовать 
современному уровню развития техники.
Мы надеемся, что наша программа поможет облегчить работу учителя и 
позволит более эффективно использовать учебное время.

Приложения
Текст программы
Текст программы для удобства разбит на части, выполняющие различные 
функции:
?  lang.pas - модуль, позволяющий пользователю программы легко изменить 
язык выводимых программой сообщений.
?  monobmp.pas - модуль для вывода на экран монохромных картинок в 
формате BMP.
?  mycrypt.pas - модуль для зашифровки и расшифровки файлов теста.
?  project.pas - основная программа.
Текст основной программы:
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
                  (getmaxx-250) div 2,150,250,30,0);
   if (testname=fAbout) or (testname=fHelp) then begin
      StatusLine(CLEAR);
      TextFile(testname);
      goto MAIN_MENU;
   end
   else if testname=ESCAPE then
      halt
   else if testname<>'' then
      test(testname);
   closegraph;
end.
Литература
1.  Качалова Н.В., Израилевич Б.Г. "Практическая грамматика английского 
языка". - М.: Вестник 1996.
2.  Тесты 11 класс. Варианты и ответы централизованного тестирования - 
М.: Прометей 2000.
3.  Тесты: Варианты и ответы централизованного тестирования. - М.: АСТ-
ПРЕСС 2000.
4.  Марченко А.И., Марченко Л.А. Программирование в среде Turbo Pascal 7.0 
- К.: ВЕК+ 1999.

5

