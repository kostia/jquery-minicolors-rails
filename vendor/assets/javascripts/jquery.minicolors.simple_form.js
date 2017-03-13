$(document).on(window.Turbolinks ? 'turbolinks:load' : 'ready', function() {
  $('[data-minicolors]').each(function(i, elem) {
    var input = $(this);
    input.minicolors(input.data('minicolors'));
  });
});
