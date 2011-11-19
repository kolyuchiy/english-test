program generate_russian_lang_file;
uses lang;
var l: tLng;
    f: file;
begin
   with l do begin
      header := 'Программа тестов';
      menu_about := 'О программе';
      menu_help := 'Справка';
      menu_quit := 'Выход';
      status_test := 'Выберите один из вариантов ответа';
      status_text := 'Нажмите любую клавишу для продолжения';
      status_menu := 'Вы можете выбрать любой пункт меню с помощью '+
                    'стрелок и клавиши <Enter>';
      results_right := 'Правильно: ';
      results_all := 'Всего: ';
      time_left := 'Осталось: ';
      sec := 'сек';
      file_not_found := 'Ошибка чтения файла';
   end;
   assign(f, 'russian.lng');
   rewrite(f, sizeof(tLng));
   blockwrite(f, l, 1);
   close(f);
end.