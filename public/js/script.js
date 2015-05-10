$(document).ready(function(){
  var dislike_btn = $('#dislike_btn'),
      like_btn = $('#like_btn'),
      appearance_btn = $('#appearance_btn');

  like_btn.click(function(){
    $('.likes').append('<div class="form-group"><input type="text" class="form-control" name="likes[]" placeholder="Like"><i class="fa fa-times"></i></div>');
  });
  dislike_btn.click(function(){
    $('.dislikes').append('<div class="form-group"><input type="text" class="form-control" name="dislikes[]" placeholder="Dislike"><i class="fa fa-times"></i></div>');
  });
  appearance_btn.click(function(){
    $('.appearances').append('<div class="form-group"><input type="text" class="form-control" name="appearances[]" placeholder="Appearance"><i class="fa fa-times"></i></div>');
  });

  $('.lwrapper').on('click', '.fa-times',function(){
    $(this).parent('div').remove();
  });

      $('.message-btn').click(function () {
        $('.message-container').load('/dash')
    });
});