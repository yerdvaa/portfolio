<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\FormBuilderInterface;
use AppBundle\Form\Type\PhoneType;

class ContactType extends AbstractType
{
       /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('lastname', TextType::class, [
                'constraints' =>
                    [
                        new Assert\NotBlank(['message' => 'Veuillez rentrer votre nom']),
                        new Assert\Length(['min' => 2, 'minMessage' => 'Votre nom doit avoir au moins deux caractères'])
                    ]
            ])
            ->add('firstname', TextType::class, [
                'constraints' =>
                    [
                        new Assert\NotBlank(['message' => 'Veuillez rentrer votre prénom']),
                        new Assert\Length(['min' => 2, 'minMessage' => 'Votre prénom doit avoir au moins deux caractères'])
                    ]
            ])
            ->add('email', EmailType::class, [
                'constraints' =>
                    [
                        new Assert\NotBlank(['message' => 'Veuillez rentrer un email']),
                        new Assert\Email([
                            'message' => 'Votre email "{{ value }}" n\'est pas correctement renseigné'
                        ])
                    ]
            ])
            ->add('phone', PhoneType::class)
            ->add('content', TextareaType::class, [
                'constraints' =>
                    [
                        new Assert\NotBlank(['message' => 'Quel est votre message ???'])
                    ]
                ])
            
            ;
       
    }
    
   

}
