<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Copie
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\CopieRepository")
 */
class Copie
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
     * @var boolean
     *
     * @ORM\Column(name="reponse", type="boolean")
     */
    private $reponse;




    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="Copie")
     * @ORM\JoinColumn(name="eleves_id", referencedColumnName="id")
     *
     */
    private $eleves;


    /**
     * @ORM\ManyToOne(targetEntity="Choices", inversedBy="Copie")
     * @ORM\JoinColumn(name="choices_id", referencedColumnName="id")
     *
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
     * Set reponse
     *
     * @param boolean $reponse
     * @return Copie
     */
    public function setReponse($reponse)
    {
        $this->reponse = $reponse;

        return $this;
    }

    /**
     * Get reponse
     *
     * @return boolean 
     */
    public function getReponse()
    {
        return $this->reponse;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->choices = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Set eleves
     *
     * @param \Elycee\ElyceeBundle\Entity\User $eleves
     * @return Copie
     */
    public function setEleves(\Elycee\ElyceeBundle\Entity\User $eleves = null)
    {
        $this->eleves = $eleves;

        return $this;
    }

    /**
     * Get eleves
     *
     * @return \Elycee\ElyceeBundle\Entity\User 
     */
    public function getEleves()
    {
        return $this->eleves;
    }



    /**
     * Set choices
     *
     * @param \Elycee\ElyceeBundle\Entity\Choices $choices
     * @return Copie
     */
    public function setChoices(\Elycee\ElyceeBundle\Entity\Choices $choices = null)
    {
        $this->choices = $choices;

        return $this;
    }

    /**
     * Get choices
     *
     * @return \Elycee\ElyceeBundle\Entity\Choices 
     */
    public function getChoices()
    {
        return $this->choices;
    }
}
