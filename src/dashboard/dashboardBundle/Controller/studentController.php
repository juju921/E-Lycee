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
        $doctrine   = $this->getDoctrine();
        $scoreRp = $doctrine->getRepository('ElyceeElyceeBundle:Scores');
        $scores = $scoreRp->getScoreSeenStudent($token->getUser()->getId());
        return array(
            'scores' => $scores
        );
    }



}