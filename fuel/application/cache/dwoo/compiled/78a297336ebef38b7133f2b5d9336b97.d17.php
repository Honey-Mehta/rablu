<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>
        <!--__FUEL_MARKER__0-->Rani Avanti Bai Lodhi University    </title>
    <meta name="keywords" content="<!--__FUEL_MARKER__1-->Rani Avanti Bai Lodhi university sagar, RALVV sagar, arts and commerce university sagar, LLB course university sagar, PGDCA course university sagar, university sagar, government university sagar"/>
    <meta name="description" content="<!--__FUEL_MARKER__2-->Rani Avanti Bai Lodhi University, located in Sagar, MP, provides various courses for arts and commerce undergraduate and postgraduate programs."/> 
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="/rablu/assets/css/../bootstrap/css/bootstrap.min.css?c=-62170005208" media="all" rel="stylesheet"/>
	 
    <!-- <link href="/rablu/assets/css/../font-awesome/css/font-awesome.min.css?c=-62170005208" media="all" rel="stylesheet"/>
	 -->
    <link href="/rablu/assets/css/StyleSheet.css?c=-62170005208" media="all" rel="stylesheet"/>
	    <link href="/rablu/assets/css/menustyles.css?c=-62170005208" media="all" rel="stylesheet"/>
	    <link href="/rablu/assets/css/carousel.min.css?c=-62170005208" media="all" rel="stylesheet"/>
	 
   
    
        <script src="/rablu/assets/js/../bootstrap/js/bootstrap.min.js?c=-62170005208" type="text/javascript" charset="utf-8"></script>
	   
    <script src="/rablu/assets/js/jquery.min.js?c=-62170005208" type="text/javascript" charset="utf-8"></script>
	 
    <script src="/rablu/assets/js/carousel.min.js?c=-62170005208" type="text/javascript" charset="utf-8"></script>
	  
    <script src="/rablu/assets/js/chart.js?c=-62170005208" type="text/javascript" charset="utf-8"></script>
	  
</head>

<!-- /#body -->

<body>
    <!-- //mycode -->
    <div class="pre_haederavanti">
        <div class="container">
            <div class="col-md-12">
                <div class="preheader_links float-end">
                    <a href="https://ralvv.mponline.gov.in" target="_blank" style="color:white;">Mponline Portal</a> | <a href="#" target="_blank" style="color:white;">UTD Results</a>
                </div>
            </div>
        </div>
    </div>
    <div class="header_avantibai">
        <div class="container">
            <div class="col-md-12">
                <div class="dept_logo">
                <img src="/rablu/assets/images/dept_logo.png"/>
                    <!-- <img src="assets/images/dept_logo.png" /> -->
                </div>
            </div>
        </div>
    </div> 
     
    
    <div class="content">
      <div class="container">
                 
                    <ul class="exo-menu" id=""><li class=""><a href="http://localhost:8080/rablu/"  class="">Home</a></li><li class="drop-down"> <a href="#"><i class="fa fa-cogs"></i>About HEI </a><ul class="drop-down-ul animated fadeIn"><li class=""><a href="http://localhost:8080/rablu/About-Us/Mission-vision"  class="">Mission & Vision</a></li><li class=""><a href="http://localhost:8080/rablu/About-Us/vc-message"  class="">VC Message</a></li><li class=""><a href="http://localhost:8080/rablu/About-Us/About-University"  class="">About the University</a></li><li class=""><a href="http://localhost:8080/rablu/About-Us/Rani-avantibai-lodhi"  class="">Rani Avanti Bai Lodhi Jeevani</a></li></ul>
</li><li class="drop-down"> <a href="#"><i class="fa fa-cogs"></i>Administration </a><ul class="drop-down-ul animated fadeIn"><li class=""><a href="http://localhost:8080/rablu/Administration/faculty-details"  class="">Faculty Details</a></li><li class=""><a href="http://localhost:8080/rablu/Administration/central-administration"  class="">Central Administration</a></li><li class=""><a href="http://localhost:8080/rablu/Administration/list-of-faculties"  class="">List of Faculties</a></li></ul>
</li><li class="drop-down"> <a href="#"><i class="fa fa-cogs"></i>Academics </a><ul class="drop-down-ul animated fadeIn"><li class=""><a href="http://localhost:8080/rablu/academics/syllabus"  class="">Syllabus</a></li><li class=""><a href="http://localhost:8080/rablu/academics/Details-of-academic-program"  class="">Details of academic program</a></li><li class=""><a href="http://localhost:8080/rablu/academics/rablu_courses"  class="">Affiliated Colleges and Courses</a></li><li class=""><a href="http://localhost:8080/rablu/academics/Academic-Calendar"  class="">Academic-Calendar</a></li><li class=""><a href="http://localhost:8080/rablu/academics/exam-result"  class="">Exam Result</a></li><li class=""><a href="http://localhost:8080/rablu/academics/time-table"  class="">Time Table</a></li></ul>
</li><li class=""><a href="http://localhost:8080/rablu/admission"  class="">Admission & Fee</a></li><li class=""><a href="http://localhost:8080/rablu/picture-gallery"  class="">Picture Gallery</a></li><li class="drop-down"> <a href="#"><i class="fa fa-cogs"></i>Information Corner </a><ul class="drop-down-ul animated fadeIn"><li class=""><a href="http://localhost:8080/rablu/information-corner/tender"  class="">Tender</a></li><li class=""><a href="http://localhost:8080/rablu/information-corner/announcements"  class="">Announcements</a></li></ul>
</li><li class=""><a href="http://localhost:8080/rablu/contact-us"  class="">Contact Us</a></li><a href="#" class="toggle-menu visible-xs-block">|||</a></ul>
                     
                   
                               
                        
   
                 
      </div>
          
</div> 

   

    <!--Navigation Script Start-->
    <script>
        const navbarMenu = document.getElementById("navbar");
        const burgerMenu = document.getElementById("burger");
        const overlayMenu = document.querySelector(".overlay");

        // Show and Hide Navbar Function
        const toggleMenu = () => { 
            navbarMenu.classList.toggle("active");
            overlayMenu.classList.toggle("active");
        };

        // Collapsible Mobile Submenu Function
        const collapseSubMenu = () => { 
            navbarMenu
               .querySelector(".menu-dropdown.active .submenu")
               .removeAttribute("style");
            navbarMenu.querySelector(".menu-dropdown.active").classList.remove("active");
        };

        // Toggle Mobile Submenu Function
        const toggleSubMenu = (e) => { 
            if (e.target.hasAttribute("data-toggle") && window.innerWidth <= 992) { 
                e.preventDefault();
                const menuDropdown = e.target.parentElement;

                // If Dropdown is Expanded, then Collapse It
                if (menuDropdown.classList.contains("active")) { 
                    collapseSubMenu();
                } else { 
                    // Collapse Existing Expanded Dropdown
                    if (navbarMenu.querySelector(".menu-dropdown.active")) { 
                        collapseSubMenu();
                    }

                    // Expanded the New Dropdown
                    menuDropdown.classList.add("active");
                    const subMenu = menuDropdown.querySelector(".submenu");
                    subMenu.style.maxHeight = subMenu.scrollHeight + "px";
                }
            }
        };

        // Fixed Resize Window Function
        const resizeWindow = () => { 
            if (window.innerWidth > 992) { 
                if (navbarMenu.classList.contains("active")) { 
                    toggleMenu();
                }
                if (navbarMenu.querySelector(".menu-dropdown.active")) { 
                    collapseSubMenu();
                }
            }
        };

        // Initialize Event Listeners
        burgerMenu.addEventListener("click", toggleMenu);
        overlayMenu.addEventListener("click", toggleMenu);
        navbarMenu.addEventListener("click", toggleSubMenu);
        window.addEventListener("resize", resizeWindow);

    </script>
    <!--Navigation Script End-->
    <script>



        $(function () { 
            $('.toggle-menu').click(function () { 
                $('.exo-menu').toggleClass('display');

            });

        });


    </script>
	
	<!--__FUEL_MARKER__3--><?php echo fuel_block('home_page');?>




<div class="footer_haederavanti">
Powered By:  <img src="https://www.mponline.gov.in/QuicK%20Links/PortalImages/MPOHeaderFooterLogo/MPO_footer.png"/>
       
    </div>
      
 <?php  /* end template body */
return $this->buffer . ob_get_clean();
?>