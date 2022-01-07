<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\UsuarioTaller;

/**
 * UsuarioTallerSearch represents the model behind the search form about `backend\models\UsuarioTaller`.
 */
class UsuarioTallerSearch extends UsuarioTaller
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'id_alumno', 'id_taller', 'id_alumno_juridico'], 'integer'],
            [['visto', 'token'], 'safe'],
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
        $query = UsuarioTaller::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'id_alumno' => $this->id_alumno,
            'id_taller' => $this->id_taller,
            'id_alumno_juridico' => $this->id_alumno_juridico,
        ]);

        $query->andFilterWhere(['ilike', 'visto', $this->visto])
            ->andFilterWhere(['ilike', 'token', $this->token]);

        return $dataProvider;
    }
}
