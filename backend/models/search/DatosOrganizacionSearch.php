<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\DatosOrganizacion;

/**
 * DatosOrganizacionSearch represents the model behind the search form about `backend\models\DatosOrganizacion`.
 */
class DatosOrganizacionSearch extends DatosOrganizacion
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre_o1', 'nombre_o2', 'nombre_o3', 'funcionario', 'fecha_registro', 'direccion', 'observaciones', 'servicios'], 'safe'],
            [['id_direccion', 'n_integrantes', 'idtiposolicitud', 'idparroquia', 'idservicios', 'id_user', 'id'], 'integer'],
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
        $query = DatosOrganizacion::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'fecha_registro' => $this->fecha_registro,
            'id_direccion' => $this->id_direccion,
            'n_integrantes' => $this->n_integrantes,
            'idtiposolicitud' => $this->idtiposolicitud,
            'idparroquia' => $this->idparroquia,
            'idservicios' => $this->idservicios,
            'id_user' => $this->id_user,
            'id' => $this->id,
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
