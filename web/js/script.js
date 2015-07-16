$(document).ready(function () {
    var index = 0;
    var prototype = $('ul.form_choices').data('prototype');
    $('#add_choices').on('click', function (e) {
        e.preventDefault();
        var newform = prototype.replace(/_name_/g, index++);
        var newli = $('<li></li>');
        newli.append(newform);
        $(this).before(newli).fadeIn('slow')

    })


});
