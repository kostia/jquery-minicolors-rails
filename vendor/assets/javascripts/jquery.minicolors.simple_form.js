$(document).on('ready turbolinks:load', function {
  $('[data-minicolors]').each(function(i, elem) {
    var input = $(this);
    input.minicolors(input.data('minicolors'));
  });
});
