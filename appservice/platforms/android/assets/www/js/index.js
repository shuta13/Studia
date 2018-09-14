$(function() {
    $('.begin').on('click',function() {
        $.ajax({
            type: 'GET',
            url:'http://localhost3000/menu',
            dateType: 'html'
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