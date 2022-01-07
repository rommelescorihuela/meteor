<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Respuestas;

/**
 * RespuestasSearch represents the model behind the search form about `backend\models\Respuestas`.
 */
class RespuestasSearch extends Respuestas
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'id_pregunta', 'id_alumno', 'id_alumno_juridico'], 'integer'],
            [['respuesta'], 'safe'],
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
        $query = Respuestas::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

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
