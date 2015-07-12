<?php

namespace dashboard\dashboardBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Elycee\ElyceeBundle\Form\PostsType;
use Elycee\ElyceeBundle\Entity\Posts;
use Symfony\Component\HttpFoundation\Request;
use FOS\RestBundle\Controller\FOSRestController;



class DefaultController extends FOSRestController
{

    /**
     * @Route("/dashboard/", name="dashboard.default.index" )
     * @Template("dashboarddashboardBundle:Default:dashboard.html.twig")
     */
    public function indexAction()
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $results = $rc->getCountPost();
        return array('results' => $results);



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
     * @Route("/users", name="dashboard.default.users" )
     * @Template("dashboarddashboardBundle:dashboard:user.html.twig")
     */
    public function getusersAction()
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
     * @Route("/articles", name="dashboard.default.getArticles" )
     * @Template("dashboarddashboardBundle:dashboard:articles.html.twig")
     */
    public function getArticlesAction()
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $posts = $rc->findAll();

        return array(

            'posts'=> $posts

        );
    }







}
