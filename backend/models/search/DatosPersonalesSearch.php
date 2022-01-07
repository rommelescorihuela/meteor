<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\DatosPersonales;

/**
 * DatosPersonalesSearch represents the model behind the search form about `backend\models\DatosPersonales`.
 */
class DatosPersonalesSearch extends DatosPersonales
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'apellido', 'profesion_oficio', 'telefono1', 'telefono2', 'telefono3', 'correo'], 'safe'],
            [['cedula', 'representante', 'integrante', 'id_organizacion', 'id'], 'integer'],
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
        $query = DatosPersonales::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'cedula' => $this->cedula,
            'representante' => $this->representante,
            'integrante' => $this->integrante,
            'id_organizacion' => $this->id_organizacion,
            'id' => $this->id,
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
