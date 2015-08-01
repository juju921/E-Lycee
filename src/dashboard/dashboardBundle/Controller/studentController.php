<?php

namespace dashboard\dashboardBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request as Request;
use Elycee\ElyceeBundle\Entity\Copie;
use Elycee\ElyceeBundle\Form\CopieType;
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

        $copie = new Copie();
        $copieType = new CopieType();
        $score = $scoreRp->find($id);
        $fiche = $score->getFiche();

        //$datas = array();


        $form = $this->createFormBuilder($copie);
        foreach ($fiche->getChoices() as $choice) {

            $content = $choice->getContentChoice();
            $repository = $doctrine->getRepository('ElyceeElyceeBundle:Choices');
            $contact = $repository->getThePost($fiche->getId());


            if ($choice->getResponse() == 0) {

                $ma = 0;
            } else {
                $ma = 1;

            }


            $form->add('reponse' . $choice->getId(), 'choice', array(
                'choices' => array($ma => $content),
                //'choices' => array('h' => 'femme', 'f'=> 'homme'),
                //'label'     => $content,
                'expanded' => true,

                'mapped' => false,
                'required' => false,
                'empty_value' => false,
            ));





        }


        $form = $form->getForm()->handleRequest($request);
        //$form->handleRequest($request);
        if ($request->isMethod('POST')) {

            // echo '<pre>';
            //Debug::dump($form->getData('reponse'));
            //echo '</pre>';

            if ($form->isValid() && $form->isSubmitted()) {
                $data = $form->all();
                echo '<pre>';Debug::dump($data);echo '</pre>';exit();
                $choixRp = $doctrine->getRepository('ElyceeElyceeBundle:Choices');
                foreach ($data as $key => $reponse) {


                    $mareponse =  $reponse->getData('choices');

                    if ($mareponse === 1) {
                        echo '<pre>';Debug::dump($reponse->getData('reponse') );echo '</pre>';exit();



                    } else {
                        //echo $reponse->getData('choices');exit;
                        echo '<pre>';Debug::dump($reponse->getData('reponse') );echo '</pre>';exit();


                    }


                }


                $em->persist($score);
                $em->flush();


            }

        }


        return array(
            'score' => $score,
            'form' => $form->createView(),
            'content' => $content,
            'contact' => $contact,

        );
    }


}