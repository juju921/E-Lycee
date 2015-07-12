<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert ;
use Elycee\ElyceeBundle\Entity\User;
use Elycee\ElyceeBundle\Entity\Status;
use Iphp\FileStoreBundle\Mapping\Annotation as FileStore;


/**
 * Posts
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Elycee\ElyceeBundle\Entity\PostsRepository")
 * @FileStore\Uploadable
 */
class Posts
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
     * @ORM\Column(name="titre", type="text")
     */
    private $titre;

    /**
     * @var string
     * @ORM\Column(name="abstract", type="text")
     */
    private $abstract;

    /**
     * @var string
     * @ORM\Column(name="content", type="text")
     */
    private $content;

    /**
     * @var string
     *
     * @ORM\Column(name="url_thumbnail", type="array",nullable = true)

     * @Assert\Image(
     *      maxSize="1M",
     *      mimeTypes={"image/jpeg","images/png"},
     *     mimeTypesMessage="Vous devez transférer des JPG."
     * )
     * @FileStore\UploadableField(mapping="img_new")
     */
    private $urlThumbnail;

    /**
     * @var \DateTime
     * @ORM\Column(name="date", type="datetime")
     */
    private $date;






    /**
     * @ORM\ManyToOne(targetEntity="User", inversedBy="post")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     *
     */
    private $auteur;


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
     * Set titre
     *
     * @param string $titre
     * @return Posts
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set abstract
     *
     * @param string $abstract
     * @return Posts
     */
    public function setAbstract($abstract)
    {
        $this->abstract = $abstract;

        return $this;
    }

    /**
     * Get abstract
     *
     * @return string 
     */
    public function getAbstract()
    {
        return $this->abstract;
    }

    /**
     * Set content
     *
     * @param string $content
     * @return Posts
     */
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Get content
     *
     * @return string 
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Set urlThumbnail
     *
     * @param string $urlThumbnail
     * @return Posts
     */
    public function setUrlThumbnail($urlThumbnail)
    {
        $this->urlThumbnail = $urlThumbnail;

        return $this;
    }

    /**
     * Get urlThumbnail
     *
     * @return string 
     */
    public function getUrlThumbnail()
    {
        return $this->urlThumbnail;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     * @return Posts
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime 
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set auteur
     *
     * @param \Elycee\ElyceeBundle\Entity\User $auteur
     * @return Posts
     */
    public function setAuteur(\Elycee\ElyceeBundle\Entity\User $auteur = null)
    {
        $this->auteur = $auteur;

        return $this;
    }

    /**
     * Get auteur
     *
     * @return \Elycee\ElyceeBundle\Entity\User 
     */
    public function getAuteur()
    {
        return $this->auteur;
    }


    /**
     * Set status
     *
     * @param \Elycee\ElyceeBundle\Entity\Status $status
     * @return Posts
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
