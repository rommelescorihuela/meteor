<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[Municipio]].
 *
 * @see Municipio
 */
class MunicipioQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Municipio[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Municipio|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
