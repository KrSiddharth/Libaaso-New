<?php echo $header; ?>
<div class="container">
    <div id="content" class="registerAsContainer">
        <div class="verticalAlign">
        <h1><?php echo $heading_title; ?></h1>
        <ul>
            <a href="<?php echo $register_seller; ?>"><li class="registerAsSeller"><img src="catalog/view/theme/<?php echo $template; ?>/image/register-as-seller-64.png" /><span><?php echo $text_seller; ?></span></li></a>
            <li class="registerAsOr"><?php echo $text_or; ?></li>
            <a href="<?php echo $register; ?>"><li class="registerAsBuyer"><img src="catalog/view/theme/<?php echo $template; ?>/image/register-as-buyer-64.png" /><span><?php echo $text_buyer; ?></span> </li></a>
        </ul>
        </div>
    </div>
</div>
<?php echo $footer; ?>