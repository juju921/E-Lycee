<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * ChoicesRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ChoicesRepository extends EntityRepository
{

    public function getThePost($id){
        $results = $this
            ->createQueryBuilder('c')
            ->select('c.contentChoice')
            ->where('c.fiche  = :id')
            ->setParameter(':id',$id)
            ->getQuery()
            ->getResult();
        return $results;
    }


}
