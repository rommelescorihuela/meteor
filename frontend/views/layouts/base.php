<?php
/**
 * @var yii\web\View $this
 * @var string $content
 */

use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;

$this->beginContent('@frontend/views/layouts/_clear.php')
?>
<header>
    <?php NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => ['navbar-dark', 'bg-dark', 'navbar-expand-md'],
        ],
    ]); ?>
    <?php echo Nav::widget([
        'options' => ['class' => ['navbar-nav', 'justify-content-end', 'ml-auto']],
        'items' => [
            //['label' => Yii::t('frontend', 'Home'), 'url' => ['/site/index']],
            //['label' => Yii::t('frontend', 'About'), 'url' => ['/page/view', 'slug'=>'about']],
            ['label' => Yii::t('frontend', 'Login'), 'url' => ['/user/sign-in/login'], 'visible'=>(Yii::$app->user->isGuest and !isset($_SESSION['user']))],
            ['label' => Yii::t('frontend', 'Signup'), 'url' => ['/user/sign-in/signup'], 'visible'=>(Yii::$app->user->isGuest and !isset($_SESSION['user']))],
            ['label' => Yii::t('frontend', 'Solicitudes'), 'url' => ['/datos-organizacion/index'], 'visible'=>!Yii::$app->user->isGuest],
            ['label' => Yii::t('frontend', 'Articles'), 'url' => ['/article/index']],
            ['label' => Yii::t('frontend', 'Contact'), 'url' => ['/site/contact']],
            ['label' => Yii::t('frontend', 'Students'), 'url' => ['/alumnos/sign-in/login'], 'visible'=>!isset($_SESSION['user'])],
            ['label' => Yii::t('frontend', 'Talleres'), 'url' => ['/taller/index'], 'visible'=>isset($_SESSION['user'])],
            ['label' => Yii::t('frontend', 'Close'), 'url' => ['/site/logout'], 'visible'=>isset($_SESSION['user'])],
            [
                'label' => Yii::$app->user->isGuest ? '' : Yii::$app->user->identity->getPublicIdentity(),
                'visible'=>!Yii::$app->user->isGuest,
                'items'=>[
                    [
                        'label' => Yii::t('frontend', 'Settings'),
                        'url' => ['/user/default/index']
                    ],
                    [
                        'label' => Yii::t('frontend', 'Backend'),
                        'url' => Yii::getAlias('@backendUrl'),
                        'visible'=>Yii::$app->user->can('manager')
                    ],
                    [
                        'label' => Yii::t('frontend', 'Logout'),
                        'url' => ['/user/sign-in/logout'],
                        'linkOptions' => ['data-method' => 'post']
                    ]
                ]
            ],
            /*[
                'label'=>Yii::t('frontend', 'Language'),
                'items'=>array_map(function ($code) {
                    return [
                        'label' => Yii::$app->params['availableLocales'][$code],
                        'url' => ['/site/set-locale', 'locale'=>$code],
                        'active' => Yii::$app->language === $code
                    ];
                }, array_keys(Yii::$app->params['availableLocales']))
            ]*/
        ]
    ]); ?>
    <?php NavBar::end(); ?>
</header>

<main class="flex-shrink-0" role="main">
    <?php echo $content ?>
</main>


<?php $this->endContent() ?>
