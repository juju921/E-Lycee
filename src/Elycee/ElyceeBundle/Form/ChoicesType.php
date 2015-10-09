<?php

namespace Elycee\ElyceeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ChoicesType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('contentChoice')
            ->add('response','choice',array(
                'choices' => array('1' => 'oui', '0' => 'non'),
                'required' => true,
                'expanded'=> true,
                'multiple'=>false,
            ))

        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Choices'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'elycee_elyceebundle_choices';
    }
}
