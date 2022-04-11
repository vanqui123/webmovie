<?php
session_start();
require "config.php";
require "model/db.php";
require "model/moves.php";

$move = new Move;
if(isset($_POST['submit'])){
    $comment_text = $_POST['commenttxt'];
    $id = $_POST['id'];
    $username = $_POST['username'];
    if(!$_SESSION['user']){
        header('location:login/index.php');
        confirm('Bạn có muốn đăng xuất không');
    }
    else{
        if($comment_text === null){
            alert("Bạn chưa nhập bình luận của mình");
        }
        else{
            $move->addComment($comment_text,$id,$username);
    }
    }
}
header('Location: ' . $_SERVER['HTTP_REFERER']);