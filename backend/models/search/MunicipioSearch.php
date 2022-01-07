<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Municipio;

/**
 * MunicipioSearch represents the model behind the search form about `backend\models\Municipio`.
 */
class MunicipioSearch extends Municipio
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'idestado'], 'integer'],
            [['municipio'], 'safe'],
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
        $query = Municipio::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'idestado' => $this->idestado,
        ]);

        $query->andFilterWhere(['ilike', 'municipio', $this->municipio]);

        return $dataProvider;
    }
}
