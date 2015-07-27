<?php

namespace dashboard\dashboardBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request as Request;
use Elycee\ElyceeBundle\Entity\Copie;
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
        $copie = $em->getRepository('ElyceeElyceeBundle:Copie');
        $copie = new Copie();
        $score = $scoreRp->find($id);
        $fiche = $score->getFiche();
        //$data = array();
        $form = $this->createFormBuilder($copie);




        foreach ($fiche->getChoices() as $choice) {

           $content = $choice->getContentChoice();

                $form->add('reponse' , 'radio', array(
                    'required' => false,
                    'label'     =>$choice->getContentChoice(),
                  ));



        }

        $form->add('save', 'submit', array('label' => 'envoyer mes réponses',
            'attr' => array('class' => 'btn btn-primary'),
        ));

        $form = $form->getForm()->handleRequest($request);
        if ($request->isMethod('POST')) {
            echo '<pre>';Debug::dump($form->getData('reponse') );echo '</pre>';exit();

            if ($form->isValid() && $form->isSubmitted()) {
                $data = $form->all();
                $em->persist($copie);
                $em->flush();


            }



        }


        return array(
            'score' => $score,
            'form' => $form,
            'content' => $content

        );
    }


}