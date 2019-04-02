$(function() {
    $('.begin').on('click',function() {
        $.ajax({
            type: 'POST',
            url: 'https://stable-study.herokuapp.com/home/authentication',
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