<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Respuestas;

/**
 * RespuestasSearch represents the model behind the search form of `frontend\models\Respuestas`.
 */
class RespuestasSearch extends Respuestas
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_pregunta', 'id_alumno', 'id_alumno_juridico'], 'integer'],
            [['respuesta'], 'safe'],
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
    public function search($params)
    {
        $query = Respuestas::find();

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
            'id_pregunta' => $this->id_pregunta,
            'id_alumno' => $this->id_alumno,
            'id_alumno_juridico' => $this->id_alumno_juridico,
        ]);

        $query->andFilterWhere(['ilike', 'respuesta', $this->respuesta]);

        return $dataProvider;
    }
}
