$(document).ready(function() {
  $('.fly-form form :input').on('change input', function() {
    flyForm = $('.fly-form form').serialize();
    console.log(flyForm);
    $.post(
      "#{fly_form_path}",
      flyForm
    );
  }); 
});
