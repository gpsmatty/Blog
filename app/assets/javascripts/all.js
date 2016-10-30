$(document).ready(function () {
  // function debug() { alert('alert alert alert alert') }

  function addFooterHeight() {
    var footerHeight = $('#default-footer .container').height();
    $('#default-footer').css('height', footerHeight + 'px');
    $('body').css('margin-bottom', footerHeight + 'px');
  }

  $(window).resize(addFooterHeight);
  $(window).load(addFooterHeight);
});
