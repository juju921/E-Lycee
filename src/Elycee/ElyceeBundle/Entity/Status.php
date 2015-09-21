<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;


/**
 * Status
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\StatusRepository")
 */
class Status
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
     * @ORM\Column(name="nom", type="string", length=255)
     */
    private $nom;


    /**
     * @ORM\OneToMany(targetEntity="Fiches", mappedBy="status",  cascade={"persist"} )
        */
    protected $fiches;




    /**
     * @ORM\OneToMany(targetEntity="User", mappedBy="classe")
     */
    protected $students;





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
     * Transform to string
     *
     * @return string
     */
    public function __toString()
    {
        return (string) $this->getId();
    }




    /**
     * Set nom
     *
     * @param string $nom
     * @return Status
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }







    /**
     * Constructor
     */
    public function __construct()
    {
        $this->students = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add students
     *
     * @param \Elycee\ElyceeBundle\Entity\User $students
     * @return Status
     */
    public function addStudent(\Elycee\ElyceeBundle\Entity\User $students)
    {
        $this->students[] = $students;

        return $this;
    }

    /**
     * Remove students
     *
     * @param \Elycee\ElyceeBundle\Entity\User $students
     */
    public function removeStudent(\Elycee\ElyceeBundle\Entity\User $students)
    {
        $this->students->removeElement($students);
    }

    /**
     * Get students
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getStudents()
    {
        return $this->students;
    }

    /**
     * Add fiches
     *
     * @param \Elycee\ElyceeBundle\Entity\Fiches $fiches
     * @return Status
     */
    public function addFich(\Elycee\ElyceeBundle\Entity\Fiches $fiches)
    {
        $this->fiches[] = $fiches;

        return $this;
    }

    /**
     * Remove fiches
     *
     * @param \Elycee\ElyceeBundle\Entity\Fiches $fiches
     */
    public function removeFich(\Elycee\ElyceeBundle\Entity\Fiches $fiches)
    {
        $this->fiches->removeElement($fiches);
    }

    /**
     * Get fiches
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getFiches()
    {
        return $this->fiches;
    }
}
