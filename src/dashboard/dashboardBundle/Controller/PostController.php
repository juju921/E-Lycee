<?php


namespace dashboard\dashboardBundle\Controller;

// Classes nécessaires à l'utilisation des annotations
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





class PostController extends Controller {




    /**
     * @Route("/dashboard/test", name="dashboard.default.test" )
     * @Template("dashboarddashboardBundle:Default:test.html.twig")
     */
    public function testAction(Request $request)
    {


        $doctrine   = $this->getDoctrine();
        $em         = $doctrine->getManager();
        $entity = new Posts();


        $type   = new PostsType();
        $form   = $this->createForm($type, $entity);
        $form->handleRequest($request);
        if ($form->isValid() && $form->isSubmitted()){
            $data = $form->getData();
            $em->persist($data);
            $em->flush();
            // message en session
            $request->getSession()->getFlashBag()->set('notice',$message);
            // on redirige l'utilisateur
            $url = $this->generateUrl('dashboard.default.user');
            return $this->redirect($url);



        }
        $message = "L'article a été ajouté";
        return array(
            'form' => $form->createView()
        );



    }


    /**
     * @Route(
     *      "/dashboard/new",
     *      name="public.contact.form",
     *      defaults = { "id" = null }
     * )
     * @Template("dashboarddashboardBundle:dashboard:form.html.twig")
     * @Method({"POST","GET"})
     */

    public function PostsgetAction(Request $request, $id)
    {


        $doctrine   = $this->getDoctrine();
        $em         = $doctrine->getManager();
        if ( !$id ){
            $entity = new Posts();
            $message = "L'article a été ajouté";
        }
        else {
            $repository = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
            $entity    = $repository->find($id);
            $message   = "L'article a été mis à jour";
        }
        $type   = new PostsType();
        $form   = $this->createForm($type, $entity);
        $form->handleRequest($request);
        if ($form->isValid() && $form->isSubmitted()){
            $data = $form->getData();
            $em->persist($data);
            $em->flush();
            // message en session
            $request->getSession()->getFlashBag()->set('notice',$message);
            // on redirige l'utilisateur
            $url = $this->generateUrl('dashboard.default.user');
            return $this->redirect($url);



        }
        return array(
            'form' => $form->createView()
        );




    }





} 