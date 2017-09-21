var image = new Image();
image.onload = function() {
  document.getElementById('photo').className += 'loaded';
};
image.src = 'assets/spencer_bw_80.jpg';