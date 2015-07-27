<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use FOS\UserBundle\Model\User as BaseUser;





/**
 * User
 *
 * @ORM\Table(name="fos_user")
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\UserRepository")
 */
class User extends BaseUser
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected  $id;

    public function __construct()
    {
        parent::__construct();
        // your own logic
    }

    /**
     * @ORM\OneToMany(targetEntity="Posts", mappedBy="user")
     */
   protected $post;

    /**
     * @ORM\OneToMany(targetEntity="Fiches", mappedBy="teacher")
     */
    protected $fiches;

    
    /**
     * @ORM\ManyToOne(targetEntity="Classes", inversedBy="students")
     * @ORM\JoinColumn(name="lvl_id", referencedColumnName="id")
     *
     */
    private $classe;


    /**
     * @ORM\OneToMany(targetEntity="Scores", mappedBy="student")
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
     * Set username
     *
     * @param string $username
     * @return User
     */
    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

    /**
     * Get username
     *
     * @return string 
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * Set password
     *
     * @param string $password
     * @return User
     */
    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Get password
     *
     * @return string 
     */
    public function getPassword()
    {
        return $this->password;
    }

   



    /**
     * Add post
     *
     * @param \Elycee\ElyceeBundle\Entity\Posts $post
     * @return User
     */
    public function addPost(\Elycee\ElyceeBundle\Entity\Posts $post)
    {
        $this->post[] = $post;

        return $this;
    }

    /**
     * Remove post
     *
     * @param \Elycee\ElyceeBundle\Entity\Posts $post
     */
    public function removePost(\Elycee\ElyceeBundle\Entity\Posts $post)
    {
        $this->post->removeElement($post);
    }

    /**
     * Get post
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getPost()
    {
        return $this->post;
    }





    /**
     * Add fiches
     *
     * @param \Elycee\ElyceeBundle\Entity\Fiches $fiches
     * @return User
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






    /**
     * Add scores
     *
     * @param \Elycee\ElyceeBundle\Entity\Scores $scores
     * @return User
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
     * Set classe
     *
     * @param \Elycee\ElyceeBundle\Entity\Classes $classe
     * @return User
     */
    public function setClasse(\Elycee\ElyceeBundle\Entity\Classes $classe = null)
    {
        $this->classe = $classe;

        return $this;
    }

    /**
     * Get classe
     *
     * @return \Elycee\ElyceeBundle\Entity\Classes 
     */
    public function getClasse()
    {
        return $this->classe;
    }
}
