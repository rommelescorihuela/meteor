<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[MaterialApoyo]].
 *
 * @see MaterialApoyo
 */
class MaterialApoyoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return MaterialApoyo[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return MaterialApoyo|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
