<?php

namespace frontend\models;

/**
 * This is the ActiveQuery class for [[Respuestas]].
 *
 * @see Respuestas
 */
class RespuestasQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Respuestas[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Respuestas|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
