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

    /**
     *
     * @Route("/dashboard/user", name="dashboard.default.user" )
     * @Template("dashboarddashboardBundle:dashboard:user.html.twig")
     */
    public function userAction()
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:User');
        $users = $rc->findAll();

        return array(

            'users'=> $users

        );
    }


    /**
     *
     * @Route("/dashboard/articles", name="dashboard.default.articles" )
     * @Template("dashboarddashboardBundle:dashboard:articles.html.twig")
     */
    public function postsAction()
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $posts = $rc->findAll();

        return array(

            'posts'=> $posts

        );
    }







}
