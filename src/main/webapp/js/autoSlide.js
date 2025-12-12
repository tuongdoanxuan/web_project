document.addEventListener('DOMContentLoaded', function ()
{
    // DOMContentLoaded ensures the code runs after the HTML is fully loaded
    var galleryRoot = document.querySelector('.main-gallery .main-image');
    // if the gallery is not on the page
    if (!galleryRoot) {
        return;
    }

    var slides = galleryRoot.getElementsByTagName('img');
    var dots = galleryRoot.getElementsByClassName('dot');
    var nextBtn = galleryRoot.getElementsByClassName('next')[0];
    var prevBtn = galleryRoot.getElementsByClassName('prev')[0];

    var currSlide = 0;
    // find the current active slide
    for (var i = 0; i < slides.length; i++) {
        if (slides[i].classList && slides[i].classList.contains('active')) {
            currSlide = i;
            break;
        }
    }

    // make sure the current slide and dot are active
    if (slides[currSlide]) {
        slides[currSlide].classList.add('active');
    }
    if (dots[currSlide]) {
        dots[currSlide].classList.add('active');
    }

    // interval (1 second)
    var INTERVAL_MS = 2000;
    var timer = null;

    // show slide at given index
    function showSlide(index) {
        // remove old classes
        if (slides[currSlide]) {
            slides[currSlide].classList.remove('active');
        }
        if (dots[currSlide]) {
            dots[currSlide].classList.remove('active');
        }

        // reset index if out of bounds
        if (index < 0)
            index = slides.length - 1;
        if (index >= slides.length)
            index = 0;

        currSlide = index;

        // add new classes
        if (slides[currSlide]) {
            slides[currSlide].classList.add('active');
        }
        if (dots[currSlide]) {
            dots[currSlide].classList.add('active');
        }
    }

    function nextSlide() {
        showSlide(currSlide + 1);
    }

    function prevSlide() {
        showSlide(currSlide - 1);
    }

    function startAuto() {
        stopAuto();
        timer = setInterval(nextSlide, INTERVAL_MS);
    }

    function stopAuto() {
        if (timer !== null) {
            clearInterval(timer);
            timer = null;
        }
    }

    // start auto sliding
    startAuto();

    // pause when mouse is over the gallery
    galleryRoot.addEventListener('mouseenter', function () {
        stopAuto();
    });
    galleryRoot.addEventListener('mouseleave', function () {
        startAuto();
    });

    // next/prev buttons
    if (nextBtn) {
        nextBtn.addEventListener('click', function (e) {
            e.preventDefault();
            stopAuto();
            nextSlide();
            startAuto();
        });
    }
    if (prevBtn) {
        prevBtn.addEventListener('click', function (e) {
            e.preventDefault();
            stopAuto();
            prevSlide();
            startAuto();
        });
    }

    // dots: add click handlers (use closure to capture index)
    for (var d = 0; d < dots.length; d++) {
        (function (idx) {
            dots[idx].addEventListener('click', function () {
                stopAuto();
                showSlide(idx);
                startAuto();
            });
        })(d);
    }
});