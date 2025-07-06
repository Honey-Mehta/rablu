<?php $this->load->view('_blocks/header')?>

<?php if(is_home()):?>
	
	<?php echo fuel_var('body', 'This is under construction...'); ?>

<?php else:?>

<section id="main_inner">

	<div class="container">

		<div class="col-md-12 contentpage">	
				
				<br>
			<nav class="breadcrumbs">
                <!-- <a href="#home" class="breadcrumbs__item">Home</a> -->
				 
                <a href="<?php echo $this->uri->segment(2) ?>" class="breadcrumbs__item"><?php echo $this->fuel->navigation->breadcrumb_new(array('class'=>' ', 'arrow_class'=>'hide'));?></a>
            </nav>
			<div class="row">
				<div class="col-md-12 workarea margin-b-20">
					<div class="row">
					<div class="col-md-12">
						
						<h1><?php echo fuel_var('page_title'); ?></h1>
					</div>
				
					</div>
					<?php echo fuel_var('body', '<img class="img-responsive" src='.'{img_path("webapp/underConstruction.png")}'.' alt="Under Construction" />'); ?>	

					<?php if(uri_segment(1)== 'departments') :?>
						<?php echo fuel_block('departments/related_contents');?>
					<?php endif; ?>		

				</div>
				

			</div>	
		</div>
	</div>
</section>

<?php endif;?>

<?php $this->load->view('_blocks/footer')?>
