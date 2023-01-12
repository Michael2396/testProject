jQuery(function () {
    initBurger();
});

function initBurger() {
    jQuery('.opener').click(function () {
        jQuery('body').toggleClass('is-menu');
    })
}