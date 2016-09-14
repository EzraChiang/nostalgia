$(document).ready(function() {
  $("nav").on('click', '#new-post', function(e){
    e.preventDefault();
    $("#post-form").remove();
    $.ajax({
      url: '/posts/new',
      method: 'get'
    })
    .done(function(response){
      $('.container').prepend(response);
    })
  });

  $(".container").on('submit', '#post-form', function(e){
    e.preventDefault();
    var url = $(this).attr("action");
    var data = $(this).serialize();
    $.ajax({
      url: url,
      data: data,
      method: "POST"
    })
    .done(function(response){
      $("#post-form").hide();
      $('.container').append(response);
    })
  })

  $(".container").on('click', '#comment-btn', function(e){
    e.preventDefault();
    $(this).hide();
    $(".new-comment-form").slideDown();
  });

  $(".container").on('submit', '.new-comment-form', function(e){
    e.preventDefault();
    var url = $(this).attr('action');
    var data = $(this).serialize();

  $.ajax({
      method: "POST",
      url: url,
      data: data
    })
    .done(function(response){
      $(".new-comment-form").hide().trigger("reset");
      $("#comment-btn").show();
      $(".comments").append(response);
    })
  })
});
