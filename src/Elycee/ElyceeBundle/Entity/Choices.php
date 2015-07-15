<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Choices
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\ChoicesRepository")
 */
class Choices
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
     * @ORM\Column(name="content_choice", type="text")
     */
    private $contentChoice;

    /**
     * @var integer
     *
     * @ORM\Column(name="response", type="integer")
     */
    private $response;

    /**
     * @var float
     *
     * @ORM\Column(name="point", type="float")
     */
    private $point;





    /**
     * @ORM\ManyToOne(targetEntity="Fiches", inversedBy="choices")
     * @ORM\JoinColumn(name="fiche_id", referencedColumnName="id")
     *
     */
    private $fiches;





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
     * Set contentChoice
     *
     * @param string $contentChoice
     * @return Choices
     */
    public function setContentChoice($contentChoice)
    {
        $this->contentChoice = $contentChoice;

        return $this;
    }

    /**
     * Get contentChoice
     *
     * @return string 
     */
    public function getContentChoice()
    {
        return $this->contentChoice;
    }

    /**
     * Set response
     *
     * @param integer $response
     * @return Choices
     */
    public function setResponse($response)
    {
        $this->response = $response;

        return $this;
    }

    /**
     * Get response
     *
     * @return integer 
     */
    public function getResponse()
    {
        return $this->response;
    }

    /**
     * Set point
     *
     * @param float $point
     * @return Choices
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

   



    /**
     * Set fiches
     *
     * @param \Elycee\ElyceeBundle\Entity\Fiches $fiches
     * @return Choices
     */
    public function setFiches(\Elycee\ElyceeBundle\Entity\Fiches $fiches = null)
    {
        $this->fiches = $fiches;

        return $this;
    }

    /**
     * Get fiches
     *
     * @return \Elycee\ElyceeBundle\Entity\Fiches 
     */
    public function getFiches()
    {
        return $this->fiches;
    }
}
