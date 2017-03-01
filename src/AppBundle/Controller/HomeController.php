<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Form\ContactType;
use AppBundle\Entity\Articles;



class HomeController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function HomeAction(Request $request)
    {
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
            
            
                $em = $this->getDoctrine()->getManager();
                $articles = $em->getRepository("AppBundle:Articles")
                    ->randChoiceArticles();
                
                
        //die(dump($articles));
        
        return $this->render('default/index.html.twig', [
            "formContact" => $formContact->createView(),
            "articles" => $articles,
            ]);
    }
    
    
      
}



