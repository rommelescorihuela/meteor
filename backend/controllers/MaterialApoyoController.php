<?php

namespace backend\controllers;

use Yii;
use backend\models\MaterialApoyo;
use backend\models\MaterialApoyoSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * MaterialApoyoController implements the CRUD actions for MaterialApoyo model.
 */
class MaterialApoyoController extends Controller
{

    /** @inheritdoc */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all MaterialApoyo models.
     * @return mixed
     */
    public function actionIndex()
    {
        $id_taller = Yii::$app->request->get('id');
        $searchModel = new MaterialApoyoSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams,$id_taller);
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'id_taller' => $id_taller,
        ]);
    }

    /**
     * Displays a single MaterialApoyo model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new MaterialApoyo model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new MaterialApoyo();
        $model->id_taller = Yii::$app->request->get('id');
        if ($model->load(Yii::$app->request->post())) {
            $file = UploadedFile::getInstance($model, 'file');
            if (!is_null($file)) {
                var_dump($file);
                $model->file_src_filename = $file->name;
                $ext = explode(".", $file->name);
                $ext = (end($ext));
                $model->file_web_filename = Yii::$app->security->generateRandomString().".{$ext}";
                Yii::$app->params['uploadPath'] = Yii::$app->basePath . '/web/uploads/material_apoyo/';
                $path = Yii::$app->params['uploadPath'] . $model->file_web_filename;
                $file->saveAs($path);
            }
            if ($model->save()) {             
                return $this->redirect(['view', 'id' => $model->id]);             
            }  
            else {
                var_dump ($model->getErrors()); die();
            }
        }
        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing MaterialApoyo model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        //$model->id_taller = Yii::$app->request->get('id');
        if ($model->load(Yii::$app->request->post())) {
            $file = UploadedFile::getInstance($model, 'file');
            if (!is_null($file)) {
                var_dump($file);
                $model->file_src_filename = $file->name;
                $ext = explode(".", $file->name);
                $ext = (end($ext));
                $model->file_web_filename = Yii::$app->security->generateRandomString().".{$ext}";
                Yii::$app->params['uploadPath'] = Yii::getAlias('@root') . '/common/uploads/material_apoyo/';
                $path = Yii::$app->params['uploadPath'] . $model->file_web_filename;
                //echo Yii::$app->params['uploadPath'];exit();
                $file->saveAs($path);
            }
            if ($model->save()) {     
                //var_dump ($model->getErrors()); die();        
                return $this->redirect(['view', 'id' => $model->id]);             
            }  
            else {
                var_dump ($model->getErrors()); die();
            }
        }
        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing MaterialApoyo model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the MaterialApoyo model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MaterialApoyo the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = MaterialApoyo::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
