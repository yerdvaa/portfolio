<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\Categories;

class ArticlesController extends Controller {
   
    /**
     * @Route("/articleSelection/{id}", name="articles_select")
     */
     /*public function selectArticles(Request $request, Categories $categories)
    {
        // Choix des articles selon la catégorie souhaitée (select)
                // Affichage des articles selon la caétgorie sélectionnée
                $catId = $request->get('cat');
                //die(dump($catId));
                
                //Rappel des catégories dans le champ select
                $em = $this->getDoctrine()->getManager();
                $cat = $em->getRepository("AppBundle:Articles")
                        ->findArticlesByCategorie($categories->getId());
                
        return $this->render('default/articles.html.twig', [
            "catId" => $catId,
            "categories" => $categories,
            "cat" => $cat,
            ]);
    }*/
    
   
    public function selectArticlesRandom(Request $request)
    {
        //Sélection aléatoire des articles
                $em = $this->getDoctrine()->getManager();
                $articles = $em->getRepository("AppBundle:Articles")
                    ->randChoiceArticles();
                
                die(dump($articles));
        
        return $this->render('default/index.html.twig', [
            "articles" => $articles,
            ]);
    }
}
