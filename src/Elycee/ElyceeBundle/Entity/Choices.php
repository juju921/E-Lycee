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
     * @ORM\Column(name="response", type="boolean")
     */
    private $response;

    /**
     * @var string
     *
     * @ORM\Column(name="status", type="string")
     */
    protected $status = 'no';








    /**
     * @ORM\ManyToOne(targetEntity="questions", inversedBy="choices")
     * @ORM\JoinColumn(name="question_id", referencedColumnName="id")
     *
     */
    private $question;


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
     * Set response
     *
     * @param boolean $response
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
     * @return boolean 
     */
    public function getResponse()
    {
        return $this->response;
    }













    /**
     * Set question
     *
     * @param \Elycee\ElyceeBundle\Entity\questions $question
     * @return Choices
     */
    public function setQuestion(\Elycee\ElyceeBundle\Entity\questions $question = null)
    {
        $this->question = $question;

        return $this;
    }

    /**
     * Get question
     *
     * @return \Elycee\ElyceeBundle\Entity\questions 
     */
    public function getQuestion()
    {
        return $this->question;
    }



    /**
     * Set status
     *
     * @param string $status
     * @return Choices
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return string 
     */
    public function getStatus()
    {
        return $this->status;
    }
}
