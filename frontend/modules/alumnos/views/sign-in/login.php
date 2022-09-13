<?php
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use yii\captcha\Captcha;


/**
 * @var yii\web\View $this
 * @var yii\bootstrap4\ActiveForm $form
 * @var frontend\modules\user\models\LoginForm $model
 */

$this->title = Yii::t('frontend', 'Login to Student Module');
?>

<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
<div class="site-login mt-5">
    <div class="row justify-content-center">
        <div class="col-sm-4">
            <div class="card mb-2">
                <div class="card-body">
                    <h2 class="text-muted text-center"><?php echo Html::encode($this->title) ?></h2>
                    <?php echo $form->errorSummary($model) ?>
                    <?php echo $form->field($model, 'identity') ?>
                    <?php echo $form->field($model, 'password')->passwordInput() ?>
                    <?= $form->field($model, 'captcha')->widget(Captcha::class, [
                        'captchaAction'=>'/site/captcha'
                    ]); ?>

                    <div class="d-flex justify-content-center">
                        <?php echo Html::a(Yii::t('frontend', 'Forgot your password?'), ['sign-in/request-password-reset'], ['class' => ['text-sm']]) ?>
                    </div>

                    <div class="form-group">
                        <?php echo Html::submitButton(Yii::t('frontend', 'Login'), ['class' => 'btn btn-primary btn-lg btn-block', 'name' => 'login-button']) ?>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<?php ActiveForm::end(); ?>

<?php
    $js = <<<JS
       $('#loginform-captcha-image').trigger('click');
    JS;
    $this->registerJs($js, $this::POS_READY);
?>