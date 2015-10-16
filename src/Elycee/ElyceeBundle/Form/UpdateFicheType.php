<?php
namespace Elycee\ElyceeBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Elycee\ElyceeBundle\Form\QuestionsType;


class UpdateFicheType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->setMethod('PUT')
            ->add('title')

            ->add('classLevel', 'choice', array(
                'choices' => array('1' => 'Première S', '2' => 'Terminale S'),
                'required' => true,
            ))
            ->add('questions', 'collection',
                array(
                    'type'         => new QuestionsType(),
                    'allow_add'    => true,
                    'allow_delete' => true,
                    'by_reference' => false
                ))



            ->add('status','choice',array(
                'choices' => array('publish' => 'Publié', 'unpublish' => 'Non Publié'),
            ))
            ->add('publish','checkbox',array(
                'required'  => false,
                'mapped' => false
            ))
            ->add('valider', 'submit');
    }

    public function configureOptions(OptionsResolver  $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Fiches',
            'cascade_validation' => true,
        ));
    }

    public function getName()
    {
        return 'questions';
    }
}