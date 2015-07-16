$(document).ready(function () {
    $('.collapse').collapse();
    // Récupère le div qui contient la collection de tags
    var collectionHolder = $('ul.tags');

// ajoute un lien « add a tag »
    var $addTagLink = $('<a href="#" class="add_tag_link">Ajouter une reponses</a>');
    var $newLinkLi = $('<li></li>').append($addTagLink);

    jQuery(document).ready(function() {
        // ajoute l'ancre « ajouter un tag » et li à la balise ul
        collectionHolder.append($newLinkLi);

        $addTagLink.on('click', function(e) {
            // empêche le lien de créer un « # » dans l'URL
            e.preventDefault();

            // ajoute un nouveau formulaire tag (voir le prochain bloc de code)
            addTagForm(collectionHolder, $newLinkLi);
        });
    });

    function addTagForm(collectionHolder, $newLinkLi) {
        // Récupère l'élément ayant l'attribut data-prototype comme expliqué plus tôt
        var prototype = collectionHolder.attr('data-prototype');

        // Remplace '__name__' dans le HTML du prototype par un nombre basé sur
        // la longueur de la collection courante
        var newForm = prototype.replace(/__name__/g, collectionHolder.children().length);

        // Affiche le formulaire dans la page dans un li, avant le lien "ajouter un tag"
        var $newFormLi = $('<li></li>').append(newForm).fadeIn('slow');
        $newLinkLi.before($newFormLi);
    }

    function addTagFormDeleteLink($tagFormLi) {
        var $removeFormA = $('<a href="#">Supprimer ce tag</a>');
        $tagFormLi.append($removeFormA);

        $removeFormA.on('click', function(e) {
            // empêche le lien de créer un « # » dans l'URL
            e.preventDefault();

            // supprime l'élément li pour le formulaire de tag
            $tagFormLi.remove();
        });
    }



});
