<!--about clg write up -->	
</br>
<div class="container-fluid" style="min-height:500px;">
<div class="container">
<div class="row shadow-lg" style="padding: 15px;">

<?php 
            // Fetch employee records
            $mission_vision = fuel_model('mission_vision', ['where' => ['published' => 'yes']]);

           
            
            
            if (!empty($mission_vision)): // Check if records are available
               // foreach ($vc_messages as $vc_message): 
                
                ?> 


<div class="col-md-12 py-4">
<p class="justify">
<h2>Vision</h2>
<?php echo $mission_vision[0]['vision']; ?>

</p>

<p class="justify">
<h2>Mission</h2>
<?php echo $mission_vision[0]['mission']; ?>
</p>

</div>


<?php

//endforeach; 
            else: ?>
                <!-- No records message -->
                <p class="text-center">No Mission Vision found in the directory.</p>
            <?php endif; ?>


</div>
</div>
</div>
