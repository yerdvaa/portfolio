<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;


class SelectCatType extends AbstractType
{
       /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', EntityType::class,[
                'class' => 'AppBundle\Entity\Categories',
                'choice_label' => 'nom',
                'placeholder' => ''
                ]);    
    }

    /**
     * {@inheritdoc}
     */
   /* public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Articles'
        ));
    }*/

    /**
     * {@inheritdoc}
     */
   /* public function getBlockPrefix()
    {
        return 'AppBundle_categories';
    }*/
}
