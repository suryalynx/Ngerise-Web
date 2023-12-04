<?php

class About extends Controller{
    public function index(){
        $data['title'] = 'About Ngerise Support';
        $this->view('about/index', $data);
    }
}