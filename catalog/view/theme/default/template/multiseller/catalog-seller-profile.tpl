<?php echo $header; ?>
<div class="container ms-catalog-seller-profile">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
		<!-- left column -->
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
		<div class="<?php echo $class; ?> seller-data">
			<?php if ($this->config->get('msconf_enable_seller_banner') && isset($seller['banner'])) { ?>
			<ul class="thumbnails seller-banner">
					<li><a class="thumbnail"><img src="<?php echo $seller['banner']; ?>" title="<?php echo $seller['nickname']; ?>" alt="<?php echo $seller['nickname']; ?>" />
						<div class="infoBox">
							<ul>
								<?php if (isset($seller['city']) && $seller['city']) { ?><li class="col-sm-4" id="location"><?php echo $seller['city']; ?></li><?php } ?>
								<?php if (isset($seller['market']) && $seller['market']) { ?><li class="col-sm-4" id="market"> <?php echo $seller['market']; ?></li><?php } ?>
								<li class="col-sm-4" id="products"><?php echo $seller['total_products']; ?></li>

							</ul>
						</div>
						<div class="avatar-box thumbnail"><img src="<?php echo $seller['thumb']; ?>" /></div>
					</a>
					</li>
			</ul>
			<?php } ?>
			<div class="lower-info-bar">
			<ul class="seller-address col-sm-4">
			<?php if (isset($seller['company']) && $seller['company']) { ?><li> <?php echo $seller['company']; ?></li><?php } ?>
				<?php if (isset($seller['address']) && $seller['address']) { ?><li><?php echo $seller['address']; ?></li><?php } ?>

			</ul>
			<a class="view-products-btn btn btn-primary col-sm-4" href="<?php echo $seller['href']; ?>" ><span><?php echo $ms_catalog_seller_profile_view_products; ?></span></a>
			</div>
				<div class="seller-description"><?php echo $seller['description']; ?></div>
			<!--<?php if ($seller['products']) { ?>
			<hr />
			<h3><?php echo $ms_catalog_seller_profile_products; ?></h3>
			<div class="row">
			  <?php foreach ($seller['products'] as $product) { ?>
			  <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
				<div class="product-thumb transition">
				  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
					  <?php if ($product['images']['pics']) { ?>
					  <?php $i=0; foreach ($product['images']['pics'] as $image) { ?>
					  <?php if($i>=2 || ($product['no_of_images']<=3 && $i==($product['no_of_images']-2))){break;} ?>
					  <img src="<?php echo $image['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
					  <?php $i++; ?>
					  <?php } ?>
					  <div class="fbThumbnail"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
						  <?php if($product['no_of_images']>4) { ?>
						  <div class="fbThumbnailOverlay"></div>
						  <div class="fbThumbnailNumber">
							  <span>+</span><?php echo $product['no_of_images']-4; ?>
						  </div>
						  <?php }?>
					  </div>
					  <?php } ?>
				  </a></div>
				  <div class="caption">
					<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
				  </div>
				  <div class="button-group">
					<a href="<?php echo $product['href']; ?>"><button type="button" class="btn btn-main btn-block"><span><?php echo $ms_view; ?></span></button></a>
				  </div>
				</div>
			  </div>
			  <?php } ?>
			</div>
			<?php } ?>-->
			<!-- end products -->
		</div>

		<!-- right column -->
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-3'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>" style="display: none;">
			<div class="info-box">
				<a class="avatar-box thumbnail" href="<?php echo $seller['href']; ?>"><img src="<?php echo $seller['thumb']; ?>" /></a>
				<div>
				<ul class="list-unstyled">
					<li><h3><?php echo $seller['nickname']; ?></h3></li>
					<?php if (isset($seller['country']) && $seller['country']) { ?><li><?php echo $ms_catalog_seller_profile_country; ?> <?php echo $seller['country']; ?></li><?php } ?>
					<!--
					<?php if (isset($seller['phone']) && $seller['phone']) { ?><li><?php echo $ms_catalog_seller_profile_phone; ?> <?php echo $seller['phone']; ?></li><?php } ?>
-->
				<?php if (isset($seller['exporter']) && $seller['exporter']) { ?><li><?php echo $ms_catalog_seller_profile_exporter; ?> <?php echo $seller['exporter']; ?></li><?php } ?>
				<?php if (isset($seller['market']) && $seller['market']) { ?><li><?php echo $ms_catalog_seller_profile_market; ?> <?php echo $seller['market']; ?></li><?php } ?>
					<!--
					<?php if (isset($seller['address']) && $seller['address']) { ?><li><?php echo $ms_catalog_seller_profile_address; ?> <?php echo $seller['address']; ?></li><?php } ?>
					-->
					
					<?php if (isset($seller['city']) && $seller['city']) { ?><li><?php echo $ms_catalog_seller_profile_city; ?> <?php echo $seller['city']; ?></li><?php } ?>
					<?php if (isset($seller['company']) && $seller['company']) { ?><li><?php echo $ms_catalog_seller_profile_company; ?> <?php echo $seller['company']; ?></li><?php } ?>
					<?php if ($seller['website']) { ?><li><?php echo $ms_catalog_seller_profile_website; ?> <?php echo $seller['website']; ?></li><?php } ?>
					<li><?php echo $ms_catalog_seller_profile_totalsales; ?> <?php echo $seller['total_sales']; ?></li>
					<li><?php echo $ms_catalog_seller_profile_totalproducts; ?> <?php echo $seller['total_products']; ?></li>
				</ul>
					<a href="<?php echo $seller['href']; ?>" class="btn btn-default btn-block"><span><?php echo $ms_catalog_seller_profile_view_products; ?></span></a>
				</div>
			</div>

			<?php if ($this->config->get('mmess_conf_enable') || $this->config->get('msconf_enable_private_messaging') == 2) { ?>
				<?php if ((!$this->customer->getId()) || ($this->customer->getId() != $seller['seller_id'])) { ?>
					
					<?php echo $contactForm; ?>
					
					
					
					
					
					
					
					<!-- Button trigger modal -->
								<div class="contact">
                                    <?php if ($this->customer->getId()) { ?>
<button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#myModal">
  Contact Seller
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Contact Info</h4>
      </div>
      <div class="modal-body">
        
		
	<?php echo $seller['phone']; ?>
		
      </div>
	  <div class="modal-body">
        
		
	<?php echo $seller['address']; ?>
		
      </div>
      
    </div>
  </div>
</div>
										<?php } else { ?>
                                        <?php echo sprintf($this->language->get('ms_sellercontact_signin'), $this->url->link('account/login', '', 'SSL'), $seller['nickname']); ?>
                                    <?php } ?>
                                </div>
								
					
					
					
					
					
					
					
					
					
					
					
					<div class="contact" style = "display:none">
						<h3><?php echo $ms_sellercontact_title ?></h3>
						<?php if ($this->customer->getId()) { ?>
						  <div class="button-group">
							<button type="button" class="btn btn-default btn-block ms-sellercontact" data-toggle="modal" data-target="#contactDialog"><span><?php echo $ms_catalog_product_contact; ?></span></button>
						  </div>
						<?php } else { ?>
							<?php echo sprintf($this->language->get('ms_sellercontact_signin'), $this->url->link('account/login', '', 'SSL'), $seller['nickname']); ?>
						<?php } ?>
					</div>
				<?php } ?>
			<?php } ?>
		</div>
	  </div>
	  <?php echo $content_bottom; ?>
	</div>
	<?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>


