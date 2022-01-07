<?php

namespace frontend\modules\alumnos\models;

use cheatsheet\Time;
use frontend\models\DatosPersonales;
use Yii;
use yii\base\Model;

/**
 * Login form
 */
class LoginForm extends Model
{
    public $identity;
    public $password;
    public $rememberMe = true;

    private $user = false;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['identity', 'password'], 'required'],
            // password is validated by validatePassword()
            ['password', 'validatePassword'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'identity' => Yii::t('frontend', 'E-mail'),
            'password' => Yii::t('frontend', 'Password'),
        ];
    }


    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     */
    public function validatePassword()
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || $user->password!=$this->password) {
                $this->addError('password', Yii::t('frontend', 'Incorrect username or password.'));
            }
            else{return true;}
        }
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    public function getUser()
    {
        if ($this->user === false) {
            $this->user = DatosPersonales::find()
                ->andWhere(['correo' => $this->identity])
                ->one();
        }

        return $this->user;
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return boolean whether the user is logged in successfully
     */
    public function login()
    {
        //var_dump($this->validatePassword());
        if ($this->validatePassword()) {
            return true;
        }
        else{return false;}
        
    }
}
