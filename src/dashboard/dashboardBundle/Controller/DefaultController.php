<?php

namespace dashboard\dashboardBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Elycee\ElyceeBundle\Form\PostsType;
use Elycee\ElyceeBundle\Entity\Posts;
use Elycee\ElyceeBundle\Form\UserType;
use Elycee\ElyceeBundle\Entity\User;
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
        $rcu = $doctrine->getRepository('ElyceeElyceeBundle:User');
        /*$results = $rc->getCountPost();*/
        $countusr = $rcu->getCountUser();
        $results = $rc->getThreeLastPost();
        return array(
            'results' => $results,
            'countusr' => $countusr
        );



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
     * @Route("/articles/{id}", name="dashboard.default.getArticles" )
     * @Template("dashboarddashboardBundle:dashboard:articles.html.twig")
     */
    public function getArticlesAction($id)
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        /*$posts = $rc->findAll();*/
        $posts   = $rc->getPostByAuteur($id);

        return array(

            'posts'=> $posts

        );
    }







}
