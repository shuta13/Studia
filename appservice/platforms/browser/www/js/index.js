$(function() {
    $('.begin').on('click',function() {
        $.ajax({
            type: 'GET',
            url: 'http://localhost:3000/',
            data:{


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