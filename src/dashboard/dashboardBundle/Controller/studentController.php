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
        $scoreRp = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');

        $qcms = $scoreRp->findBy(['status' => 'publish', 'classLevel' => $this->getUser()->getClasse()]);



        //$scores = $scoreRp->gettheFiches();
      //  $id = $token->getUser()->getId();
        //$iduser = 2;
        //$fichesquery = $scoreRp->getfichebyuser($iduser);

        return array(
          //  'scores' => $scores,
            'publishedQcms' => count($qcms)
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
       // $scores = $scoreRp->getScoreSeenStudent($token->getUser()->getId());
        $student = $token->getUser();
        $scoreRps = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');

        $qcms = $scoreRps->findBy(['status' => 'publish', 'classLevel' => $this->getUser()->getClasse()]);
        $fiche = $scoreRp->findBy(['student' => $student]);


        return array(
         //   'scores' => $scores
            'publishedQcms' => count($qcms),
            'fiche'=> $fiche
        );
    }


    /**
     * @Route("etudiant/fiche/{id}", name="student.fiches.make")
     * @Template("dashboarddashboardBundle:fiche:eleve/fiche.html.twig")
     */
    public function ficheMakeAction($id, Request $request)
    {

        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $score = $doctrine->getRepository('ElyceeElyceeBundle:Scores');
        $qcms = $repository->findBy(['status' => 'publish', 'classLevel' => $this->getUser()->getClasse()]);

        $qcm = $repository->findOneBy(['id' => $id, 'status' => 'publish', 'classLevel' => $this->getUser()->getClasse()]);
        $check = $score->findOneBy(['fiche' => $qcm, 'student' => $this->getUser()]);
        if (!$qcm) {
            $this->get('session')->getFlashBag()->add('message', ['status' => 'error', 'content' => "Le QCM n'a pas été trouvé !"]);
            return $this->redirect($this->generateUrl('app.qcm.student'));
        }
        if ($request->isMethod('POST') && isset($_POST['submit'])) {
            $student = $this->getUser();
            $response = $doctrine->getManager()->getRepository('ElyceeElyceeBundle:Scores')->addScore($qcm, $student);
            $this->get('session')->getFlashBag()->add('message', $response);
            return $this->redirect($this->generateUrl('student.fiches.home'));
        }
        return ['qcm' => $qcm,'check' => $check, 'publishedQcms' => count($qcms)];



    }


}