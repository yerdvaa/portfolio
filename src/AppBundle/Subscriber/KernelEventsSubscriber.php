<?php


namespace AppBundle\Subscriber;


use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\FilterResponseEvent;
use Symfony\Component\HttpKernel\Event\GetResponseEvent;
use Symfony\Component\HttpKernel\KernelEvents;

class KernelEventsSubscriber implements EventSubscriberInterface
{
    private $twig;


    public function __construct(\twig_Environment $twig)
    {
        $this->twig = $twig;

    }

    public static function getSubscribedEvents()
    {
        return [
            KernelEvents::RESPONSE => 'addArticlesBlock'
        ];
    }

    
    public function addArticlesBlock(FilterResponseEvent $event)
    {
        //die(dump('kernel response'));
        $content = $event->getResponse()->getContent();

        $response = new Response($content);
        $event->setResponse($response);
    }


}