<?php

class App{

    private $controller = '';
    private $method = 'index';
    private $params = [];

    public function __construct(){
        $this->routing();
    }

    private function routing(){
        $parsed = $this->parseUrl();

        if($parsed[0][0]=="") $this->controller = 'home';
        else if($parsed[0][1]=='index') $this->redirect(BASEURL);
        else if(file_exists('../App/controllers/'.$parsed[0][1].'.php')){
            $this->controller = $parsed[0][1];
            var_dump($parsed[0][1]);
            unset($parsed[0][0]);
            unset($parsed[0][1]);
        } else $this->redirect($_SERVER['REQUEST_URI'], 404);

        require_once '../App/controllers/'.$this->controller.'.php';
        $this->controller = new $this->controller;

        if(isset($parsed[0][2])){
            if(method_exists($this->controller, $parsed[0][2])){
                $this->method = $parsed[0][2];
                unset($parsed[0][2]);
            }
        }

        if(!empty($parsed[0])) $this->params = array_values($parsed[0]);
        array_push($this->params, $parsed[1]);

        call_user_func_array([$this->controller, $this->method], $this->params);
    }

    private function parseUrl(){
        $result='';
        $method='get';

        if(isset($_GET['url?'])) $result = $_GET['url?'];
        else if(isset($_POST['url?'])){
            $result = $_POST['url?'];
            $method = 'post';
        }

        $result = filter_var($result, FILTER_SANITIZE_URL);
        $result = explode('/', $result);
        return [$result, $method];
    }

    function redirect($url, $statusCode = 303){
        header('Location: ' . $url, true, $statusCode);
        die();
    }
    
}