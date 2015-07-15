$(document).ready(function(){

    var i = $('input').size() ;

    $('#add').click(function() {
        $('<div><input type="text" class="form-control" name="dynamic[]" value="' + i + '" /></div>').fadeIn('slow').appendTo('.level');
        i++;
    });

    $('#remove').click(function() {
        if(i > 1) {
            $('.field:last').remove();
            i--;
        }
    });

    $('#reset').click(function() {
        while(i > 2) {
            $('.field:last').remove();
            i--;
        }
    });

// here's our click function for when the forms submitted


});
