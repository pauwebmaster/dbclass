<?php
ob_start();
	
$dbhost = "localhost"; //Veritabanın bulunduğu host
$dbuser = "fatih"; //Veritabanı Kullanıcı Adı
$dbpass = "123578951"; //Veritabanı Şifresi
$dbdata = "fg"; //Veritabanı Adı
/*
$dbhost="localhost";
$dbuser="fatih";
$dbpass="123578951";
$dbdata="fg";
*/
include("dbclass.php"); //veritabani class dosyamızı dahil ediyoruz
$bag = new db(); // db class'imizla $bag nesnemizi olusturduk


 // $_GET["sayfa"] ile hangi sayfada olduğumuzu alıyoruz bir sayı girilmemişse veya veri boş gelirse 1 sayıyoruz.
 $sayfa = isset($_GET["sayfa"]) ? (int) $_GET["sayfa"] : 1;
 
 //yazdırma SEÇİMİ (OBJ_ALL) kullandık sayfa başı (5) kayıt sonraki linklerin deseni (?sayfa=) sayfalama numaraları (3)lü sıra olsun
 $sonuc = $bag->sayfala("OBJ_ALL", "haberler", "id,baslik,haber,tarih", "ORDER BY id ASC", array(), 5, $sayfa, "?sayfa=", 3);
 
 // $sonuc["veriler"] dizi olduğu için döngü kurduk
 foreach($sonuc["veriler"] as $satir) {
 echo "Haber id: ".$satir->id."<br>Başlık: ".$satir->baslik."<br>Haber: ".$satir->haber."<br>Tarih: ".$satir->tarih;
 echo "<hr>";
 }
 
 // Sayfalama yapacak olan kodlarımız
 echo "<div class='sayfala'>";
 echo $sonuc["sayfalar"];//sayfa sayilarini yazdirir (ilk onceki [-10]123[4]567[+10] sonraki son) seklinde
 echo "</div><br>";
 
 // Bazen kayıt sayısı sayfa sayısı gerekli olabilir kullanabileceklerimiz
 echo $sonuc["toplamsayfa"]. " sayfada toplam " .$sonuc["toplamkayit"]. " kayit var, " .$sayfa. ". sayfadasınız.";


$bag->kapat();// $bag nesnemizi kapattik

ob_end_flush();
?>