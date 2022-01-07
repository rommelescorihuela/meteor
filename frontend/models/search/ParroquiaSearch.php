<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Parroquia;

/**
 * ParroquiaSearch represents the model behind the search form of `app\models\Parroquia`.
 */
class ParroquiaSearch extends Parroquia
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id','idmunicipio'], 'integer'],
            [['parroquia'], 'safe'],
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
        $query = Parroquia::find();

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
        ]);

        $query->andFilterWhere(['ilike', 'parroquia', $this->parroquia]);
        $query->andFilterWhere(['=', 'idmunicipio', $this->idmunicipio]);

        return $dataProvider;
    }
}
