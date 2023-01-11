jQuery(function () {
    initFancybox();
    initSlickCarousel();
    checkValueItem();
});

function checkValueItem() {

    let item = jQuery('.js-slick-dots li').length;
    jQuery('.js-slick-dots').append(`<span>0${item}</span>`)
}

// slick init
function initSlickCarousel() {
    jQuery('.box-slider').slick({
        slidesToScroll: 1,
        rows: 0,
        prevArrow: '<button class="slick-prev"><svg width="20" height="10" viewBox="0 0 20 10" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M0.229141 4.44711C0.229376 4.44687 0.22957 4.4466 0.229843 4.44636L4.31203 0.383869C4.61785 0.0795337 5.1125 0.0806662 5.41691 0.386525C5.72129 0.692345 5.72012 1.18699 5.4143 1.49137L2.67352 4.21886H19.2188C19.6502 4.21886 20 4.56863 20 5.00011C20 5.4316 19.6502 5.78136 19.2188 5.78136H2.67355L5.41426 8.50886C5.72008 8.81323 5.72125 9.30788 5.41687 9.6137C5.11246 9.9196 4.61777 9.92065 4.31199 9.61636L0.229805 5.55386C0.22957 5.55363 0.229374 5.55335 0.229101 5.55312C-0.0768757 5.24773 -0.0758991 4.75148 0.229141 4.44711Z" fill="black"/>\n' +
            '</svg>\n</button>',
        nextArrow: '<button class="slick-next"><svg width="20" height="10" viewBox="0 0 20 10" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M0.229141 4.44711C0.229376 4.44687 0.22957 4.4466 0.229843 4.44636L4.31203 0.383869C4.61785 0.0795337 5.1125 0.0806662 5.41691 0.386525C5.72129 0.692345 5.72012 1.18699 5.4143 1.49137L2.67352 4.21886H19.2188C19.6502 4.21886 20 4.56863 20 5.00011C20 5.4316 19.6502 5.78136 19.2188 5.78136H2.67355L5.41426 8.50886C5.72008 8.81323 5.72125 9.30788 5.41687 9.6137C5.11246 9.9196 4.61777 9.92065 4.31199 9.61636L0.229805 5.55386C0.22957 5.55363 0.229374 5.55335 0.229101 5.55312C-0.0768757 5.24773 -0.0758991 4.75148 0.229141 4.44711Z" fill="black"/>\n' +
            '</svg>\n</button>',
        dots: true,
        dotsClass: 'slick-dots',
        infinite: false,
        appendArrows: jQuery('.js-box-arrow'),
        appendDots: jQuery('.js-slick-dots')
    });
}

// lightbox init
function initFancybox() {
    jQuery('a.lightbox, [data-fancybox]').fancybox({
        parentEl: 'body',
        margin: [50, 0]
    });
}