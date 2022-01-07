<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[DatosPersonales]].
 *
 * @see DatosPersonales
 */
class DatosPersonalesQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return DatosPersonales[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return DatosPersonales|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
