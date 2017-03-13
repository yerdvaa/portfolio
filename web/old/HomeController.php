<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class HomeController  extends Controller {
   /**
     * @Route("/", name="home")
     */
    public function HomeAction(Request $request)
    {
        return $this->render('default/index.html.twig');
    }
    
       
}
