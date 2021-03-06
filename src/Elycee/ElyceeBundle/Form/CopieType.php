<?php

namespace Elycee\ElyceeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class CopieType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('reponse','choice',array(
        'choices' => array('1' => 'oui', '0' => 'non'),
                'expanded'  => true,
                'mapped'    => false,
                'required'  => true,
             ));
           /* ->add('reponse', 'entity', array(
                'choices'   => array('1' => 'oui', '0' => 'non'),
                'class' => 'ElyceeElyceeBundle:Choices',
                'property' => 'response'
            ));*/

    }

    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Copie'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'elycee_elyceebundle_copie';
    }
}
