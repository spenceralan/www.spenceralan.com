var image = new Image();
image.onload = function() {
  $("#photo").addClass("loaded");
  $("#photo-container").show();
};
image.src = "assets/spencer_bw_80.jpg";