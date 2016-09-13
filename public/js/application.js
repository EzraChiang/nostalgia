$(document).ready(function() {

    $("body").on("click", ".decade li", function(event) {
        event.preventDefault();
        $("#response").remove()
        $(".tab-content").hide();
        $("#home-img").remove();
        $(".decade li").removeClass("active");
        $(this).addClass("active");
        var tab = $(this).find("a").attr("href")
        $(tab).slideDown();
    });

    $("body").on("click", "#logo90", function(event) {
        $(".jumbotron h1").text("1990's")
        $(".jumbotron p").text("How do you like them apples")
    });

    $("body").on("click", "#logo2000", function(event) {
        $(".jumbotron h1").text("2000's")
        $(".jumbotron p").text("Wilson!")
    });
    $("body").on("click", "#logo2010", function(event) {
        $(".jumbotron h1").text("2010's")
        $(".jumbotron p").text("You mustn't be afraid to dream a little bigger, darling.")
    });



    $("body").on("click", "#videogame1990", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#cartoon1990", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#sports1990", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#music1990", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
    $("body").on("click", "#tv_movies1990", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#videogame2000", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#cartoon2000", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#sports2000", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#music2000", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });

    $("body").on("click", "#tv_movies2000", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });


    $("body").on("click", "#videogame2010", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        console.log(url)
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
    $("body").on("click", "#sports2010", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        console.log(url)
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
    $("body").on("click", "#tv_movies2010", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
    $("body").on("click", "#music2010", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
    $("body").on("click", "#cartoon2010", function(event) {
        event.preventDefault();
        $("#response").remove();
        var url = $(this).attr("href")
        $.ajax({
            method: "GET",
            url: url,
        }).done(function(response) {
            $("body").append(response)
        });
    });
});
