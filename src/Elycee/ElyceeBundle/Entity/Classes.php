<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Classes
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\ClassesRepository")
 */
class Classes
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
     * @ORM\Column(name="class_level", type="text")
     */
    private $classLevel;




    /**
     * @ORM\OneToMany(targetEntity="User", mappedBy="classes")
     */
    protected $students;


    public function __toString()
    {
        return strval($this->id);
    }


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
     * Set classLevel
     *
     * @param string $classLevel
     * @return Classes
     */
    public function setClassLevel($classLevel)
    {
        $this->classLevel = $classLevel;

        return $this;
    }


    /**
     * Get classLevel
     *
     * @return string 
     */
    public function getClassLevel()
    {
        return $this->classLevel;
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
     * @return Classes
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


}
