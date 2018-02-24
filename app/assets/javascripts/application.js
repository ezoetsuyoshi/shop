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
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  $(document).on('ready page:load', function() {
    if ($('.h-adr').length) {
      new YubinBango.MicroformatDom();
    }
  });
});

function countLength( text, field ) {
  document.getElementById(field).innerHTML = "現在"+text.length+"文字";
  }

$(function() {
    $('#sample').bxSlider({
      auto: true,
      speed: 1000,
      pause: 9000
    });
});