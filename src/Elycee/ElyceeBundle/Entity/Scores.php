<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Scores
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\ScoresRepository")
 */
class Scores
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
     * @var float
     *
     * @ORM\Column(name="note", type="float")
     */
    private $note;




    /**
     * @ORM\ManyToOne(targetEntity="Fiches", inversedBy="scores")
     * @ORM\JoinColumn(name="fiche_id", referencedColumnName="id")
     *
     */
    private $fiche;

    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="scores")
     * @ORM\JoinColumn(name="student_id", referencedColumnName="id")
     *
     */
    private $student;


    /**
     * @ORM\ManyToOne(targetEntity="Status")
     * @ORM\JoinColumn(name="status_id", referencedColumnName="id")
     *
     */
    private $status;



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
     * Set note
     *
     * @param float $note
     * @return Scores
     */
    public function setNote($note)
    {
        $this->note = $note;

        return $this;
    }

    /**
     * Get note
     *
     * @return float 
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * Set fiche
     *
     * @param \Elycee\ElyceeBundle\Entity\Fiches $fiche
     * @return Scores
     */
    public function setFiche(\Elycee\ElyceeBundle\Entity\Fiches $fiche = null)
    {
        $this->fiche = $fiche;

        return $this;
    }

    /**
     * Get fiche
     *
     * @return \Elycee\ElyceeBundle\Entity\Fiches 
     */
    public function getFiche()
    {
        return $this->fiche;
    }

    /**
     * Set student
     *
     * @param \Elycee\ElyceeBundle\Entity\User $student
     * @return Scores
     */
    public function setStudent(\Elycee\ElyceeBundle\Entity\User $student = null)
    {
        $this->student = $student;

        return $this;
    }

    /**
     * Get student
     *
     * @return \Elycee\ElyceeBundle\Entity\User 
     */
    public function getStudent()
    {
        return $this->student;
    }

    /**
     * Set status
     *
     * @param \Elycee\ElyceeBundle\Entity\Status $status
     * @return Scores
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
}
