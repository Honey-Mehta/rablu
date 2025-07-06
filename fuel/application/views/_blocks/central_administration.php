<div class="wrapper-codes">
    <div class="page-title">
        <div class="container">
            <h2>Central Administration</h2>
        </div>
    </div>

    <div class="container">
        <div class="row team-row">
            <?php 
            $employees = fuel_model('central_administration', ['where' => ['published' => 'yes']]); // Fetch employee records 
            if (!empty($employees)): // Check if records are available 
                foreach ($employees as $employee): ?>
                    <div class="col-md-4 col-sm-6 team-wrap">
                        <div class="team-member text-center">
                            <div class="team-img">
                                <img src="<?php echo img_path('central_administration/' . $employee['image']); ?>" alt="<?= htmlentities($employee['name']); ?>" 
                                style="width: 300px; height: 300px;" 
                                />
                              
                                <div class="overlayimage">
                                    <div class="team-details text-center">
                                        <strong>Qualifications</strong>
                                        <ul style="list-style-type:none;">
                                            <li><?php echo $employee['qualification']; ?></li>
                                            <li><?php echo $employee['subject']; ?></li>
                                            <!-- <li>Micro and Macro Economics</li> -->
                                            <li><?php echo $employee['experience']; ?></li>
                                        </ul>
                                    </div>
                                </div>
                              
                            </div>
                            <h6 class="team-title"><?php echo $employee['name']; ?></h6>
                            <span><?php echo $employee['designation']; ?></span>
                        </div>
                    </div>
                <?php endforeach; 
            else: ?>
                <p class="text-center">No Faculties found in the directory.</p>
            <?php endif; ?>
        </div>
    </div>
</div>
