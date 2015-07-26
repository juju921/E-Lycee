<?php

namespace dashboard\dashboardBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request as Request;

use Doctrine\Common\Util\Debug;
use Elycee\ElyceeBundle\Entity\Fiches;
use Elycee\ElyceeBundle\Form\FichesType;
use Elycee\ElyceeBundle\Form\ChoicesType;
use Elycee\ElyceeBundle\Entity\Choices;
use Elycee\ElyceeBundle\Entity\Scores;
use Elycee\ElyceeBundle\Entity\ScoresRepository;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Elycee\ElyceeBundle\Entity\Status;


class studentController extends Controller
{


    /**
     * @Route("etudiant/dashboard", name="student.fiches.home")
     * @Template("dashboarddashboardBundle:fiche:eleve/home.html.twig")
     */
    public function homeAction()
    {
        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $scoreRp = $doctrine->getRepository('ElyceeElyceeBundle:Scores');
        $scores = $scoreRp->getScoreSeenStudent($token->getUser()->getId());

        return array(
            'scores' => $scores
        );
    }


    /**
     * @Route("etudiant/fiche/", name="student.fiches.list")
     * @Template("dashboarddashboardBundle:fiche:eleve/fiches.html.twig")
     */
    public function fichesAction()
    {
        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $scoreRp = $doctrine->getRepository('ElyceeElyceeBundle:Scores');
        $scores = $scoreRp->getScoreSeenStudent($token->getUser()->getId());

        return array(
            'scores' => $scores
        );
    }








    /**
     * @Route("etudiant/fiche/{id}", name="student.fiches.make")
     * @Template("dashboarddashboardBundle:fiche:eleve/fiche.html.twig")
     */
    public function ficheMakeAction($id, Request $request)
    {
        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $em = $doctrine->getManager();
        $scoreRp = $doctrine->getRepository('ElyceeElyceeBundle:Scores');
        $score = $scoreRp->find($id);
        $fiche = $score->getFiche();
        $data = array();
        $form = $this->createFormBuilder($data);
        $flag_reponse = false;

        foreach ($fiche->getChoices() as $choice) {
            $tatat = $choice->getContentChoice();
           // echo $choice->getResponse();
            if (!$request->isMethod('POST')) {

            if($choice->getResponse() == 0){
                $tata  = 0;
            }else{
                $tata  = 1;
            }

                $form->add($choice->getContentChoice() , 'radio', array('required' => false,  'value'=>$tata ));
            }

            $form->add('save', 'submit', array('label' => 'envoyer mes réponses',
                'attr' => array('class' => 'btn btn-primary'),
            ));



        }

        $form = $form->getForm();
        if ($request->isMethod('POST')) {
           // $data = $form->getData();
            //$test =  $request->query->get($choice->getContentChoice() );
            //$username = $form[]->getData();
            //$nom = $form->get($choice->getContentChoice())->getData();
            echo $form;


        }


        return array(
            'score' => $score,
            'form' => $form,
            'tata' => $tatat

        );
    }


}