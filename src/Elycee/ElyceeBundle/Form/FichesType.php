<?php

namespace Elycee\ElyceeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Elycee\ElyceeBundle\Form\ChoicesType;

class FichesType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('content')
            ->add('teacher')
            ->add('niveau')
            ->add('status')
            ->add('choices', 'collection',
                array(
                'type'         => new ChoicesType(),
                'allow_add'    => true,
                'allow_delete' => true,
                'by_reference' => false
                ))

        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Fiches'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'elycee_elyceebundle_fiches';
    }
}
