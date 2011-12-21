# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
 	$("#user_new").validate({

			messages: {
				'user[name]': {
					required: '*requerido*'
				}
				'user[lastName]': {
					required: '*requerido*'
				}
				'user[email]': {
					required: '*requerido*'
					email: 'Email no bueno'
				}
				'user[city]': {
					required: '*requerido*'
				}
				'user[state_id]': {
					required: '*requerido*'
				}
				'user[password]': {
					required: '*requerido*',
					minlength: 'Minimo 6'
				}
				'user[password_confirmation]': {
					required: '*requerido*',
					minlength: 'Minimo 6'
				}
			}
			
			rules: {
							'user[password]': {
								required:true,
								minlength:6
							}
				}
			
		});