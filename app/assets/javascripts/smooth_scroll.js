$(document).ready(function() {
    console.log("JS LOADED");

    $("#side-nav ul li a[href^='#']").on('click', function(e) {
    console.log("NAV CLICKED");
        // prevent default anchor click behavior
        e.preventDefault();

        // store hash
        var hash = this.hash;

        // animate
        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 300, function(){

            // when done, add hash to url
            // (default click behaviour)
            window.location.hash = hash;
        });

    });
});