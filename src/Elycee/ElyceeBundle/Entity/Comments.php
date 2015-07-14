<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Comments
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\CommentsRepository")
 */
class Comments
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
     * @ORM\Column(name="contents", type="text")
     */
    private $contents;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="createAt", type="datetime")
     */
    private $createAt;

    /**
     * @ORM\ManyToOne(targetEntity="Posts", inversedBy="Comments")
     * @ORM\JoinColumn(name="post_id", referencedColumnName="id")
     *
     */
    private $post;
    /**
     * @var string
     *
     * @ORM\Column(name="username", type="string", length=150)
     */
    private $username;

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
     * Set contents
     *
     * @param string $contents
     * @return Comments
     */
    public function setContents($contents)
    {
        $this->contents = $contents;

        return $this;
    }

    /**
     * Get contents
     *
     * @return string 
     */
    public function getContents()
    {
        return $this->contents;
    }

    /**
     * Set createAt
     *
     * @param \DateTime $createAt
     * @return Comments
     */
    public function setCreateAt($createAt)
    {
        $this->createAt = $createAt;

        return $this;
    }

    /**
     * Get createAt
     *
     * @return \DateTime 
     */
    public function getCreateAt()
    {
        return $this->createAt;
    }

    /**
     * Set username
     *
     * @param string $username
     * @return Comments
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
     * Set post
     *
     * @param \Elycee\ElyceeBundle\Entity\Posts $post
     * @return Comments
     */
    public function setPost(\Elycee\ElyceeBundle\Entity\Posts $post = null)
    {
        $this->post = $post;

        return $this;
    }

    /**
     * Get post
     *
     * @return \Elycee\ElyceeBundle\Entity\Posts 
     */
    public function getPost()
    {
        return $this->post;
    }
}
