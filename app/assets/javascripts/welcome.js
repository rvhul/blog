$(document).ready(function($) {
  console.log('hello')

  $('.wrapper').restive({
    breakpoints: ['240', '320', '480', '640', '960'],
    classes: ['css-240', 'css-320', 'css-480', 'css-640', 'css-960'],
    force_dip: true
  });
})
