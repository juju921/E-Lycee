<?php

namespace dashboard\dashboardBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

class DefaultController extends Controller
{
    /**
     * @Route("/dashboard/", name="dashboard.default.index" )
     * @Template("dashboarddashboardBundle:Default:dashboard.html.twig")
     */
    public function indexAction()
    {
        return array();
    }

    /**
     *
     * @Route("/dashboard/login", name="dashboard.default.login" )
     * @Template("dashboarddashboardBundle:dashboard:login.html.twig")
     */
    public function loginAction()
    {
        return array();
    }





}
