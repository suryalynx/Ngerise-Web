<?php

class Home extends Controller{
    public function index(){
        $data['title'] = 'Welcome to Ngerise Support';
        $this->view('home/index', $data);
    }
}