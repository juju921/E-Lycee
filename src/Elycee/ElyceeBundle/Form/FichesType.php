<?php

namespace Elycee\ElyceeBundle\Form;

use Elycee\ElyceeBundle\Entity\Questions;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Elycee\ElyceeBundle\Form\ChoicesType;
use Elycee\ElyceeBundle\Form\QuestionsType;

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
            ->add('teacher')
            ->add('classLevel', 'choice', array(
                'choices' => array('1' => 'Première S', '2' => 'Terminale S'),
                'required' => true,
            ))
            ->add('status','text',array('data' => 'unpublish'))

            /*->add('choices', 'collection',
                array(
                'type'         => new ChoicesType(),
                'allow_add'    => true,
                'allow_delete' => true,
                'by_reference' => false
                ))*/
            ->add('questions', 'collection',
                array(
                    'type'         => new QuestionsType(),
                    'allow_add'    => true,
                    'allow_delete' => true,
                    'by_reference' => false
                ))
            ->add('nbr', 'integer', array('mapped' => false))
            ->add('continuer', 'submit')
            ->add('valider','submit')

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
