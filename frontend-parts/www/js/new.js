$(function() {
  $('.begin').on('click',function() {
      $.ajax({
          type: 'POST',
          url: 'http://localhost:3000/home/create',
          data:{
              'name':$('#formLogin').val(),
              'password':$('#loginGo').val()
          }
      })
      .done( (data) => {
          $('.result').html(data);
          console.log(data);
      })
      .fail( (data) => {
          $('.result').html(data);
          console.log(data);
      })
      .always( (data) => {
      });
  });
});