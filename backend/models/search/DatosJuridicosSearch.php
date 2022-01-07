<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\DatosJuridicos;

/**
 * DatosJuridicosSearch represents the model behind the search form about `backend\models\DatosJuridicos`.
 */
class DatosJuridicosSearch extends DatosJuridicos
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['estado_oficina', 'iddatosorganizacion', 'id'], 'integer'],
            [['oficina_registro', 'numero', 'folio', 'tomo', 'fecha', 'rif', 'nit'], 'safe'],
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
        $query = DatosJuridicos::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'estado_oficina' => $this->estado_oficina,
            'fecha' => $this->fecha,
            'iddatosorganizacion' => $this->iddatosorganizacion,
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['ilike', 'oficina_registro', $this->oficina_registro])
            ->andFilterWhere(['ilike', 'numero', $this->numero])
            ->andFilterWhere(['ilike', 'folio', $this->folio])
            ->andFilterWhere(['ilike', 'tomo', $this->tomo])
            ->andFilterWhere(['ilike', 'rif', $this->rif])
            ->andFilterWhere(['ilike', 'nit', $this->nit]);

        return $dataProvider;
    }
}
