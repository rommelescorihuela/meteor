<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Preguntas;

/**
 * PreguntasSearch represents the model behind the search form about `backend\models\Preguntas`.
 */
class PreguntasSearch extends Preguntas
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'id_taller'], 'integer'],
            [['pregunta'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
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
    public function search($params)
    {
        $query = Preguntas::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'id_taller' => $this->id_taller,
        ]);

        $query->andFilterWhere(['ilike', 'pregunta', $this->pregunta]);

        return $dataProvider;
    }
}
