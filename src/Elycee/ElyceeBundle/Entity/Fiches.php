<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

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
     * @ORM\Column(name="content", type="text")
     */
    private $content;


    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="fiches")
     * @ORM\JoinColumn(name="teacher_id", referencedColumnName="id")
     *
     */
    private $teacher;

    /**
     * @ORM\ManyToOne(targetEntity="Classes", inversedBy="fiches")
     * @ORM\JoinColumn(name="lvl_id", referencedColumnName="id")
     *
     */
    private $niveau;


    /**
     * @ORM\ManyToOne(targetEntity="Status", inversedBy="fiches")
     * @ORM\JoinColumn(name="status_id", referencedColumnName="id")
     *
     */
    private $status;





    /**
     * @ORM\OneToMany(targetEntity="Choices", mappedBy="fiche", cascade={"persist"})
     */
    protected $choices;



    

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
     * Set content
     *
     * @param string $content
     * @return Fiches
     */
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Get content
     *
     * @return string 
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->choices = new \Doctrine\Common\Collections\ArrayCollection();
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

    /**
     * Set niveau
     *
     * @param \Elycee\ElyceeBundle\Entity\Classes $niveau
     * @return Fiches
     */
    public function setNiveau(\Elycee\ElyceeBundle\Entity\Classes $niveau = null)
    {
        $this->niveau = $niveau;

        return $this;
    }

    /**
     * Get niveau
     *
     * @return \Elycee\ElyceeBundle\Entity\Classes 
     */
    public function getNiveau()
    {
        return $this->niveau;
    }

    /**
     * Set status
     *
     * @param \Elycee\ElyceeBundle\Entity\Status $status
     * @return Fiches
     */
    public function setStatus(\Elycee\ElyceeBundle\Entity\Status $status = null)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return \Elycee\ElyceeBundle\Entity\Status 
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Add choices
     *
     * @param \Elycee\ElyceeBundle\Entity\choices $choices
     * @return Fiches
     */
    public function addChoice(\Elycee\ElyceeBundle\Entity\choices $choices)
    {
        $this->choices[] = $choices;

        return $this;
    }

    /**
     * Remove choices
     *
     * @param \Elycee\ElyceeBundle\Entity\choices $choices
     */
    public function removeChoice(\Elycee\ElyceeBundle\Entity\choices $choices)
    {
        $this->choices->removeElement($choices);
    }

    /**
     * Get choices
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getChoices()
    {
        return $this->choices;
    }
}
