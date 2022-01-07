<?php

namespace backend\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Documentos;

/**
 * DocumentosSearch represents the model behind the search form about `backend\models\Documentos`.
 */
class DocumentosSearch extends Documentos
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['documento', 'tipo', 'base_url', 'path'], 'safe'],
            [['id_organizacion', 'id', 'tamano', 'create_at', 'orden'], 'integer'],
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
        $query = Documentos::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id_organizacion' => $this->id_organizacion,
            'id' => $this->id,
            'tamano' => $this->tamano,
            'create_at' => $this->create_at,
            'orden' => $this->orden,
        ]);

        $query->andFilterWhere(['ilike', 'documento', $this->documento])
            ->andFilterWhere(['ilike', 'tipo', $this->tipo])
            ->andFilterWhere(['ilike', 'base_url', $this->base_url])
            ->andFilterWhere(['ilike', 'path', $this->path]);

        return $dataProvider;
    }
}
