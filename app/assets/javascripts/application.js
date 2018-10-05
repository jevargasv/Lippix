
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require fotorama
//= require activestorage
//= require turbolinks
//= require_tree .

// Flash animation message
setTimeout("$('.alert').fadeOut(2000)",100);

document.addEventListener("turbolinks:load", function() {

  $('.ui.dropdown').dropdown();

  //Add to cart item function
  let itemCount = 0;

  $('.ui.positive.button').click(function (){
  itemCount ++;
  $('#itemCount').html(itemCount).css('display', 'block');
}); 

  $('.clear').click(function() {
  itemCount = 0;
  $('#itemCount').html('').css('display', 'none');
  $('#cartItems').html('');
});

  let threads = document.getElementsByClassName('thread');
  for (let i = 0; i < threads.length; i++) {
      threads[i].children[0].click();
  }

});