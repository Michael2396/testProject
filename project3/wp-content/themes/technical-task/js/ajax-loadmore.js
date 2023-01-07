jQuery(function ($) { // use jQuery code inside this to avoid "$ is not defined" error
  $('.js-loadmore').click(function () {
    let dataLink = jQuery(this).attr('data-link');
    let dataPaged = parseInt(jQuery(this).attr('data-paged'));
    let dataMaxNumPages = parseInt(jQuery(this).attr('data-max-pages'));
    var button = $(this),
      data = {
        'action': 'loadmore',
        'post_type': 'product',
        'posts_per_page': 4,
        'posts_data_page': dataPaged + 1
      };

    $.ajax({ // you can also use $.post here
      url: dataLink, // AJAX handler
      data: data,
      type: 'POST',
      beforeSend: function (xhr) {
        button.text('Loading...'); // change the button text, you can also add a preloader image
      },
      success: function (data) {
        if (data) {
          button.attr('data-paged', dataPaged++)
          jQuery('.products-section .products').append(data);
          button.text('Load More');
          if (dataPaged === dataMaxNumPages) {
            button.remove();
          }
        } else {
          button.remove(); // if no data, remove the button as well
        }
      }
    });
  });
});