$(document).ready(function () {
   let leadForm = $('#lead-form');

   leadForm.on('submit', function (e) {
      e.preventDefault();
      let formData = $(leadForm).serialize();

      $.ajax({
         url: $(leadForm).attr('action'),
         type: 'post',
         data: formData,
         dataType: 'json',

         beforeSend: function() {
            $(leadForm).addClass('loading');
         },

         success: function(response){
            setTimeout(function () {

               if (response.send == 'success') {
                  leadForm.find('input')
                      .removeClass('error')
                      .val('');

                  $('.success-send').show();
                  setTimeout(function () {
                     $('.success-send').hide();
                  }, 3000);
               } else {

                  if (response.errors.user_name == 'error') {
                     leadForm.find('[name=user_name]').addClass('error');
                  }

                  if (response.errors.user_email == 'error') {
                     leadForm.find('[name=user_email]').addClass('error');
                  }

                  if (response.errors.user_phone == 'error') {
                     leadForm.find('[name=user_phone]').addClass('error');
                  }
               }

               $(leadForm).removeClass('loading');
            }, 1000);
         },
      });
   });

   leadForm.find('input').focus(function() { $(this).removeClass('error'); });
});