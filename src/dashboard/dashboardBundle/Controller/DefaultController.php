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
use Pagerfanta\Pagerfanta;
use Pagerfanta\Adapter\DoctrineORMAdapter;
use FOS\RestBundle\Controller\FOSRestController;
use Pagerfanta\Exception\NotValidCurrentPageException;



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
        $rcc = $doctrine->getRepository('ElyceeElyceeBundle:Comments');
        $rcfiche = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        /*$results = $rc->getCountPost();*/
        $countusr = $rcu->getCountUser();
        $countcomments =  $rcc->getCountComments();
        $results = $rc->getThreeLastPost();
        $resultsFiches = $rcfiche->getThreeLastFiches();
        $countFiches = $rcfiche->getCountFiches();
        return array(
            'countcomments'=> $countcomments,
            'results' => $results,
            'countusr' => $countusr,
            'countFiches'=> $countFiches,
            'resultsFiches'=>$resultsFiches,
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
     * @Route("/articles/{id}/{page}", name="dashboard.default.getArticles",  defaults={"page" = 1},   requirements={"page" = "\d+"} )
     * @Template("dashboarddashboardBundle:dashboard:articles.html.twig")
     */
    public function getArticlesAction($id, $page, Request $request)
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $em = $this->getDoctrine()->getEntityManager();



        $qb = $this->getDoctrine()->getEntityManager()->createQueryBuilder()
            ->select('Posts')
            ->from('Elycee\ElyceeBundle\Entity\Posts', 'Posts')
        ;


        $adapter = new DoctrineORMAdapter($qb);
        $pagerfanta = new Pagerfanta($adapter);
        $pagerfanta->setMaxPerPage(1);
        $pagerfanta->setCurrentPage($page);
        $entities = $pagerfanta->getCurrentPageResults();


        try {

            $entities = $pagerfanta
                // Le nombre maximum d'éléments par page
                ->setMaxPerPage(3)
                // Notre position actuelle (numéro de page)
                ->setCurrentPage($page)
                // On récupère nos entités via Pagerfanta,
                // celui-ci s'occupe de limiter la requête en fonction de nos réglages.
                ->getCurrentPageResults()
            ;
        } catch (\Pagerfanta\Exception\NotValidCurrentPageException $e) {
            throw $this->createNotFoundException("Cette page n'existe pas.");

        }


        /*$posts = $rc->findAll();*/
        $posts   = $rc->getPostByAuteur($id);

        return array(

            'posts'=> $posts,
            'entities' => $entities,
            'pagerfanta' => $pagerfanta,

        );
    }







}
