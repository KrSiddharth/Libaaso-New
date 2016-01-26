<?php
include_once('simple_html_dom.php');
$target_url ="http://www.surattextiledirectory.com/";
$html = new simple_html_dom();
$html->load_file($target_url);
foreach($html->find('a') as $link)
{
echo $link->href."<br />";
    /*if(substr($link->href, 0, strlen($link->href))== "surat-textile-market-list"){
        echo "1";
    }*/

    if (strpos($link->href,'surat-textile-market-list') !== false) {
        echo 'true'."<br/>";
       $new_url="http://www.surattextiledirectory.com/".$link->href;

        $html->load_file($new_url);
        /*foreach($html->find('a') as $link1)
        {
            echo $link1->first_child()->src."<br />";
            if(isset($link1->first_child()->src)){
                echo 'false';
            }

        }*/

        foreach($html->find('h3') as $title)
        {
            echo  $title->first_child()->href."<br/>";
        }

        /*if(strops($html->find('div[class=pagination]')->last_child()->first_child()->innertext,'>')){
            echo "Found next page";

        }else{
            echo "Not Found";
        }*/

       foreach($html->find('div[class=pagination]') as $div) {
           echo $div->last_child()->prev_sibling();
       }

        $html->load_file('http://www.surattextiledirectory.com/sachin-synthetics/');

        echo $html->find('div[class=subTit]')[0];

        foreach($html->find('div[class=work_box] span') as $work){
            echo $work->innertext;
        }

        if(strpos($html->find('section[class=box2] nav b')[2]->innertext,'Mobile')!=false){
            echo "oh! yeah";
        }


        break;
    }
}
