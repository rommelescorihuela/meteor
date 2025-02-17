<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Parroquia;

/**
 * ParroquiaSearch represents the model behind the search form about `backend\models\Parroquia`.
 */
class ParroquiaSearch extends Parroquia
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'idmunicipio'], 'integer'],
            [['parroquia'], 'safe'],
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
        $query = Parroquia::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'idmunicipio' => $this->idmunicipio,
        ]);

        $query->andFilterWhere(['ilike', 'parroquia', $this->parroquia]);

        return $dataProvider;
    }
}
