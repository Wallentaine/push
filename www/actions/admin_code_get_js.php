<?php
//Охуевший Мистер Крабс
include('../inc/conf.php');
$u_id=intval($_SESSION['uid']); $nowusr = mysqli_fetch_assoc(mysqli_query($connect_db, "SELECT uid,ty FROM t_users WHERE uid='$u_id' AND pas = '$_SESSION[pass]' LIMIT 1")); $nowusr_ty = explode(' ',$nowusr['ty']);
if (empty($u_id)) { exit('error'); }

$adata = mysqli_fetch_assoc(mysqli_query($connect_db, "SELECT id,sender_id FROM `t_data` LIMIT 1"));

$string = 'self.addEventListener(\'push\', function(event) {
  const data = event.data.json();
  
  const options = {
    body: data.notification.body,
    image: data.notification.image,
    icon: data.data.icon,
    data: {
      url: data.data.url
    }
  };

  event.waitUntil(
    self.registration.showNotification(data.notification.title, options)
  );
});

self.addEventListener(\'notificationclick\', function(event) {
  event.notification.close();
  
  event.waitUntil(
    clients.openWindow(event.notification.data.url)
  );
});';

if(isset($_SERVER['HTTP_USER_AGENT']) and strpos($_SERVER['HTTP_USER_AGENT'],'MSIE')) {
Header('Content-Type: application/force-download'); 
} else {
Header('Content-Type: application/octet-stream'); 
}
Header('Accept-Ranges: bytes'); 
Header('Content-Length: '.strlen($string)); 
Header('Content-disposition: attachment; filename="firebase-messaging-sw.js"'); 
echo $string;
exit();
?>