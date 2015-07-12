<?php


namespace Elycee\ElyceeBundle\Controller;

// Classes nécessaires à l'utilisation des annotations
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;



use Doctrine\Common\Util\Debug as Debug ;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\DependencyInjection\ContainerInterface;


class PostController {





    /**

     * @Template("ElyceeElyceeBundle:post:posts.html.twig")
     */
    public function indexAction()
    {

        return array();
    }



} 