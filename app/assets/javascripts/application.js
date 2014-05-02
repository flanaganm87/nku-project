//= require jquery
//= require jquery_ujs
//= require private_pub
//= require_tree .

$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe('/messages', function (data) {
    eval(data);
  });
});