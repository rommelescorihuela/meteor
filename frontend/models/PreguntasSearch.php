<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Preguntas;

/**
 * PreguntasSearch represents the model behind the search form of `frontend\models\Preguntas`.
 */
class PreguntasSearch extends Preguntas
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_taller'], 'integer'],
            [['pregunta'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params,$id)
    {
        $query = Preguntas::find()->where(['id_taller'=>$id]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'id_taller' => $this->id_taller,
        ]);

        $query->andFilterWhere(['ilike', 'pregunta', $this->pregunta]);

        return $dataProvider;
    }
}
