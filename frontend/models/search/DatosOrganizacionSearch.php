<?php

namespace frontend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\DatosOrganizacion;

/**
 * DatosOrganizacionSearch represents the model behind the search form of `app\models\DatosOrganizacion`.
 */
class DatosOrganizacionSearch extends DatosOrganizacion
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_direccion', 'n_integrantes'], 'integer'],
            [['nombre_o1', 'nombre_o2', 'nombre_o3', 'funcionario', 'fecha_registro', 'direccion', 'observaciones', 'servicios'], 'safe'],
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
        $query = DatosOrganizacion::find();

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
            'fecha_registro' => $this->fecha_registro,
            'id_direccion' => $this->id_direccion,
            'n_integrantes' => $this->n_integrantes,
            'id_user' => Yii::$app->user->identity->id,
        ]);

        $query->andFilterWhere(['ilike', 'nombre_o1', $this->nombre_o1])
            ->andFilterWhere(['ilike', 'nombre_o2', $this->nombre_o2])
            ->andFilterWhere(['ilike', 'nombre_o3', $this->nombre_o3])
            ->andFilterWhere(['ilike', 'funcionario', $this->funcionario])
            ->andFilterWhere(['ilike', 'direccion', $this->direccion])
            ->andFilterWhere(['ilike', 'observaciones', $this->observaciones])
            ->andFilterWhere(['ilike', 'servicios', $this->servicios]);

        return $dataProvider;
    }
}
