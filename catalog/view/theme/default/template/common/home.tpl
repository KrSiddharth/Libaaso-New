<?php echo $header; ?>
<header>
  <div class="container">
    <div id="homePageDef">
      <div><span>Leading platform for apparel </span></div>
      <div><span>wholesale trade!</span></div>
    </div>
    <!--<div class="col-sm-4">
      <div id="logo">
        <?php if ($logo) { ?>
        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
        <?php } else { ?>
        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <?php } ?>
      </div>
    </div>-->
    <div class="col-sm-6 homePageSearch"><?php echo $search; ?>
    </div>
    <div  style="display:none;" class="col-sm-3"><?php echo $cart; ?></div>
  </div>
</header>
<div class="container">
  <div class="homeFeatureContainer">
    <div class="homeFeature">
      <img src="image/custom/search-120.png" />
      <div class="featureDescription">
      <span class="featureHeading">
        Search
      </span>
        <span class="headingDivider"></span>
        <span class="featureDefinition">
          Search for the latest trending designs from our huge database.
        </span>
      </div>
    </div>
    <div class="homeFeature">
      <img src="image/custom/call-120.png" />
      <div class="featureDescription">
      <span class="featureHeading">
        Call
      </span>
        <span class="headingDivider"></span>

        <span class="featureDefinition">
          Contact manufacturer, inquire about the designs you like.
        </span>
      </div>
    </div>
    <div class="homeFeature">
      <img src="image/custom/buy-120.png" />
      <div class="featureDescription">
      <span class="featureHeading">
        Buy
      </span>
        <span class="headingDivider"></span>

        <span class="featureDefinition">Buy directly from manufacturers. No hidden charges.</span>
      </div>
    </div>
  </div>
    <!-- <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>-->
</div>

<div class="buyerFeaturesContainer">
  <div class="buyerFeatureBanner">
    <div class="sideTriangle"></div>
  </div>
  <div class="buyerFeatures">
    <ul>
      <li>No Commisson,no registration fee,absolutely FREE!</li>
      <li>Contact manufacturers directly, no middlemen involved.</li>
      <li>Your only place to discover new manufacturers and designs. </li>
      <li>Updates about all the trending designs in the market.</li>
    </ul>
  </div>
</div>

<?php echo $footer; ?>