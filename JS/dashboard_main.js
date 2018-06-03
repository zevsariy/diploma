// ctrl = false; // признак нажатой клавиши "Ctrl"
 
// $('#message').keydown(function(event){
  // switch (event.which) {
    // case 13: return false; // отключаем стандартное поведение
    // case 17: ctrl = true; // клавиша Ctrl нажата и удерживается
  // }
// });
// $('#message').keyup(function(event){
  // switch (event.which) {
    // case 13:
      // if (!ctrl) { // если ctrl не нажат
        // $('#messageForm').submit(); // отправляем форму
        // return false;
      // }
      // breakText(); // иначе вставляем конец строки
    // break;
    // case 17: ctrl = false; // Ctrl отпустили
  // }          
// });

$(window).load(function(){
    $(window).scrollTop(50);
});
