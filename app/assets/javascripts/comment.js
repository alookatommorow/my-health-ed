document.addEventListener("turbolinks:load", function() {
  $("#comment-form").submit(function() {
    event.preventDefault();
    var url = this.action;
    var data = $(this).serialize();
    var callback = renderResponse.bind(this);

    $.post(url, data, callback);
  })

  function renderResponse(response) {
    var container = $(this).data("ajax-submit");
    $("[data-ajax-replace="+container+"]").append(response);
  }
});