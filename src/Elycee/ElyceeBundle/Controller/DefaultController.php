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







}
