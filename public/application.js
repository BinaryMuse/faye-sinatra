$(function() {
  $("#create-room").click(function() {
    $("#join").hide();
    $("#create").toggle();
  });

  $("#join-room").click(function() {
    $("#create").hide();
    $("#join").toggle();
  });
});
