<div class="wrapper-codes">
    <div class="container">
        <?php 
        // Fetch notifications with descending order of release date
        $news = fuel_model('tender', [
            'where' => ['published' => 'yes'],
            'order_by' => 'release_date DESC'
        ]);

        // Check if there are any notifications
        if (!empty($news) && is_array($news)): 
        ?>
            <table class="table">
                <thead>
                    <tr>
                        <th>S.NO</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Tender Date</th>
                        <th>View PDF</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $id = 1;
                    foreach ($news as $key => $item): 
                    ?>
                        <tr>
                            <td><?= $id++; ?></td>
                            <td><?php echo $item['name']; ?></td>
                            <td><?php echo $item['description']; ?></td>
                            <td><?php echo $item['tender_date']; ?></td>
                            <td>
                                <?php if (!empty($item['pdf'])): ?>
                                    <a href="<?= site_url('assets/tender/' . $item['pdf']); ?>" target="_blank">
                                        <img src="<?= img_path('svgs/viewicn.svg'); ?>" alt="View PDF">
                                    </a>
                                <?php else: ?>
                                    <a href="#" target="_blank">
                                        <img src="<?= img_path('svgs/viewicn.svg'); ?>" alt="Unavailable">
                                    </a>
                                <?php endif; ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <!-- Show message if no notifications are available -->
            <div class="text-center">
                <h3>No Tender Detail Available</h3>
            </div>
        <?php endif; ?>
    </div>
</div>
