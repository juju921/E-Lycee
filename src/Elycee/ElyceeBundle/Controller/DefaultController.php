<?php

namespace Elycee\ElyceeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{

    /**
     * @Route("/home", name="ElyceeBundle.default.index")
     * @Template("ElyceeElyceeBundle:Default:index.html.twig")
     */
    public function indexAction()
    {
        return array();
    }



    /**
     * @Route("/actu", name="ElyceeBundle.default.actu")
     * @Template("ElyceeElyceeBundle:Default:actu.html.twig")
     */
    public function actuAction()
    {
        return array();
    }


    /**
     * @Route("/lelycee", name="ElyceeBundle.default.lelycee")
     * @Template("ElyceeElyceeBundle:Default:lelycee.html.twig")
     */
    public function lelyceeAction()
    {
        return array();
    }

    /**
     * @Route("/contact", name="ElyceeBundle.default.contact")
     * @Template("ElyceeElyceeBundle:Default:contact.html.twig")
     */
    public function contactAction()
    {
        return array();
    }



    /**
     * @Route("/mentions_legales", name="ElyceeBundle.default.ml")
     * @Template("ElyceeElyceeBundle:Default:ml.html.twig")
     */
    public function mlAction()
    {
        return array();
    }











}
