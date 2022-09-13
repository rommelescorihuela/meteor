<?php

namespace frontend\controllers;

use Yii;
use frontend\models\Respuestas;
use frontend\models\RespuestasSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * RespuestasController implements the CRUD actions for Respuestas model.
 */
class RespuestasController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'actions' => [
                            'index', 'view', 'create', 'update', 'delete'
                        ],
                        'allow' => isset($_SESSION['user']),
                        //'roles' => ['?'],
                        'denyCallback' => function () {
                            return Yii::$app->controller->redirect(['/alumnos/sign-in/login']);
                        }
                    ],
                ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Respuestas models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new RespuestasSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Respuestas model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Respuestas model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($id)
    {
        $model = new Respuestas();
        $model->id_pregunta = $id;
        $model->id_alumno =  $_SESSION['user']['id'];
        $id_taller = \frontend\models\Preguntas::find()->where(['id' => $model->id_pregunta])->one()->id_taller;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/preguntas/index?id='.$id_taller]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Respuestas model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->id_pregunta = $id;
        $model->id_alumno =  $_SESSION['user']['id'];
        $id_taller = \frontend\models\Preguntas::find()->where(['id' => $model->id_pregunta])->one()->id_taller;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['/preguntas/index?id='.$id_taller]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Respuestas model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Respuestas model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Respuestas the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Respuestas::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
