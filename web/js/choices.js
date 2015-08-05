var choiceCount = '{{ form.choices|length }}';
var choiceList = jQuery('ul.choices');

$(document).ready(function () {
    if ($('ul.choices li').length == 0) {
        choiceCount = 1;
        addChoice(choiceList);
    }
    $('.add_choice_link').click(function (e) {
        e.preventDefault();
        addChoice(choiceList);
        showButton();
        deleteChoice();
    });

    function showButton() {
        if ($('ul.choices li').length == 5) {
            $('.add_choice_link').hide();
        } else {
            $('.add_choice_link').show();
        }
    }

    function deleteChoice() {
        $('.delete_choice').click(function (e) {
            $(this).parent().remove();
            showButton();
            e.preventDefault();
        });
    }

    function addChoice(choiceList) {
        if ($('ul.choices li').length < 5) {
            var newWidget = choiceList.attr('data-prototype');
            newWidget = '<label value="' + $('ul.choices li').length + '" >Réponse n°' + choiceCount + ' :</label>' + newWidget.replace(/__name__/g, choiceCount) + '<a href="#" class="delete_choice btn btn-danger"><i class="fa fa-times"></i></a>';
            choiceCount++;
            var newLi = jQuery('<li class="list-group-item"></li>').html(newWidget);
            newLi.appendTo(choiceList);
        }
    }
});