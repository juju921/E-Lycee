<?php

namespace Elycee\ElyceeBundle\Form;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class PostsType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre', 'text')
            ->add('abstract')
            ->add('content', 'textarea', array(
                'attr' => array(
                    'class' => 'tinymce',
                    'data-theme' => 'bbcode' // Skip it if you want to use default theme
                )
            ))
            ->add('urlThumbnail', 'iphp_file' )
            ->add('date','collot_datetime', array( 'pickerOptions' =>
                array('format' => 'dd/mm/yyyy',
                    'weekStart' => 1,
                    'startDate' => date('dd/mm/yyyy', 0),
                    'autoclose' => true,
                    'startView' => 'month',
                    'minView' => 'hour',
                    'maxView' => 'year',
                    'todayBtn' => false,
                    'todayHighlight' => false,
                    'keyboardNavigation' => true,
                    'language' => 'fr',
                    'forceParse' => true,
                    'minuteStep' => 5,
                    'pickerPosition' => 'bottom-right',
                )))
            ->add('status', 'entity', array(
                'class' => 'ElyceeElyceeBundle:Status',
                'property' => 'nom'
            ))

        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Elycee\ElyceeBundle\Entity\Posts'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'elycee_elyceebundle_posts';
    }
}
