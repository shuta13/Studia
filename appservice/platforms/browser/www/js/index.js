$(function() {
    $('.begin').on('click',function() {
        $.ajax({
            type: 'GET',
            url:'http://localhost:3000/menu',

        })
        .done( (data) => {
            $('.result').json(data);
            console.log(data);
        })
        .fail( (data) => {
            $('.result').json(data);
            console.log(data);
        })
        .always( (data) => {
        });
    });
});