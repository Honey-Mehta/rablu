<!--about clg write up -->	
</br>
<div class="container-fluid" style="min-height:500px;">
<div class="container">
<div class="row shadow-lg" style="padding: 15px;">

<?php 
            // Fetch employee records
            $RaniAvantijeevani = fuel_model('rani_avanti_jeevani', ['where' => ['published' => 'yes']]);

           
            
            
            if (!empty($RaniAvantijeevani)): // Check if records are available
               // foreach ($vc_messages as $vc_message): 
                
                ?> 


<div class="col-md-12 py-4">
<p class="justify">
<h2>Rani Avanti Bai Lodhi Jeevani</h2>
<?php echo  $RaniAvantijeevani[0]['description']; ?>

</p>



</div>


<?php

//endforeach; 
            else: ?>
                <!-- No records message -->
                <p class="text-center">No  Jeevani Available.</p>
            <?php endif; ?>


</div>
</div>
</div>
