$(document).ready(function() {

  $("body").on("click", ".decade li", function(){
    event.preventDefault();
    $(".tab-content").hide();
    $("#home-img").remove();
    $(".decade li").removeClass("active");
    $(this).addClass("active");
    var tab = $(this).find("a").attr("href")
    console.log(tab)
    $(tab).show();


  });

});
