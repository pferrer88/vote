// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.purr
//= require jquery.validate
//= require messages_es
//= require best_in_place
//= require jquery.pjax
//= require twitter/bootstrap
//= require_self

$(document).ready(function() {
	// $('a').pjax('#main');
	// $(".alert-message").alert();
	// $( ".datepicker" ).datepicker();
	// $("#user_new").validate();
	$("#user_new").validate({
			
				messages: {
					'user[name]': {
						required: '*requerido*'
					},
					'user[lastName]': {
						required: '*requerido*'
					},
					'user[email]': {
						required: '*requerido*',
						email: 'Email no bueno'
					},
					'user[city]': {
						required: '*requerido*'
					},
					'user[state_id]': {
						required: '*requerido*'
					},
					'user[password]': {
						required: '*requerido*',
						minlength: 'Minimo 6'
					},
					'user[password_confirmation]': {
						required: '*requerido*',
						minlength: 'Minimo 6'
					}
				},
		
				rules: {
								'user[password]': {
									required:true,
									minlength:6
								}
					}
		
				});
});



