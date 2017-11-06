<home-modals>
    <a href="/#/explore"><button id="krowdspace-modal-cta" class="btn btn-primary">
    <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" /><span id="krowdspace-modal-text">EXPLORE NOW</span>
</button></a>
<script>
$(document).ready(function () {
  if ($(window).width() > 991) {

    setTimeout(function () {
        $('#krowdspace-modal-cta').fadeIn(300);
    }, 8000);

    $("#krowdspace-modal-cta").mouseover(function () {
      $("#krowdspace-modal-text").fadeIn(300);
    });

    $("#krowdspace-modal-cta").mouseleave(function () {
      $("#krowdspace-modal-text").fadeOut(300);
    });
  }
});

$(window).resize(function() {
  if($(window).width() < 990)
  $("#krowdspace-modal-cta").fadeOut(300);
});
</script>
</home-modals>
<!-- Validated Content October 26th, 2017 -->
