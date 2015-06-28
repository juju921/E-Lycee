<?php

namespace Elycee\ElyceeBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class ElyceeElyceeBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }

}
