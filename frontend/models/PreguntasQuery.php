<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[Preguntas]].
 *
 * @see Preguntas
 */
class PreguntasQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Preguntas[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Preguntas|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
