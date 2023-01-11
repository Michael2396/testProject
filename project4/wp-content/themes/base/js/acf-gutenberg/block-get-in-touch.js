jQuery(function ($) { // use jQuery code inside this to avoid "$ is not defined" error
    initFormValidation();
});

function ajaxPostMessage(data, dataLink) {
    jQuery.ajax({ // you can also use $.post here
        url: dataLink, // AJAX handler
        data: data, type: 'POST', beforeSend: function (xhr) {
            // button.text('Loading...'); // change the button text, you can also add a preloader image
        }, success: function (data) {
            if (data) {
                jQuery('.form-sent').addClass('active');
                setTimeout(function () {
                    jQuery('.form-sent').removeClass('active');
                }, 3000)
            } else {
                jQuery('.form-sent').removeClass('active');
            }
        }
    });
}


function initFormValidation() {
    jQuery('.form-validation').each(function () {
        let box = jQuery(this);
        let btn = box.find('.js-form-button');
        let inputEmail = box.find('.input-email');
        let inputText = box.find('.input-text');
        let textarea = box.find('.textarea');
        let dataLink = btn.attr('data-link');
        btn.click(function (e) {
            e.preventDefault();
            !inputText.val().length ? inputText.addClass('error') : inputText.removeClass('error');
            !inputEmail.val().length ? inputEmail.addClass('error') : inputEmail.removeClass('error');
            !textarea.val().length ? textarea.addClass('error') : textarea.removeClass('error');
            if (inputText.val().length && inputEmail.val().length && textarea.val().length) {
                let obj = {
                    action: 'form',
                    inputText: inputText.val(),
                    inputEmail: inputEmail.val(),
                    textarea: textarea.val()
                }
                ajaxPostMessage(obj, dataLink)
            }
        });
    })
}

