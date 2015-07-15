<?php

namespace dashboard\dashboardBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request ;

use Doctrine\Common\Util\Debug;
use Elycee\ElyceeBundle\Entity\Fiches;
use Elycee\ElyceeBundle\Form\FichesType;
use Elycee\ElyceeBundle\Entity\Choices;
use Elycee\ElyceeBundle\Form\ChoicesType;
use Elycee\ElyceeBundle\Entity\Status;


class FichesController extends Controller
{




    /**
     * @Route("dashboard/fiches/list", name="dashboard.fiches.home")
     * @Template("dashboarddashboardBundle:Fiches:Default:dashboard.html.twig")
     */
    public function homeAction()
    {


        $token = $this->get('security.context')->getToken();
        $doctrine   = $this->getDoctrine();
        $repository = $doctrine->getRepository('dashboarddashboardBundle:Fiches');
        $fiches    = $repository->findBy(array('teacher' => $token->getUser()->getId()));
        return array('fiches' => $fiches);
    }


    /**
     * @Route("dashboard/fiches/new", name="dashboard.fiches.new")
     * @Template("dashboarddashboardBundle:fiche:create.html.twig")
     * @Method({"POST","GET"})
     */
    public function createAction(Request $request)
    {
        $token = $this->get('security.context')->getToken();

        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Status');
        $unpublished = $repository->findOneBy(array('nom'=>'UNPUBLISHED'));
        $user = $token->getUser();
        $em = $doctrine->getManager();
        $fiche = new Fiches();
        $ficheType = new FichesType();
        $form = $this->createForm($ficheType, $fiche);
        $form->handleRequest($request);
        if ($request->isMethod('POST')){
            if ($form->isValid() && $form->isSubmitted()) {
                $data = $form->getData();
                $data->setTeacher($user);
                $data->setStatus($unpublished);
                $data->setChoices($data->getChoices());
                $em->persist($data);
                $em->flush();
                $message = "Votre fiche a été créée";
                $request->getSession()->getFlashBag()->set('notice', $message);
                $urlRedirect = $this->generateUrl('dashboard.default.index');
                return $this->redirect($urlRedirect);
            }
        }
        return array('form' => $form->createView());
    }







} 