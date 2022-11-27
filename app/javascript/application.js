// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import "jquery_ujs"
//= require jquery
//= require jquery_ujs
//= require turbo-link
//= require popper
//= require bootstrap-sprockets
//= require tree .

$('#new_message').keypress(function(e) {
    if(e && e.keyCode == 13){
        console.log('guiwr tom nhan')
        console.log($(this));
        e.preventDefault()
        $(this).submit()
    }
});