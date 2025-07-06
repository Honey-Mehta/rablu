
<div class="main_headrani">
        Contact<span>
            Us <svg xmlns="http://www.w3.org/2000/svg" width="120" height="9" viewBox="0 0 120 9" fill="none">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M115.442 8.25039C64.7892 -2.54947 20.433 3.78533 4.88329 8.17023C3.53609 8.55013 1.62363 8.4481 0.611686 7.94234C-0.400258 7.43658 -0.128479 6.71861 1.21872 6.33871C18.3618 1.5045 65.3347 -5.06747 118.455 6.25855C119.92 6.57094 120.434 7.27006 119.601 7.82009C118.769 8.37012 116.907 8.56277 115.442 8.25039Z" fill="#161613"></path>
            </svg>
        </span>
    </div>

    <?php 
            // Fetch employee records
            $contact = fuel_model('contact', [
              'where' => ['published' => 'yes']
          ]);

           
            
            
            if (!empty($contact)): // Check if records are available
               // foreach ($vc_messages as $vc_message): 
                
                ?> 



      <div class="contactus_area"  id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-4 ">
                    <div class="contactinner_area" >
                        <div class="icon_contact">
                           

                            <img src="<?php echo img_path("svgs/callphoneicn.svg");?>"/>

                        </div>
                        <div class="headinner_contact">
                            Call Us
                        </div>
                        <div class="headinnersml_contact">
                        <?php echo $contact[0]['phone_no']; ?>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 ">
                    <div class="contactinner_area" >
                        <div class="icon_contact">
                            <img src="<?php echo img_path("svgs/emailicn.svg");?>"/>
                        </div>
                        <div class="headinner_contact">
                            Email Us
                        </div>
                        <div class="headinnersml_contact">
                        <?php echo $contact[0]['email']; ?>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 ">
                    <div class="contactinner_area" >
                        <div class="icon_contact">
                            <img src="<?php echo img_path("svgs/locationicn.svg");?>"/>
                        </div>
                        <div class="headinner_contact">
                            <!-- MPOnline Limited -->
                             Address
                        </div>
                        <div class="headinnersml_contact">
                        <?php echo $contact[0]['location']; ?>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <?php 
        //endforeach; 
            else: ?>
                <!-- No records message -->
                <p class="text-center">No  Contact Details found in the directory.</p>
            <?php endif; ?>





