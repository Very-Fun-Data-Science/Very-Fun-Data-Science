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
//= require turbolinks
//= require_tree .

// document.addEventListener('turbolinks:load', function () {
//   var articlesIndex = document.querySelectorAll('.articles-index');
//
//   var navbar = document.querySelectorAll('.navbar')[0];
//   var header = document.querySelectorAll('.header')[0];
//
//   var resizeHeader = function () {
//     if (window.scrollY >= 20) {
//       navbar.style.padding = '.5rem 1rem';
//       header.style.fontSize = '20px';
//     } else {
//       navbar.style.paddingTop = '50px';
//       navbar.style.paddingBottom = '50px';
//       header.style.fontSize = '100px';
//     }
//   }
//
//   if (articlesIndex.length > 0) {
//     if (navbar == null || header == null) return;
//
//     window.addEventListener('scroll', resizeHeader);
//   } else {
//     window.removeEventListener('scroll', resizeHeader);
//   }
// });
