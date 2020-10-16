$(function() {
  console.log("jquery is loaded")

  $(".vote").on("click", ".upvote, .downvote", function(){
    var post_id = $(this).parent().data("id"),
      is_upvote = $(this).hasClass("upvote")
    console.log("post_id", post_id)
    console.log("is_upvote", is_upvote)
    $.ajax({
      url: "/post/vote",
      method: "POST",
      data: { post_id: post_id, upvote: is_upvote },
      success: function(){
        console.log("success")
      }
    })
  })
})