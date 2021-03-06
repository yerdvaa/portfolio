<?php

namespace AppBundle\Repository;

/**
 * ArticlesRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ArticlesRepository extends \Doctrine\ORM\EntityRepository
{
    
    public function countId()
    {
        $query = $this->getEntityManager()->createQueryBuilder()
                ->select('articles')
                ->from('AppBundle:Articles', 'articles')
                ->getQuery();
        
        return count($query->getResult());
                
    }
    public function randChoiceArticles()
    {       
        $countID = $this->countId();
        $randID = rand(1, $countID);
        $randID .= ','.rand(1, $countID). ','.rand(1, $countID);
        
        $query = $this->getEntityManager()->createQueryBuilder()
                ->select('a')
                ->from('AppBundle:Articles', 'a');
        
        $query->add('where', $query->expr()->in('a.id', $randID));
                
        $result = $query->getQuery()->getResult();
                
        return $result;
    }
    
    
    public function selectArticles($select)
    {
        $query = $this->createQueryBuilder('articles')
                ->select('articles')
                ->where('articles.categorie = :selection')
                ->setParameters(['selection' => $select])
                ->getQuery();
        
        return $query->getResult();
    }
}
