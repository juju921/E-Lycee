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
use Elycee\ElyceeBundle\Entity\Questions;
use Elycee\ElyceeBundle\Form\QuestionsType;
use Symfony\Component\HttpFoundation\Session\Session;



use Symfony\Component\DependencyInjection\ContainerInterface;
use Elycee\ElyceeBundle\Entity\Status;


class FichesController extends Controller
{


    /**
     * @Route("dashboard/fiches/list", name="fiches.show")
     * @Template("dashboarddashboardBundle:fiche:showfiche.html.twig")
     */
    public function homeAction()
    {


        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $fiches = $repository->findBy(array('teacher' => $token->getUser()->getId()));
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
        //$unpublished = $repository->findOneBy(array('nom'=>'UNPUBLISHED'));
        $user = $token->getUser();
        $em = $doctrine->getManager();
        $fiche = new Fiches();
        $ficheType = new FichesType();
        $questions = new questions();
        $questionsType = new QuestionsType();
        $choices = new Choices();
        $choicesTypes = new ChoicesType();


        $form = $this->createForm($ficheType, $fiche);
        $formQuestion = $this->createForm($questionsType, $questions);
        $formQuestion->handleRequest($request);
        $form->handleRequest($request);
        if ($request->isMethod('POST')) {
            if ($form->isValid() && $form->isSubmitted()) {
                $dataQuestion = $formQuestion->getData();
                $data = $form->getData();
                $data->setTeacher($user);
                $status = $form["status"]->getData();
                $data->setStatus($status);


              $data->setQuestions($data->getQuestions());
                $em->persist($data);
                $em->flush();
                $idfiches = $fiche->getId();
                $test =  $request->getSession()->set('name', $idfiches);
                $message = "Votre fiche a été créée".$test;
                $request->getSession()->getFlashBag()->set('notice', $message);

                $urlRedirect = $this->generateUrl('dashboard.fiches.new');



              // echo '<pre>';Debug::dump($fiche->getId());echo '</pre>';exit();
                return $this->redirect($urlRedirect);
            }
        }
        return array(
            'form' => $form->createView(),


        );
    }




    /**
     * @Route("dashboard/choix/new", name="dashboard.choix.new")
     * @Template("dashboarddashboardBundle:fiche:createchoix.html.twig")
     * @Method({"POST","GET"})
     */
    public function createChoicesAction(Request $request)
    {
        $token = $this->get('security.context')->getToken();

        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Status');
        //$unpublished = $repository->findOneBy(array('nom'=>'UNPUBLISHED'));
        $user = $token->getUser();
        $em = $doctrine->getManager();
        $fiche = new Fiches();
        $ficheType = new FichesType();
        $questions = new questions();
        $questionsType = new QuestionsType();

        $form = $this->createForm($questionsType, $questions);

        $form->handleRequest($request);
        if ($request->isMethod('POST')) {
            if ($form->isValid() && $form->isSubmitted()) {

                $data = $form->getData();



               // $data->setChoices($data->getChoices());
                $em->persist($data);
                $em->flush();
                $message = "Vos réponses ont été créée";
                $request->getSession()->getFlashBag()->set('notice', $message);
                $urlRedirect = $this->generateUrl('dashboard.default.index');

                return $this->redirect($urlRedirect);
            }
        }
        return array('form' => $form->createView());
    }












    /**
     * @Route(
     *      "/dashboard/fiches/status/{id}",
     *      name="dashboard.fiches.editstatus",
     * )
     * @Template("dashboarddashboardBundle:fiche:ficheeditstatus.html.twig")
     * @Method({"POST","GET"})
     */
    public function editStatusAction(Request $request, $id)
    {

        $doctrine = $this->getDoctrine();
        $em = $doctrine->getManager();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $repositoryStatus = $doctrine->getRepository('ElyceeElyceeBundle:Status');
        $fiche = $repository->find($id);

        if ($fiche->getStatus()->getId() == 1) {
            $status = $repositoryStatus->find(2);
            $fiche->setStatus($status);
            $message = "non publié";
        } else {
            $status = $repositoryStatus->find(1);
            $fiche->setStatus($status);
            $message = "publié";
        }
        $em->persist($fiche);
        $em->flush();

        $url = $this->generateUrl('dashboard.default.index');
        return $this->redirect($url);


    }


















    /**
     * @Route(
     *      "/dashboard/fiches/delete/{id}",
     *      name="dashboard.fiches.delete",
     * )
     * @Method({"POST","GET"})
     */
    public function deleteAction(Request $request, $id)
    {
        $doctrine   = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $fiche       = $repository->find($id);
        $em = $doctrine->getManager();
        $em->remove($fiche);
        $em->flush();

        $message = "La fiche a bien été supprimée";
        $request->getSession()->getFlashBag()->set('notice', $message);
        $urlRedirect = $this->generateUrl('dashboard.default.index');

        return $this->redirect($urlRedirect);

    }



}