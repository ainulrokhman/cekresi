<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('notify'))
{
    function notify($color, $message)
    {
        $ci=& get_instance();
        return $ci->session->set_flashdata('notify', "<div class='alert alert-$color'>$message</div>");
    }   
}

if ( ! function_exists('my_view'))
{
    function my_view($path_view = null, $data = [])
    {
        $ci=& get_instance();
        $ci->load->view('template/header', $data);
        if (isset($path_view)) {
            $ci->load->view($path_view, $data);
        }
        $ci->load->view('template/footer', $data);
    }   
}

if ( ! function_exists('excerpt'))
{
    function excerpt($title)
    {
        if (strlen($title) < 80) {
            return $title;
       } else {
       
          $new = wordwrap($title, 80);
          $new = explode("\n", $new);
       
          $new = $new[0] . '...';
       
          return $new;
       }
    }   
}