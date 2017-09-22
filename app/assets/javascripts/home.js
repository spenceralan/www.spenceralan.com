var image = new Image();
image.onload = function() {
  $("#photo").addClass("loaded");
  $("#photo-container").show();
};
image.src = "https://s3-us-west-2.amazonaws.com/spenceralan/home/spencer_bw_80.jpg";