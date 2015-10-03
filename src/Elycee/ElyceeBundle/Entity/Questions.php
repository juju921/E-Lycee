<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Questions
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\QuestionsRepository")
 */
class Questions
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
     * @ORM\Column(name="content", type="string", length=255)
     */
    private $content;



    /**
     * @ORM\OneToMany(targetEntity="Choices", mappedBy="question",  cascade={"persist","remove"})
     */
    protected $choices;




    /**
     * @ORM\ManyToOne(targetEntity="fiches", inversedBy="questions")
     * @ORM\JoinColumn(name="fiche_id", referencedColumnName="id")
     *
     */
    private $fiche;

    /**
     * @var float
     *
     * @ORM\Column(name="point", type="float")
     */
    private $point;






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
     * Set content
     *
     * @param string $content
     * @return Questions
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



    public function setChoices(ArrayCollection $choices)
    {
        foreach ($choices as $choice) {
            $choice->setQuestion($this);
        }
        $this->choices = $choices;
    }





    /**
     * Set fiche
     *
     * @param \Elycee\ElyceeBundle\Entity\fiches $fiche
     * @return Questions
     */
    public function setFiche(\Elycee\ElyceeBundle\Entity\fiches $fiche = null)
    {
        $this->fiche = $fiche;

        return $this;
    }

    /**
     * Get fiche
     *
     * @return \Elycee\ElyceeBundle\Entity\fiches 
     */
    public function getFiche()
    {
        return $this->fiche;
    }



    /**
     * Add choices
     *
     * @param \Elycee\ElyceeBundle\Entity\Choices $choices
     * @return Questions
     */
    public function addChoice(\Elycee\ElyceeBundle\Entity\Choices $choices)
    {
        $this->choices[] = $choices;

        return $this;
    }

    /**
     * Remove choices
     *
     * @param \Elycee\ElyceeBundle\Entity\Choices $choices
     */
    public function removeChoice(\Elycee\ElyceeBundle\Entity\Choices $choices)
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

    /**
     * Set point
     *
     * @param float $point
     * @return Questions
     */
    public function setPoint($point)
    {
        $this->point = $point;

        return $this;
    }

    /**
     * Get point
     *
     * @return float 
     */
    public function getPoint()
    {
        return $this->point;
    }
}
