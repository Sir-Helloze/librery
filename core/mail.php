<?php
$json = file_get_contents('../goods.json');
$json = json_decode($json, true);

//письмо
$massage = '';
$massage .= '<h1>Pets Service</h1>';
$massage .= '<p>Телефон:'.$_POST['ephone'].'</p>';
$massage .= '<p>Почта:'.$_POST['email'].'</p>';
$massage .= '<p>Клиент:'.$_POST['ename'].'</p>';

$cart = $_POST['cart'];
$sum = 0;
foreach($cart as $id=>$count){
    $massage .=$json[$id]['name'].' --- ';
    $massage .=$count.' --- ';
    $massage .=$count*$json[$id]['cost'];
    $massage .='<br>';
    $sum = $sum + $count*$json[$id]['cost'];
}
$massage .='Всего: '.$sum;
    
$to = 'rnsky@mail.ru'.',';
$to .=$_POST['email'];
$spectext = '<!DOCTYPE HTML><html><head><title>Запись</title></head><body>';
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
$m = mail($to, 'Pets Service', $spectext.$massage.'</body></html>', $headers);
if ($m) {
    echo 1;
}
else{
    echo 0;
}
?>