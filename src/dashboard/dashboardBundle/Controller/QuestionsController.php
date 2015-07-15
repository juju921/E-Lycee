<?php


namespace dashboard\dashboardBundle\Controller;

// Classes nécessaires à l'utilisation des annotations
use Sylius\Bundle\ResourceBundle\Controller\ResourceController;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;


// Classes nécessaires à l'affichage d'un formulaire
use Elycee\ElyceeBundle\Entity\Posts;
use Elycee\ElyceeBundle\Form\PostsType;
use Symfony\Component\HttpFoundation\Request as Request;
use Doctrine\Common\Util\Debug as Debug ;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\DependencyInjection\ContainerInterface;



class QuestionsController extends FOSRestController{






    public function indexAction()
    {
        PostController::setContainer();
        return array();
    }









}