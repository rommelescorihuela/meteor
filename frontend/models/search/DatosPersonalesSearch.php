<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\DatosPersonales;

/**
 * DatosPersonalesSearch represents the model behind the search form of `app\models\DatosPersonales`.
 */
class DatosPersonalesSearch extends DatosPersonales
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'cedula', 'representante', 'integrante', 'id_organizacion'], 'integer'],
            [['nombre', 'apellido', 'profesion_oficio', 'telefono1', 'telefono2', 'telefono3', 'correo'], 'safe'],
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
        $query = DatosPersonales::find();

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
            'cedula' => $this->cedula,
            'representante' => $this->representante,
            'integrante' => $this->integrante,
            'id_organizacion' => $this->id_organizacion,
        ]);

        $query->andFilterWhere(['ilike', 'nombre', $this->nombre])
            ->andFilterWhere(['ilike', 'apellido', $this->apellido])
            ->andFilterWhere(['ilike', 'profesion_oficio', $this->profesion_oficio])
            ->andFilterWhere(['ilike', 'telefono1', $this->telefono1])
            ->andFilterWhere(['ilike', 'telefono2', $this->telefono2])
            ->andFilterWhere(['ilike', 'telefono3', $this->telefono3])
            ->andFilterWhere(['ilike', 'correo', $this->correo]);

        return $dataProvider;
    }
}
