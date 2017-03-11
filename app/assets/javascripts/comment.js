document.addEventListener("turbolinks:load", function() {
  $("#comment-form").submit(function() {
    event.preventDefault();
    var url = this.action;
    var data = $(this).serialize();
    var callback = renderResponse.bind(this);

    $.post(url, data, callback);
  })

  $("#comment-button").click(function() {
    $("#comment-form-container").slideToggle();
  });

  $(".cancel-button").click(function() {
    $("#comment-form-container").slideToggle();
  });

  function renderResponse(response) {
    var container = $(this).data("ajax-submit");
    $("[data-ajax-replace="+container+"]").append(response);
    $("#comment-form-container").slideToggle(function() {
      $(this).find(".comment-submit-button").prop("disabled", false);
      $(this).find("textarea").val("");
    })
  }
});