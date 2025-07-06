<!--about clg write up -->	
</br>
<div class="container-fluid" style="min-height:500px;">
<div class="container">
<div class="row shadow-lg" style="padding: 15px;">

<?php 
            // Fetch employee records
            $about_university = fuel_model('about_university', ['where' => ['published' => 'yes']]);

           
            
            
            if (!empty($about_university)): // Check if records are available
               // foreach ($vc_messages as $vc_message): 
                
                ?> 


<div class="col-md-12 py-4">
<p class="justify">
<h2>About University</h2>
<?php echo  $about_university[0]['about_university']; ?>

</p>



</div>


<?php

//endforeach; 
            else: ?>
                <!-- No records message -->
                <p class="text-center">No About University Details Available.</p>
            <?php endif; ?>


</div>
</div>
</div>
