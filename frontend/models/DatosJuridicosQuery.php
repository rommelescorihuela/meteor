<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[DatosJuridicos]].
 *
 * @see DatosJuridicos
 */
class DatosJuridicosQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return DatosJuridicos[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return DatosJuridicos|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
