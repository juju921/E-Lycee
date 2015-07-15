E-Lycee
=======

#Pré-requis

- MySQL 5.6
- Php 5.5 (avec l'extension curl)

#Installation

1. Cloner sur le serveur
2. Exécuter : 
  - "php composer.phar update"
    - database name : elycee
    - pour le reste, laisser par defaut
  - "php app/console assets:install --symlink"
  - "php app/console doctrine:database:create"
  - "php app/console doctrine:schema:update --force"
3. Ouvrir "http://localhost/E-Lycee/web/app_dev.php/home" dans un navigateur


A Symfony project created on June 25, 2015, 2:53 pm.
