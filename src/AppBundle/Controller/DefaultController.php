<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;


class DefaultController extends Controller
{
    /**
     * @Route("/app/example", name="homepage")
     * @Template("ElyceeBundle:Default:index.html.twig  ")
     *
     */
    public function indexAction()
    {
        return array();
    }
}
