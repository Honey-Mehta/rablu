<?php

$slider = fuel_model('slider', [
    'where' => [
        'publish_till >=' => datetime_now(),
        'published' => 'yes'
    ],
    'order' => 'id desc'
]);

$this->load->library('user_agent');
$Hieght_byCMS = $this->agent->is_mobile()
    ? fuel_var('banner_height_m', '600')
    : fuel_var('banner_height', '400');

$jssor_Hieght = $Hieght_byCMS;
$captionHieght = 30;
?>

<div class="slidercolumn">
    <div class="container-fluid">
        <div class="row">
            <!-- Slider Section -->
            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12">
                <div class="carousel-frame">
                    <div class="carousel-slide">
                        <?php if ($slider) : ?>
                            <?php foreach ($slider as $item) : ?>
                                <img data-u="image" src="<?php echo $item->image_path; ?>" alt="Slider Image" />
                                <?php if ($item->caption_hidden == 'yes') : ?>
                                    <div class="slider-caption" style="bottom: <?php echo $captionHieght; ?>px;">
                                        <?php //echo 
                                        
                                       // htmlspecialchars($item->caption);
                                        
                                        ?>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        <?php else : ?>
                            <figure>
                                <img src="<?= img_path('slider/rablu1.jpg'); ?>" alt="Default Slider Image" style="width: 100%;" />
                            </figure>
                        <?php endif; ?>
                    </div>
                    <!-- Bullet Navigator -->
                    <ol class="carousel-dots">
                        <?php if ($slider) : ?>
                            <?php foreach ($slider as $item) : ?>
                                <li></li>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </ol>
                    <!-- Arrow Navigator -->
                    <i class="carousel-prev fa fa-chevron-left" aria-hidden="true"></i>
                    <i class="carousel-next fa fa-chevron-right" aria-hidden="true"></i>
                </div>
            </div>

            <!-- Ministers Section -->
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                <!-- Minister 1 -->

                <?php 
            $ministers = fuel_model('ministers', ['where' => ['published' => 'yes']]); // Fetch employee records 
            if (!empty($ministers)): // Check if records are available 
                foreach ($ministers as $minister): ?>

                <div class="messages card">
                    <img src="<?php echo img_path('ministers/pen.jpg'); ?>" class="pen" alt="Pen Icon" />
                    <div class="card-body">
                        <div class="important-message-img">
                            <img src="<?php echo img_path('ministers/'.$minister['image']); ?>" alt="Dr. Mohan Yadav" />
                        </div>
                        <div class="important-message-content">
                            <strong><?php echo $minister['name'] ?></strong>
                            <span><?php echo $minister['description'] ?></span>
                        </div>
                    </div>
                </div>

                <?php endforeach; 
            else: ?>
                <p class="text-center">No Ministers found in the directory.</p>
            <?php endif; ?>

                <!-- Minister 2 -->
                <!-- <div class="messages card">
                    <img src="<?php echo img_path('ministers/pen.jpg'); ?>" class="pen" alt="Pen Icon" />
                    <div class="card-body">
                        <div class="important-message-img">
                            <img src="<?php echo img_path('ministers/imgGovernor.jpg'); ?>" alt="Shri Mangubhai Chhaganbhai Patel" />
                        </div>
                        <div class="important-message-content">
                            <strong>Shri Mangubhai Chhaganbhai Patel</strong>
                            <span>Hon'ble Governor of Madhya Pradesh</span>
                        </div>
                    </div>
                </div> -->

                <!-- Minister 3 -->
                <!-- <div class="messages card">
                    <img src="<?php echo img_path('ministers/pen.jpg'); ?>" class="pen" alt="Pen Icon" />
                    <div class="card-body">
                        <div class="important-message-img">
                            <img src="<?php echo img_path('ministers/inderparmar.jpg'); ?>" alt="Shri Inder Singh Parmar" />
                        </div>
                        <div class="important-message-content">
                            <strong>Shri Inder Singh Parmar</strong>
                            <span>Hon'ble Head Minister</span>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</div>





<!-- Hero section end -->
<?php 
// Fetch marquee records
$marquee_texts = fuel_model('marquee', [
    'where' => ['published' => 'yes']
]);
?>

<div class="marquee">
    <div class="marquee-head">
        <img src="<?php echo img_path('/svgs/loudicn.svg'); ?>" /> Updates
    </div>
    <div class="track">
        <div class="content">
            <ul class="d-flex align-items-center m-0">
                <?php if (!empty($marquee_texts)): ?>
                    <?php 
                    $total_items = count($marquee_texts); 
                    $current_index = 1; // To track the current iteration
                    ?>
                    <?php foreach ($marquee_texts as $text): ?>
                        <li class="mx-3" style="display: inline;">
                            <?php if ($text['new'] == 'yes'): ?>
                                <span class="text-style blink-soft" style="display: inline; margin-right: 10px;">New</span>
                            <?php endif; ?>
                            <span><?php echo $text['headline']; ?></span>: <?php echo $text['description']; ?>
                        </li>
                        <?php if ($current_index < $total_items): ?>
                            <span class="separator" style="display: inline;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                        <?php endif; ?>
                        <?php $current_index++; ?>
                    <?php endforeach; ?>
                <?php else: ?>
                    <div class="no-announcements">
                        <p>No announcements at the moment.</p>
                    </div>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</div>
    



<!-- <style>

.marquee {
  background: rgb(6, 163, 218);
  font-size: 18px;
  color: var(--text-dark);
  padding: 10px 0;
}

</style> -->






<!--carousel Script Start-->
<script>
        const carouselFrames = Array.from(document.querySelectorAll('.carousel-frame'));

        function makeCarousel(frame) {
            const carouselSlide = frame.querySelector('.carousel-slide');
            const carouselImages = getImagesPlusClones();
            const prevBtn = frame.querySelector('.carousel-prev');
            const nextBtn = frame.querySelector('.carousel-next');
            const navDots = Array.from(frame.querySelectorAll('.carousel-dots li'));

            let imageCounter = 1;

            function getImagesPlusClones() {
                let images = frame.querySelectorAll('.carousel-slide img');

                const firstClone = images[0].cloneNode();
                const lastClone = images[images.length - 1].cloneNode();

                firstClone.className = 'first-clone';
                lastClone.className = 'last-clone';

                // we need clones to make an infinite loop effect
                carouselSlide.append(firstClone);
                carouselSlide.prepend(lastClone);

                // must reassign images to include the newly cloned images
                images = frame.querySelectorAll('.carousel-slide img');

                return images;
            }

            function initializeNavDots() {
                if (navDots.length) navDots[0].classList.add('active-dot');
            }

            function initializeCarousel() {
                carouselSlide.style.transform = 'translateX(-100%)';
            }

            function slideForward() {
                // first limit counter to prevent fast-change bugs
                if (imageCounter >= carouselImages.length - 1) return;
                carouselSlide.style.transition = 'transform 400ms';
                imageCounter++;
                carouselSlide.style.transform = `translateX(-${100 * imageCounter}%)`;
            }

            function slideBack() {
                // first limit counter to prevent fast-change bugs
                if (imageCounter <= 0) return;
                carouselSlide.style.transition = 'transform 400ms';
                imageCounter--;
                carouselSlide.style.transform = `translateX(-${100 * imageCounter}%)`;
            }

            function makeLoop() {
                // instantly move from clones to originals to produce 'infinite-loop' effect
                if (carouselImages[imageCounter].classList.contains('last-clone')) {
                    carouselSlide.style.transition = 'none';
                    imageCounter = carouselImages.length - 2;
                    carouselSlide.style.transform = `translateX(-${100 * imageCounter}%)`;
                }

                if (carouselImages[imageCounter].classList.contains('first-clone')) {
                    carouselSlide.style.transition = 'none';
                    imageCounter = carouselImages.length - imageCounter;
                    carouselSlide.style.transform = `translateX(-${100 * imageCounter}%)`;
                }
            }

            function goToImage(e) {
                carouselSlide.style.transition = 'transform 400ms';
                imageCounter = 1 + navDots.indexOf(e.target);
                carouselSlide.style.transform = `translateX(-${100 * imageCounter}%)`;
            }

            function highlightCurrentDot() {
                navDots.forEach((dot) => {
                    if (navDots.indexOf(dot) === imageCounter - 1) {
                        dot.classList.add('active-dot');
                    } else {
                        dot.classList.remove('active-dot');
                    }
                });
            }

            function addBtnListeners() {
                nextBtn.addEventListener('click', slideForward);
                prevBtn.addEventListener('click', slideBack);
            }

            function addNavDotListeners() {
                navDots.forEach((dot) => {
                    dot.addEventListener('click', goToImage);
                });
            }

            function addTransitionListener() {
                carouselSlide.addEventListener('transitionend', () => {
                    makeLoop();
                    highlightCurrentDot();
                });
            }

            function autoAdvance() {
                let play = setInterval(slideForward, 5000);

                frame.addEventListener('mouseover', () => {
                    clearInterval(play); // pause when mouse enters carousel
                });

                frame.addEventListener('mouseout', () => {
                    play = setInterval(slideForward, 5000); // resume when mouse leaves carousel
                });

                document.addEventListener('visibilitychange', () => {
                    if (document.hidden) {
                        clearInterval(play); // pause when user leaves page
                    } else {
                        play = setInterval(slideForward, 5000); // resume when user returns to page
                    }
                });
            }

            function buildCarousel() {
                initializeCarousel();
                initializeNavDots();
                addNavDotListeners();
                addBtnListeners();
                addTransitionListener();
                autoAdvance();
            }

            buildCarousel();
        }

        carouselFrames.forEach(frame => makeCarousel(frame));
    </script>
    <!--carousel Script End-->