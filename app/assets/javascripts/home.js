var image = new Image();
image.onload = function() {
  $('#photo').addClass('loaded');
};
image.src = 'assets/spencer_bw_80.jpg';