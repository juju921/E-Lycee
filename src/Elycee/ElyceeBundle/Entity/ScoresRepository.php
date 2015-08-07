<?php

namespace Elycee\ElyceeBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * ScoresRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ScoresRepository extends EntityRepository
{



    public function getScoreSeenStudent($id_student){
        $results = $this
            ->createQueryBuilder('s')
            ->join('s.fiche','f')
            ->join('f.status','status')
            ->where('status.nom = \'publish\'')
            ->andWhere('s.student = :id')
            ->setParameter(':id',$id_student)
            ->orderBy('status.id','DESC')
            ->getQuery()
            ->getResult();


        return $results ;
    }



}

