$(document).ready(function() {
// var checked_index;
// var current_player;

 $('body').on('click','.square', function(event){
    console.log("square")

    var checkbox = $(this).attr('name');
    // checked_index = check;
      if ($('#player').attr('name') == "player_one"){
        if ($(this).html("")){
        $(this).append("<img src='/images/o.png'>");
        // current_player = "player_one";
        }
      }
      else{
         if ($(this).html("")){
        $(this).append("<img src='/images/x.png'>");
         // current_player = "player_one";
      }
    }

  });


setInterval(ajaxCall, 3000);
function ajaxCall() {
  console.log("call")
  var link = $('#game_id').val()
        $.ajax({
          type: "GET",
          url: link,
          // data: {"checked_index": checked_index, "current_player": current_player},
          success: function(data){
             document.body.innerHTML = data;
             console.log("ajax")
           }
      });
  }
});
