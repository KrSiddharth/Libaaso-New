	<?php echo $header; ?>

<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container" id="content">
   <?php echo $content_top; ?>
   <ul class="breadcrumb">
       <?php foreach ($breadcrumbs as $breadcrumb) { ?>
       <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
       <?php } ?>
   </ul>
   <h1><?php echo $heading_title; ?></h1>
	<?php echo $para; ?>
   

   <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>

