$(document).ready(function(){
  var dislike_btn = $('#dislike_btn'),
      like_btn = $('#like_btn'),
      appearance_btn = $('#appearance_btn');

  dislike_btn.click(function(){
    $('.dislikes').append('<input type="text" class="form-control" name="dislikes[]" placeholder="Dislike"><br/>');
  })
  like_btn.click(function(){
    $('.likes').append('<input type="text" class="form-control" name="likes[]" placeholder="Like"><br/>');
  });
  appearance_btn.click(function(){
    $('.appearances').append('<input type="text" class="form-control" name="appearances" placeholder="Appearance"><br/>');
  });
});