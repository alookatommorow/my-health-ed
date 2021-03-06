document.addEventListener("turbolinks:load", function() {
  $("#comment-form").submit(function() {
    event.preventDefault();
    var url = this.action,
        data = $(this).serialize(),
        callback = renderResponse.bind(this);

    $.post(url, data, callback);
  });

  $("#comment-button").click(function() {
    $("#comment-form-container").slideToggle();
  });

  $(".cancel-button").click(function() {
    $("#comment-form-container").slideToggle();
  });

  $("[data-analytics-event]").click(function() {
    ga("send", {
      hitType: "event",
      eventCategory: "links",
      eventAction: "click"
    });
  })

  function renderResponse(response) {
    var container = $(this).data("ajax-submit");
    sendAnalyticsEvent("create");
    $("[data-ajax-replace="+container+"]").append(response);
    $("#comment-form-container").slideToggle(function() {
      $(this).find(".comment-submit-button").prop("disabled", false);
      $(this).find("textarea").val("");
    })
  }

  function sendAnalyticsEvent(action) {
    ga("send", {
      hitType: "event",
      eventCategory: "comments",
      eventAction: action
    });
  }
});