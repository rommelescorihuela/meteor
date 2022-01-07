<?php

namespace backend\controllers;

use Yii;
use common\models\Model;
use backend\models\DatosOrganizacion;
use backend\models\DatosPersonales;
use backend\models\Documentos;
use backend\models\Servicios;
use backend\models\Estado;
use backend\models\Municipio;
use backend\models\Parroquia;
use backend\models\search\DatosOrganizacionSearch;
use backend\models\TipoSolicitud;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;

/**
 * DatosOrganizacionController implements the CRUD actions for DatosOrganizacion model.
 */
class DatosOrganizacionController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all DatosOrganizacion models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new DatosOrganizacionSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single DatosOrganizacion model.
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
     * Creates a new DatosOrganizacion model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new DatosOrganizacion();
        $modelts = new Tiposolicitud();
        $modeles = new Estado();
        $modelmun = new Municipio();
        $modelpar = new Parroquia();
        $modelser = new Servicios();
        $modeldoc = new Documentos();
        $modelper = [new DatosPersonales()];
        $datats = $modelts->find()->all();
        $dataes = $modeles->find()->all();
        $datamun = $modelmun->find()->all();
        $datapar = $modelpar->find()->all();
        $dataser = $modelser->find()->all();
        $estado = null;
        $municipio = null;
        /*if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }*/
        if ($model->load(Yii::$app->request->post())) {

            $modelper = Model::createMultiple(DatosPersonales::classname());
            Model::loadMultiple($modelper, Yii::$app->request->post());

            // ajax validation
            if (Yii::$app->request->isAjax) {
                Yii::$app->response->format = Response::FORMAT_JSON;
                return ArrayHelper::merge(
                    ActiveForm::validateMultiple($modelper),
                    ActiveForm::validate($model)
                );
            }
        $valid = $model->validate();
        $valid = Model::validateMultiple($modelper) && $valid;
            
            if ($valid) {
                $transaction = \Yii::$app->db->beginTransaction();
                try {
                    if ($flag = $model->save(false)) {
                        foreach ($modelper as $modelAddress) {
                            $modelAddress->id_organizacion = $model->id;
                            if (! ($flag = $modelAddress->save(false))) {
                                $transaction->rollBack();
                                break;
                            }
                        }
                    }
                    if ($flag) {
                        $transaction->commit();
                        return $this->redirect(['view', 'id' => $model->id]);
                    }
                } catch (Exception $e) {
                    $transaction->rollBack();
                }
            }
        }    

        return $this->render('create', [
            'model' => $model,
            'modelts' => $modelts,
            'modeldoc' => $modeldoc,
            'modelper' => (empty($modelper)) ? [new DatosPersonales] : $modelper,
            'datats' => $datats,
            'dataes' => $dataes,
            'datamun' => $datamun,
            'datapar' => $datapar,
            'dataser' => $dataser,
            'estado' => $estado,
            'municipio' => $municipio,
        ]);
    }

    /**
     * Updates an existing DatosOrganizacion model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelper = DatosPersonales::find()->where(['id_organizacion' => $model->id ])->all();
        $estado = $model->idparroquia0->idmunicipio0->idestado0->id;
        $municipio = $model->idparroquia0->idmunicipio0->id;
        $modelts = new Tiposolicitud();
        $modeles = new Estado();
        $modelmun = new Municipio();
        $modelpar = new Parroquia();
        $modelser = new Servicios();
        $datats = $modelts->find()->all();
        $dataes = $modeles->find()->all();
        $datamun = $modelmun->find()->all();
        $datapar = $modelpar->find()->all();
        $dataser = $modelser->find()->all();

        if ($model->load(Yii::$app->request->post())) {

            $oldIDs = ArrayHelper::map($modelper, 'id', 'id');
            $modelper = Model::createMultiple(DatosPersonales::classname(), $modelper);
            Model::loadMultiple($modelper, Yii::$app->request->post());
            $deletedIDs = array_diff($oldIDs, array_filter(ArrayHelper::map($modelper, 'id', 'id')));

            // ajax validation
            if (Yii::$app->request->isAjax) {
                Yii::$app->response->format = Response::FORMAT_JSON;
                return ArrayHelper::merge(
                    ActiveForm::validateMultiple($modelper),
                    ActiveForm::validate($model)
                );
            }

            // validate all models
            $valid = $model->validate();
            $valid = Model::validateMultiple($modelper) && $valid;

            if ($valid) {
                $transaction = \Yii::$app->db->beginTransaction();
                try {
                    if ($flag = $model->save(false)) {
                        if (! empty($deletedIDs)) {
                            Address::deleteAll(['id' => $deletedIDs]);
                        }
                        foreach ($modelper as $modelAddress) {
                            $modelAddress->id_organizacion = $model->id;
                            if (! ($flag = $modelAddress->save(false))) {
                                $transaction->rollBack();
                                break;
                            }
                        }
                    }
                    if ($flag) {
                        $transaction->commit();
                        return $this->redirect(['view', 'id' => $model->id]);
                    }
                } catch (Exception $e) {
                    $transaction->rollBack();
                }
            }
        }

        return $this->render('update', [
            'model' => $model,
            'modelts' => $modelts,
            'modelper' => (empty($modelper)) ? [new DatosPersonales] : $modelper,
            'datats' => $datats,
            'dataes' => $dataes,
            'datamun' => $datamun,
            'datapar' => $datapar,
            'dataser' => $dataser,
            'estado' => $estado,
            'municipio' => $municipio,
        ]);
    }

    /**
     * Deletes an existing DatosOrganizacion model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        DatosPersonales::deleteAll(['id_organizacion' => $id]);
        Documentos::deleteAll(['id_organizacion' => $id]);
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionMunicipio() {
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $id = $parents[0];
                $out = Municipio::find()
        ->where(['idestado'=>$id])
        ->select(['id as id','municipio as name'])->asArray()->all();
                return Json::encode(['output' => $out, 'selected' => '']);
            }
        }
        return Json::encode(['output' => '', 'selected' => '']);
    }

    public function actionParroquia() {
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $id = $parents[0];
                $out = Parroquia::find()
        ->where(['idmunicipio'=>$id])
        ->select(['id as id','parroquia as name'])->asArray()->all();
                return Json::encode(['output' => $out, 'selected' => '']);
            }
        }
        return Json::encode(['output' => '', 'selected' => '']);
    }

    public function actionAttachmentDownload($id)
    {
        $model = Documentos::findOne($id);
        if (!$model) {
            throw new NotFoundHttpException;
        }

        return Yii::$app->response->sendStreamAsFile(
            Yii::$app->fileStorage->getFilesystem()->readStream($model->path),
            $model->documento
        );
    }


    /**
     * Finds the DatosOrganizacion model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return DatosOrganizacion the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = DatosOrganizacion::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
