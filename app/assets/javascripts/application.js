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
//= require jquery3
//= require jquery_ujs
//= require_tree .
//= require rails-ujs
//= require_tree .
//= require bootstrap-sprockets


$(document).ready(function() {
  $(".addFavourite").click(function(){

  $.ajax({
    type: "POST",
    url: "/movies",
    data:{
      name: $(this).data('title'),
      year: $(this).data('year'),
      traktid: $(this).data('traktid'),
      image: $(this).data('image')

    }

  })

  // $(".addFavourite").text('Save')


})


$(".addWatchedHistory").click(function(){

$.ajax({
  type: "POST",
  url: "/viewedmovies",
  data:{
    name: $(this).data('title'),
    year: $(this).data('year'),
    traktid: $(this).data('traktid'),
    image: $(this).data('image')

  }

})

})


$(".moreInfo").click(function(){
  alert ($(this).data('title'))
})

$(".watchNow").click(function(){
  // `https://trakt.tv/movies/${$(this).data('slug')}/streaming_links`
  window.location.href=`https://trakt.tv/movies/${$(this).data('slug')}/streaming_links`;
})


});
