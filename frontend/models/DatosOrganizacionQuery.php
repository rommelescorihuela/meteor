<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[DatosOrganizacion]].
 *
 * @see DatosOrganizacion
 */
class DatosOrganizacionQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return DatosOrganizacion[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return DatosOrganizacion|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
