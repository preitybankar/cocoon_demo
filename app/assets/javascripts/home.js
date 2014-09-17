$(document).ready(function(){
      $("#seasonID").change(function(){
        var id = $(this).children(":selected").val();
        var params = 'season_id=' + id;
        $.ajax({
          url: "/budget_lines",
          data: params
        });
    });
});
