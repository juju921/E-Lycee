<?php

namespace Elycee\ElyceeBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Nelmio\ApiDocBundle\Annotation\ApiDoc;
use FOS\UserBundle\Controller\SecurityController as BaseController;
use Elycee\ElyceeBundle\Form\ContactType;
use Elycee\ElyceeBundle\Entity\Contact;
use Elycee\ElyceeBundle\Entity\Comments;
use Elycee\ElyceeBundle\Form\CommentsType;


class DefaultController extends BaseController
{

    /**
     * @Route("/home", name="ElyceeBundle.default.index")
     * @Template("ElyceeElyceeBundle:Default:index.html.twig")
     */
    public function indexAction(Request $request)
    {

        /** @var $session \Symfony\Component\HttpFoundation\Session\Session */
        $fb = $this->get('session')->getFlashBag();
        $fb->set('login', "vous êtes bien connectés");
        $session = $request->getSession();
        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $results = $rc->getThreeLastPost();
        return array(
            'results' => $results
        );

        if (class_exists('\Symfony\Component\Security\Core\Security')) {
            $authErrorKey = Security::AUTHENTICATION_ERROR;
            $lastUsernameKey = Security::LAST_USERNAME;

        } else {
            // BC for SF < 2.6
            $authErrorKey = SecurityContextInterface::AUTHENTICATION_ERROR;
            $lastUsernameKey = SecurityContextInterface::LAST_USERNAME;
        }

        // get the error if any (works with forward and redirect -- see below)
        if ($request->attributes->has($authErrorKey)) {
            $error = $request->attributes->get($authErrorKey);
        } elseif (null !== $session && $session->has($authErrorKey)) {
            $error = $session->get($authErrorKey);

            $session->remove($authErrorKey);
        } else {
            $error = null;
        }

        if (!$error instanceof AuthenticationException) {
            $error = null; // The value does not come from the security component.
        }

        // last username entered by the user
        $lastUsername = (null === $session) ? '' : $session->get($lastUsernameKey);

        if ($this->has('security.csrf.token_manager')) {
            $csrfToken = $this->get('security.csrf.token_manager')->getToken('authenticate')->getValue();
        } else {
            // BC for SF < 2.4
            $csrfToken = $this->has('form.csrf_provider')
                ? $this->get('form.csrf_provider')->generateCsrfToken('authenticate')
                : null;
        }

        return $this->renderLogin(array(
            'last_username' => $lastUsername,
            'error' => $error,
            'csrf_token' => $csrfToken,
        ));

    }

    /**
     * @Route("/actualites", name="ElyceeBundle.default.actualites")
     * @Template("ElyceeElyceeBundle:Default:actualites.html.twig")
     */
    public function actualitesAction()
    {


        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $results = $rc->getThePost();
        
        return array('results' => $results);


    }


    /**
     * @Route("/actu/{id}   ", name="ElyceeBundle.default.actu")
     * @Template("ElyceeElyceeBundle:Default:actu.html.twig")
     */
    public function actuAction(Request $request, $id)
    {


        $doctrine = $this->getDoctrine();
        $rc = $doctrine->getRepository('ElyceeElyceeBundle:Posts');
        $news = $rc->findOneById($id);


        $user = $this->getUser();
        $userOnline = false;
        if (true === $this->get('security.context')->isGranted(
                'IS_AUTHENTICATED_FULLY'
            )
        ) {
            $userOnline = true;
        }


        $commentaire = new Comments();
        $commentairetype = new CommentsType();
        $formCommentaire = $this->createForm($commentairetype, $commentaire);
        $formCommentaire->handleRequest($request);


        if ($formCommentaire->isValid()) {
            $commentaire->setCreateAt(new \DateTime());
            $commentaire->setPost($news);
            $em = $this->getDoctrine()->getManager();
            $em->persist($commentaire);
            $em->flush();
            return $this->redirect($this->generateUrl('ElyceeBundle.default.actu', array('id' => $id)));
        }


        return array(
            'news' => $news,
            'form' => $formCommentaire->createView(),
            'userOnline' => $userOnline,
            'user' => $user

        );
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
     * @Method({"POST","GET"})
     */
    public function contactAction(Request $request)
    {
        $contact = new Contact();
        $contactType = new ContactType();
        $form = $this->createForm($contactType, $contact);
        $form->handleRequest($request);
        if ($form->isValid()) {
            $message = \Swift_Message::newInstance()
                ->setSubject('Test d\'envoie email')
                ->setFrom('julien.garretb@gmail.com')
                ->setTo(array('julien.garretb@gmail.com', $form->getData()->getEmail()))
                ->setBody(
                    $this->renderView(
                        'ElyceeElyceeBundle:Default:contactEmail.html.twig', array('contact' => $contact)));

            $this->get('mailer')->send($message);
            return $this->redirect($this->generateUrl('ElyceeBundle.default.index'));
            $request->getSession()->getFlashBag()->add('success', 'Your email has been sent! Thanks!');
        }
        return array(
            'form' => $form->createView()
        );
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
