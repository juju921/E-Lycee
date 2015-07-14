<?php

namespace dashboard\dashboardBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Classes
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="dashboard\dashboardBundle\Entity\ClassesRepository")
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
     * @ORM\OneToMany(targetEntity="Fiches", mappedBy="classes")
     */
    protected $fiches;

    /**
     * @ORM\OneToMany(targetEntity="ElyceeBundle\Entity\User", mappedBy="classes")
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
}
