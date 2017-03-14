<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Form\ContactType;
use AppBundle\Form\SelectCatType;
use AppBundle\Entity\Categories;


class HomeController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function HomeAction(Request $request)
    {
        //formulaire de contact
            $formContact = $this->createForm(ContactType::class);
            $formContact->handleRequest($request);

            if ($formContact->isSubmitted() && $formContact->isValid()) 
                {
                    $data = $formContact->getData();
                    //die(dump($formContact->getData()));
                    // Envoi du mail
                    $message = \Swift_Message::newInstance()
                        ->setSubject('Formulaire de contact')
                        ->setFrom($data['email'])
                        ->setTo($this->getParameter('mailer_admin'))
                        ->setBody(
                            $this->renderView('emails/formulaire-contact.html.twig', [
                                "data" => $data,
                            ]),
                            'text/html'
                            )
                        ->addPart(
                            $this->renderView('emails/formulaire-contact.txt.twig', [
                                "data" => $data,
                            ]),
                            'text/plain'
                            );

                    $this->get('mailer')->send($message);

                    // Affichage du message de success
                    $this->addFlash('success', 'Votre email a bien été envoyé');

                    // Redirection vers la route contact
                return $this->redirectToRoute('home', ['_fragment' => 'contacter']);
                }
            
        //Sélection aléatoire des articles
                $em = $this->getDoctrine()->getManager();
                $articles = $em->getRepository("AppBundle:Articles")
                    ->randChoiceArticles();
                
                
        //Choix des articles selon la catégorie souhaitée (select)
                $em = $this->getDoctrine()->getManager();
                $catSelect = $em->getRepository("AppBundle:Categories")
                        ->findAll();
                
           
        
        return $this->render('default/index.html.twig', [
            "formContact" => $formContact->createView(),
            "articles" => $articles,
            "catSelect" => $catSelect,            
            ]);
    }
    
    /**
     * @Route("/articles", name="articles")
     */
    public function ArticlesByCategoryAction(Request $request)
    {                
        // Choix des articles selon la catégorie souhaitée (select)
                $em = $this->getDoctrine()->getManager();
                $catSelect = $em->getRepository("AppBundle:Categories")
                        ->findAll();  
        
         // Affichage des articles selon la caétgorie sélectionnée
                $catId = $request->get('cat');
                //dump($catId);
                
                $em = $this->getDoctrine()->getManager();
                 $articlesSelect = $em->getRepository("AppBundle:Articles")
                         ->selectArticles($catId);
                
                 //dump($articlesSelect);
        // affichage du nom de la catégorie
                 $categorieSelect = $em->getRepository("AppBundle:Categories")
                         ->find($catId);
                 
                 
        return $this->render('default/articles.html.twig', [
                "catSelect" => $catSelect,
                "articlesSelect" => $articlesSelect,
                "categorieSelect" => $categorieSelect,
            ]);
    }
    
      
}



