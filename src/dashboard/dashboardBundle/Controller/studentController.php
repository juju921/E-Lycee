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

        $datas = array();
        $form = $this->createFormBuilder($datas);
        //$form = $this->createFormBuilder($copie, array ( 'attr' => array ( 'name' => 'myFormName')));
        $flag_reponse = false;
        foreach ($fiche->getChoices() as $choice) {

            $content = $choice->getContentChoice();
            $repository = $doctrine->getRepository('ElyceeElyceeBundle:Choices');
            $contact = $repository->getThePost($fiche->getId());



                    if (!$request->isMethod('POST')) {

                        if($choice->getResponse() == 0){
                            $checked = 0;

                        }else{
                            $checked = 1;

                        }


                        //$checked = $copie->hasChoices($choice);


                        if($checked && !$flag_reponse){
                          //  $nb_rep_save++;
                            $flag_reponse = true;
                        }
                        $form->add('c' . $choice->getId() , 'checkbox', array(
                                'required' => false,
                                'attr' => array(
                                    'checked' => $checked,
                                    'label' => $content,


                                )));


                    } else {
                       $form->add('c' . $choice->getId() , 'checkbox', array(
                               'required' => false,
                               'label' => $content,
                          ));

                    }






            /* $form->add('reponse' . $choice->getId(), 'choice', array(
                 'choices' => array($ma => $content),
                 //'choices' => array('h' => 'femme', 'f'=> 'homme'),
                 //'label'     => $content,
                 'expanded' => true,

                 'mapped' => false,
                 'required' => false,
                 'empty_value' => false,

             ));*/





        }
        $form = $form->getForm();

        //$form = $form->getForm()->handleRequest($request);

        if ($request->isMethod('POST')) {
            $form->handleRequest($request);

            if ($form->isValid() && $form->isSubmitted()) {


                $data = $form->getData('datas');


                    $flag_reponse = false;
                    foreach ($fiche->getChoices() as $choice) {

                        $key = 'c' . $choice->getId();
                        //echo $choice->getId();exit();
                        //echo '<pre>';Debug::dump($data);echo '</pre>';exit();

                        if($choice->getResponse() == 1){
                            //$checked = 0;
                            $c1 = 'c'.$choice->getResponse();
                        }else{
                          //  $checked = 1;
                            $c1 = 'c2'.$choice->getResponse();
                        }


                        if($data[$c1] == true){
                            echo "c'est bon ";exit();
                        }else{
                            echo "retente ta chance";exit();
                        }

                        if($data[$key] && !$flag_reponse){

                            $flag_reponse = true;
                           // $nb_rep_save++;

                        }

                       if (array_key_exists($key, $data) && $data[$key]) {
                            //Sauvegarder la réponse ici
                            //echo ;exit;
                            //echo '<pre>';Debug::dump($choice);echo '</pre>';exit();
                            //$copie->addProposition($proposition);

                            $copie->setChoices($choice);
                            $copie->setReponse(1);
                        }else{

                            $copie->setReponse(0);
                            $copie->setChoices($choice);
                        }
                    }




                    $em->persist($copie);
                    $em->flush();



            }
            $form = $form->createView();

        }


        return array(
            'score' => $score,
            'form' => $form,
            'content' => $content,
            'contact' => $contact,

        );
    }


}