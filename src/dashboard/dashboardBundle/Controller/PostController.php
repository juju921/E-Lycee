<?php


namespace dashboard\dashboardBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request as Request;
use Symfony\Component\Security\Core\Security;

use Elycee\ElyceeBundle\Entity\Posts;
use Elycee\ElyceeBundle\Form\PostsType;
use Doctrine\Common\Util\Debug as Debug;
use FOS\RestBundle\Controller\FOSRestController;


class PostController extends Controller
{


    /**
     * @Route("/post/{id}   ", name="dashboarddashboardBundle:dashboard:show")
     * @Template("dashboarddashboardBundle:dashboard:showpost.html.twig")
     */
    public function showAction($id)
    {

        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $news = $rc->findOneById($id);
        return array('news' => $news);
    }


    /**
     * @Route(
     *      "/posts/new",
     *      name="public.contact.form",
     * )
     * @Template("dashboarddashboardBundle:dashboard:form.html.twig")
     * @Method({"POST","GET"})
     */

    public function PostsgetAction(Request $request)
    {


        $doctrine = $this->getDoctrine();
        $em = $doctrine->getManager();
        $entity = new Posts();
        $type = new PostsType();
        $form = $this->createForm($type, $entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            //$data = $form->getData();

            $em->flush();
            // message en session
            $request->getSession()->getFlashBag()->set('notice', 'l article a été enregistre');

            // on redirige l'utilisateur
            $url = $this->generateUrl('dashboard.default.user');
            return $this->redirect($url);


            $message = "L'article a été ajouté";
        }

        return array(
            'form' => $form->createView()
        );


    }

    /**
     * @Route(
     *      "/posts/update/{id}",
     *      name="dashboard.posts.update",
     * )
     * @Template("dashboarddashboardBundle:dashboard:postsedit.html.twig")
     * @Method({"POST","GET"})
     */
    public function editAction(Request $request, $id)
    {

        $doctrine = $this->getDoctrine();
        $em = $doctrine->getManager();
        if (!$id) {
            $entity = new Contact();
            $message = "Le contact a été ajouté";
        } else {


            $repository = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
            $entity = $repository->find($id);
            $message = "Le contact a été mis à jour";
        }

        $type = new PostsType();
        $form = $this->createForm($type, $entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            //$data = $form->getData();
            $em->flush();
            // message en session
            $request->getSession()->getFlashBag()->set('notice', $message);

            // on redirige l'utilisateur
            $url = $this->generateUrl('dashboard.default.index');
            return $this->redirect($url);


            $message = "L'article a été ajouté";


        }
        return array(
            'form' => $form->createView(),

        );


    }

    /**
     * @Route(
     *      "/posts/delete/{id}",
     *      name="dashboard.posts.delete",
     * )
     * @Method({"POST","GET"})
     */
    public function deleteAction(Request $request, $id)
    {
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $contact = $repository->find($id);
        $em = $doctrine->getManager();
        // suppression du contact ciblé
        $em->remove($contact);
        $em->flush();
        // message en session
        $message = "Le contact a été supprimé";
        $request->getSession()->getFlashBag()->set('notice', $message);
        // on redirige l'utilisateur
        $url = $this->generateUrl('dashboard.default.index');
        return $this->redirect($url);
    }

    /**
     * @Route(
     *      "/posts/edit/status/{id}",
     *      name="dashboard.posts.editstatus",
     * )
     * @Template("dashboarddashboardBundle:dashboard:posteditstatus.html.twig")
     * @Method({"POST","GET"})
     */
    public function editStatusAction(Request $request, $id)
    {

        $doctrine = $this->getDoctrine();
        $em = $doctrine->getManager();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $repositoryStatus = $doctrine->getRepository('ElyceeElyceeBundle:Status');
        $post = $repository->find($id);
        if ($post->getStatus()->getId() == 1) {
            $status = $repositoryStatus->find(2);
            $post->setStatus($status);
            $message = "Votre Article n'est plus publié";
            $request->getSession()->getFlashBag()->set('notice', $message);
        } else {
            $status = $repositoryStatus->find(1);
            $post->setStatus($status);
            $message = "Votre Article est désormais publié";
            $request->getSession()->getFlashBag()->set('notice', $message);
        }
        $em->persist($post);
        $em->flush();


        $url = $this->generateUrl('dashboard.default.index');
        return $this->redirect($url);


    }





}

