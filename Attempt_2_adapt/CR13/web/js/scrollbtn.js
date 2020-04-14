// Start of JQuery Code
$("document").ready(function() {
  $(document).scroll(function() {
    var y = $(this).scrollTop();
    if (y > 100) {
      $("#scrollBtn").fadeIn(300);
    } else {
      $("#scrollBtn").fadeOut(100);
    }
  });


});
// End of JQuery Code

document.getElementById('scrollBtn').addEventListener('click', () => window.scrollTo(0, 0));