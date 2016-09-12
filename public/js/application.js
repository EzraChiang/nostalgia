$(document).ready(function() {

  $("body").on("click", ".decade li", function(){
    event.preventDefault();
    $(".tab-content").hide();
    $("#home-img").remove();
    $(".decade li").removeClass("active");
    $(this).addClass("active");
    var tab = $(this).find("a").attr("href")
    $(tab).slideDown();
  });

  $("body").on("click", "#videogame1990", function(){
    event.preventDefault();
    $("#response").remove();
    var url = $(this).attr("href")
    $.ajax({
    method: "GET",
    url: url,
    }).done(function(response){
    $("body").append(response)
    });
   });

  $("body").on("click", "#cartoon1990", function(){
    event.preventDefault();
    $("#response").remove();
    var url = $(this).attr("href")
    $.ajax({
    method: "GET",
    url: url,
    }).done(function(response){
    $("body").append(response)
    });
  });

  $("body").on("click", "#sports1990", function(){
    event.preventDefault();
    $("#response").remove();
    var url = $(this).attr("href")
    $.ajax({
    method: "GET",
    url: url,
    }).done(function(response){
    $("body").append(response)
    });
  });
  $("body").on("click", "#music1990", function(){
    event.preventDefault();
    $("#response").remove();
    var url = $(this).attr("href")
    $.ajax({
    method: "GET",
    url: url,
    }).done(function(response){
    $("body").append(response)
    });
  });
  $("body").on("click", "#tv_movies1990", function(){
    event.preventDefault();
    $("#response").remove();
    var url = $(this).attr("href")
    $.ajax({
    method: "GET",
    url: url,
    }).done(function(response){
    $("body").append(response)
    });
  });
});
