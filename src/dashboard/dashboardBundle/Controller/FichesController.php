<?php

namespace dashboard\dashboardBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request as Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Doctrine\Common\Util\Debug;
use Elycee\ElyceeBundle\Entity\Fiches;
use Elycee\ElyceeBundle\Form\FichesType;
use Elycee\ElyceeBundle\Form\ChoicesType;
use Elycee\ElyceeBundle\Entity\Choices;
use Elycee\ElyceeBundle\Entity\Questions;
use Elycee\ElyceeBundle\Form\QuestionsType;
use Symfony\Component\HttpFoundation\Session\Session;

use Pagerfanta\Pagerfanta;
use Pagerfanta\Adapter\DoctrineORMAdapter;
use FOS\RestBundle\Controller\FOSRestController;
use Pagerfanta\Exception\NotValidCurrentPageException;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Elycee\ElyceeBundle\Entity\Status;


class FichesController extends Controller
{


    /**
     * @Route("dashboard/fiches/list/{page}", name="fiches.show", defaults={"page" = 1}, requirements={"page" = "\d+"} )
     * @Template("dashboarddashboardBundle:fiche:showfiche.html.twig")
     */
    public function homeAction($page)
    {



        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');

        $qb = $this->getDoctrine()->getEntityManager()->createQueryBuilder()
            ->select('Fiches')
            ->from('Elycee\ElyceeBundle\Entity\Fiches', 'Fiches')
        ;


        $adapter = new DoctrineORMAdapter($qb);
        $pagerfanta = new Pagerfanta($adapter);
        $pagerfanta->setMaxPerPage(1);
        $pagerfanta->setCurrentPage($page);
        $entities = $pagerfanta->getCurrentPageResults();


        try {

            $entities = $pagerfanta
                // Le nombre maximum d'éléments par page
                ->setMaxPerPage(3)
                // Notre position actuelle (numéro de page)
                ->setCurrentPage($page)
                // On récupère nos entités via Pagerfanta,
                // celui-ci s'occupe de limiter la requête en fonction de nos réglages.
                ->getCurrentPageResults()
            ;
        } catch (\Pagerfanta\Exception\NotValidCurrentPageException $e) {
            throw $this->createNotFoundException("Cette page n'existe pas.");

        }




        $fiches = $repository->findBy(array('teacher' => $token->getUser()->getId()));
        return array(
            'fiches' => $fiches,
            'entities' => $entities,
            'pagerfanta' => $pagerfanta,

        );






    }


    /**
     * @Route("dashboard/fiches/new", name="dashboard.fiches.new")
     * @Template("dashboarddashboardBundle:fiche:create.html.twig")
     * @Method({"POST","GET"})
     * @return array
     */
    public function createAction(Request $request)
    {

        $token = $this->get('security.context')->getToken();
        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Status');
        $unpublished = $repository->findOneBy(array('nom'=>'unpublish'));
        $user = $token->getUser();
        $em = $doctrine->getManager();
        $fiche = new Fiches();
        $ficheType = new FichesType();
        $choices = new Choices();
        $choicesTypes = new ChoicesType();


        $form = $this->createForm($ficheType, $fiche);
        if ($request->isMethod('POST')) {
            $form->handleRequest($request);
            $nbr = $form->get('nbr')->getData();


            if ($nbr > 10 || $nbr < 1) return ['form' => $form->createView(), 'error' => 'Le nombre de questions doit être compris entre 1 et 10'];
            if ($form->isValid() && $nbr <= 10 && $nbr > 0) {

                $fiche =  $form->getData();
                $fiche->setStatus($unpublished);
               // echo dump($unpublished);exit;
               // $fiche->setStatus($status);
                $em->persist($fiche);

                $this->get('session')->set('nbr', $nbr);
                $this->get('session')->set('choix', $nbr);
                $this->get('session')->set('qcm', $fiche);
                $this->get('session')->set('questions', []);
                return $this->redirect($this->generateUrl('dashboard.choix.new'));
            }
        }

        return ['form' => $form->createView()];


        //return $this->redirect($urlRedirect);

    }


    /**
     * @Route("dashboard/choix/new", name="dashboard.choix.new")
     * @Template("dashboarddashboardBundle:fiche:createchoix.html.twig")
     * @Method({"POST","GET"})
     */
    public function createChoicesAction(Request $request)
    {
        $questions = new questions();
        $questionsType = new QuestionsType();
        $form = $this->createForm($questionsType, $questions);
        if ($request->isMethod('POST')) {
            $form->handleRequest($request);
            if ($form->isValid()) {
                $question = $form->getData();
                if (is_null($question->getChoices()) || count($question->getChoices()) < 2 || count($question->getChoices()) > 5)

                    return ['form' => $form->createView(), 'error' => 'Vous devez avoir au moins 1 réponse et au plus 5 réponses !'];
                /*if (is_null($request->get('reponse')))
                    return ['form' => $form->createView(), 'error' => 'Vous devez cocher la bonne réponse !'];*/

                $questions = $this->get('session')->get('questions');
                // $question->getChoices()[(int)$request->get('reponse')]->setStatus('yes');
                array_push($questions, $question);
                $this->get('session')->set('questions', $questions);
                if ($this->get('session')->get('nbr') == 1) {
                    $doctrine = $this->getDoctrine();
                    $em = $doctrine->getManager();

                    $em->persist($this->get('session')->get('qcm'));
                    $em->flush();

                    $qcm = $doctrine->getRepository('ElyceeElyceeBundle:Fiches')->find($this->get('session')->get('qcm')->getId());

                    $response = $doctrine->getEntityManager()->getRepository('ElyceeElyceeBundle:Fiches')->persistQuestions($this->get('session')->get('questions'), $qcm);
                    $this->get('session')->getFlashBag()->add('message', $response);
                    $request->getSession()->remove('nbr');
                    $request->getSession()->remove('choix');
                    $request->getSession()->remove('qcm');
                    $request->getSession()->remove('questions');
                    $message = "La fiche a bien été ajoutée";
                    $request->getSession()->getFlashBag()->set('notice', $message);
                    return $this->redirect($this->generateUrl('dashboard.default.index'));
                }
                $message = "La fiche a bien été ajouté";
                $this->get('session')->set('nbr', $this->get('session')->get('nbr') - 1);


            }
        }
        return ['form' => $form->createView()];
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
     *
     * @Method({"PUT","GET"})
     */
    public function deleteAction(Request $request, $id)
    {

        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $fiche = $repository->find($id);
        $em = $doctrine->getManager();
        $em->remove($fiche);
        $em->flush();

        $message = "La fiche a bien été supprimée";
        $request->getSession()->getFlashBag()->set('notice', $message);
        $urlRedirect = $this->generateUrl('dashboard.default.index');

        return $this->redirect($urlRedirect);

    }



    /**
     * @Route(
     *      "/dashboard/fiches/edit/{id}",
     *      name="dashboard.fiches.edit",
     *       requirements = { "id" = "\d+" }
     * )
     * @template("dashboarddashboardBundle:fiche:editfiche.html.twig")
     * @Method({"POST","GET"})
     */
    public function editFicheAction(Request $request, $id)
    {

        $doctrine = $this->getDoctrine();
        $repository = $doctrine->getRepository('ElyceeElyceeBundle:Fiches');
        $fiche = $repository->find($id);
        $em = $doctrine->getManager();
        //$em->remove($fiche);
        $type = new FichesType();
        $form = $this->createForm($type, $fiche);
        $form->handleRequest($request);
        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($fiche);
            //$data = $form->getData();
            $em->flush();
            // message en session
            $request->getSession()->getFlashBag()->set('notice', $message);

            // on redirige l'utilisateur
            $url = $this->generateUrl('dashboard.default.index');
            return $this->redirect($url);


            $message = "La fiche a été ajouté";


        }
        return array(
            'form' => $form->createView(),

        );








    }


}