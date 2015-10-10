<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Fiches
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\FichesRepository")
 */
class Fiches
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;


    /**
     * @var string
     *
     * @ORM\Column(name="title", type="text")
     */

    private $title;


    /**
     * @var string
     *
     * @ORM\Column(name="status", type="string", options = {"default":"unpublish"})
     */
    protected $status = 'unpublish';


    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="fiches", cascade={"persist"})
     * @ORM\JoinColumn(name="teacher_id", referencedColumnName="id")
     *
     */
    private $teacher;


    /**
     * @ORM\ManyToOne(targetEntity="Classes", inversedBy="lvl_id_fiches")
     * @ORM\JoinColumn(name="lvl_id_fiches", referencedColumnName="id")
     *
     */
    private $classes;









    /**
     * @ORM\OneToMany(targetEntity="Questions", mappedBy="fiche",  cascade={"persist","remove"})
     */
    protected $questions;


    /**
     * @ORM\OneToMany(targetEntity="Scores", mappedBy="fiche")
     *
     */
    protected $scores;






    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Fiches
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }


    /**
     * Constructor
     */
    public function __construct()
    {
        $this->questions = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Set teacher
     *
     * @param \Elycee\ElyceeBundle\Entity\User $teacher
     * @return Fiches
     */
    public function setTeacher(\Elycee\ElyceeBundle\Entity\User $teacher = null)
    {
        $this->teacher = $teacher;

        return $this;
    }

    /**
     * Get teacher
     *
     * @return \Elycee\ElyceeBundle\Entity\User
     */
    public function getTeacher()
    {
        return $this->teacher;
    }





    public function setQuestions(ArrayCollection $questions)
    {
        foreach ($questions as $question) {
            $question->setFiche($this);
        }
        $this->questions = $questions;
    }











    /**
     * Set classes
     *
     * @param \Elycee\ElyceeBundle\Entity\Classes $classes
     * @return Fiches
     */
    public function setClasses(\Elycee\ElyceeBundle\Entity\Classes $classes = null)
    {
        $this->classes = $classes;

        return $this;
    }

    /**
     * Get classes
     *
     * @return \Elycee\ElyceeBundle\Entity\Classes 
     */
    public function getClasses()
    {
        return $this->classes;
    }

    /**
     * Add scores
     *
     * @param \Elycee\ElyceeBundle\Entity\Scores $scores
     * @return Fiches
     */
    public function addScore(\Elycee\ElyceeBundle\Entity\Scores $scores)
    {
        $this->scores[] = $scores;

        return $this;
    }

    /**
     * Remove scores
     *
     * @param \Elycee\ElyceeBundle\Entity\Scores $scores
     */
    public function removeScore(\Elycee\ElyceeBundle\Entity\Scores $scores)
    {
        $this->scores->removeElement($scores);
    }

    /**
     * Get scores
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getScores()
    {
        return $this->scores;
    }


    /**
     * Add questions
     *
     * @param \Elycee\ElyceeBundle\Entity\Questions $questions
     * @return Fiches
     */
    public function addQuestion(\Elycee\ElyceeBundle\Entity\Questions $questions)
    {
        $this->questions[] = $questions;

        return $this;
    }

    /**
     * Remove questions
     *
     * @param \Elycee\ElyceeBundle\Entity\Questions $questions
     */
    public function removeQuestion(\Elycee\ElyceeBundle\Entity\Questions $questions)
    {
        $this->questions->removeElement($questions);
    }

    /**
     * Get questions
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getQuestions()
    {
        return $this->questions;
    }



    /**
     * Set status
     *
     * @param string $status
     * @return Fiches
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return string 
     */
    public function getStatus()
    {
        return $this->status;
    }
}
