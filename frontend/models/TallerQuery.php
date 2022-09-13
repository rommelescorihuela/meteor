<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[Taller]].
 *
 * @see Taller
 */
class TallerQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Taller[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Taller|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
