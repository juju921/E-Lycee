<?php

namespace Elycee\ElyceeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class CommentsType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('contents')
            //->add('createAt')
            ->add('username')
           // ->add('post')
            ->add('envoyer', 'submit')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Comments'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'elycee_elyceebundle_comments';
    }
}
