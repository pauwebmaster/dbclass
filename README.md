## dbclass basit kullanımı
` <?php
 ob_start();
 
 $dbhost = "localhost";
 $dbuser = "root"; //Veritabanı Kullanıcı Adı
 $dbpass = "root"; //Veritabanı Şifresi
 $dbdata = "renklikodlar"; //Veritabanı Adı
 
 include("dbclass.php"); //veritabani class dosyamızı dahil ediyoruz
 $bag = new db(); // db class'imizla $bag nesnemizi olusturduk
 
 //Kullanılacak olan işlem türü kodları buraya yazılacak
 
 $bag->kapat();// $bag nesnemizi kapattik
 
 ob_end_flush();
 ?>`
