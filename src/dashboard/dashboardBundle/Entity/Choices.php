<?php

namespace dashboard\dashboardBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Choices
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="dashboard\dashboardBundle\Entity\ChoicesRepository")
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
     * @ORM\ManyToOne(targetEntity="Fiche", inversedBy="choices")
     * @ORM\JoinColumn(name="fiche_id", referencedColumnName="id")
     *
     */
    private $fiche;



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
}
