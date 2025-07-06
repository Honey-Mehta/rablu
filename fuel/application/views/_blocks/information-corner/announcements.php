<div class="wrapper-codes">
    <div class="container">
        <?php 
        // Fetch notifications with descending order of release date
        $news = fuel_model('important_updates', [
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
                        <th>Headline</th>
                        <th>Description</th>
                        <th>Release Date</th>
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
                            <td><?php echo $item['title']; ?></td>
                            <td><?php echo $item['message']; ?></td>
                            <td><?php echo $item['publish_till']; ?></td>
                            <td>
                                <?php if (!empty($item['pdf'])): ?>
                                    <a href="<?= site_url('assets/important_updates/' . $item['pdf']); ?>" target="_blank">
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
                <h3>No Notifications Available</h3>
            </div>
        <?php endif; ?>
    </div>
</div>
