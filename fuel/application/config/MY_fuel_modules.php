<?php 
/*
|--------------------------------------------------------------------------
| MY Custom Modules
|--------------------------------------------------------------------------
|
| Specifies the module controller (key) and the name (value) for fuel
*/


/*********************** EXAMPLE ***********************************

$config['modules']['quotes'] = array(
	'preview_path' => 'about/what-they-say',
);

$config['modules']['projects'] = array(
	'preview_path' => 'showcase/project/{slug}',
	'sanitize_images' => FALSE // to prevent false positives with xss_clean image sanitation
);

*********************** /EXAMPLE ***********************************/



/*********************** OVERWRITES ************************************/

$config['module_overwrites']['categories']['hidden'] = TRUE; // change to FALSE if you want to use the generic categories module
$config['module_overwrites']['tags']['hidden'] = TRUE; // change to FALSE if you want to use the generic tags module
 

/*********************** /OVERWRITES ************************************/
$config['modules']['events'] = [
    'module_name' => 'events',
    'model_name' => 'Events_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'headline',
    'default_col' => 'release_date',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'events/create',
		'edit' => 'events/edit',
		'publish' => 'events/publish',
		'delete' => 'events/delete'
	),
    'module_uri' => 'events',
    'table_headers' => ['id', 'headline', 'release_date', 'published'],  // Admin columns
];


$config['modules']['employees'] = [
    'module_name' => 'employees',
    'model_name' => 'Employees_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'employees/create',
		'edit' => 'employees/edit',
		'publish' => 'employees/publish',
		'delete' => 'employees/delete'
	),
    'module_uri' => 'employees',
    'table_headers' => ['id', 'name', 'designation', 'qualification', 'subject', 'experience', 'image', 'published'],  // Admin columns
];


$config['modules']['photo'] = [
    'module_name' => 'photo',
    'model_name' => 'Photo_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'photo/create',
		'edit' => 'photo/edit',
		'publish' => 'photo/publish',
		'delete' => 'photo/delete'
	),
    'module_uri' => 'photo',
    'table_headers' => ['id', 'name', 'description', 'image', 'published'],  // Admin columns
];


$config['modules']['colleges_course_list'] = [
    'module_name' => 'colleges_course_list',
    'model_name' => 'Affiliated_colleges_courses_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'course_name',
    'default_col' => 'id',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
 //   'permission' => 'colleges_course_list',
 'permission' => array(
    'create' => 'colleges_course_list/create',
    'edit' => 'colleges_course_list/edit',
    'publish' => 'colleges_course_list/publish',
    'delete' => 'colleges_course_list/delete'
),
    'module_uri' => 'colleges_course_list',
    'table_headers' => ['id', 'college_name', 'course_name', 'course_level', 'branch_name', 'district_name'],  // Admin columns
    // 'filters' => ['college_name', 'course_name', 'course_level', 'branch_name', 'district_name'], // Add filters here

];



$config['modules']['faculty'] = [
    'module_name' => 'Faculty',
    'model_name' => 'Faculty_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
    //'permission' => 'faculty', // Optional: Add permissions
    'permission' => array(
    'create' => 'faculty/create',
    'edit' => 'faculty/edit',
    'publish' => 'faculty/publish',
    'delete' => 'faculty/delete'
),
    'table_headers' => ['id', 'name', 'designation', 'subject', 'published'],  // Admin columns

];

$config['modules']['admissions'] = [
    'module_name' => 'admissions',
    'model_name' => 'Admission_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'headline',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'admissions', // Optional: Add permissions
   'permission' => array(
    'create' => 'admissions/create',
    'edit' => 'admissions/edit',
    'publish' => 'admissions/publish',
    'delete' => 'admissions/delete'
),
    'table_headers' => ['id', 'headline', 'pdf', 'description', 'release_date','published'],  // Admin columns

];



$config['modules']['course_name'] = [
    'module_name' => 'course_name',
    'model_name' => 'Course_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'course_name',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
  //  'permission' => 'course_name', // Optional: Add permissions
     'permission' => array(
    'create' => 'course_name/create',
    'edit' => 'course_name/edit',
    'publish' => 'course_name/publish',
    'delete' => 'course_name/delete'
),


    'module_uri' => 'course_name',
  
    'table_headers' => ['id', 'course_name', 'course_level', 'published'],  // Admin columns

];

$config['modules']['branch_name'] = [
    'module_name' => 'branch_name',
    'model_name' => 'Branch_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'branch_name',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'branch_name', // Optional: Add permissions
     
   'permission' => array(
    'create' => 'branch_name/create',
    'edit' => 'branch_name/edit',
    'publish' => 'branch_name/publish',
    'delete' => 'branch_name/delete'
),




    'module_uri' => 'branch_name',

    'table_headers' => ['id', 'branch_name', 'published'],  // Admin columns

];

$config['modules']['course_level'] = [
    'module_name' => 'course_level',
    'model_name' => 'CourseLevel_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'course_level',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
  //  'permission' => 'course_level', // Optional: Add permissions

     'permission' => array(
    'create' => 'course_level/create',
    'edit' => 'course_level/edit',
    'publish' => 'course_level/publish',
    'delete' => 'course_level/delete'
),

    'module_uri' => 'course_level',

    'table_headers' => ['id', 'course_level', 'published'],  // Admin columns

];


$config['modules']['district'] = [
    'module_name' => 'district',
    'model_name' => 'District_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'district_name',
    'default_col' => '',
    'default_order' => 'asc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'district', // Optional: Add permissions


   'permission' => array(
    'create' => 'district/create',
    'edit' => 'district/edit',
    'publish' => 'district/publish',
    'delete' => 'district/delete'
),


    'module_uri' => 'district',

    'table_headers' => ['id', 'district_name', 'published'],  // Admin columns

];







$config['modules']['vc_message'] = [
    'module_name' => 'vc_message',
    'model_name' => 'VCmessage_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'vc_name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
 //   'permission' => 'vc_message',

 'permission' => array(
    'create' => 'vc_message/create',
    'edit' => 'vc_message/edit',
    'publish' => 'vc_message/publish',
    'delete' => 'vc_message/delete'
),

    'module_uri' => 'vc_message',
    'table_headers' => ['id', 'vc_name', 'designation', 'image', 'vc_message','published'],  // Admin columns
];



$config['modules']['contact'] = [
    'module_name' => 'contact',
    'model_name' => 'Contact_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => '',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
 //   'permission' => 'contact',
  
 'permission' => array(
    'create' => 'contact/create',
    'edit' => 'contact/edit',
    'publish' => 'contact/publish',
    'delete' => 'contact/delete'
),

    'module_uri' => 'contact',
    'table_headers' => ['id','email', 'location', 'contact_time', 'phone_no', 'published'],  // Admin columns
];


$config['modules']['about'] = [
    'module_name' => 'about',
    'model_name' => 'About_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'admission',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
  //  'permission' => 'about',


  'permission' => array(
    'create' => 'about/create',
    'edit' => 'about/edit',
    'publish' => 'about/publish',
    'delete' => 'about/delete'
),

    'module_uri' => 'about',
    'table_headers' => ['id', 'admission', 'mission', 'vision', 'objective','published'],  // Admin columns
];



$config['modules']['mission_vision'] = [
    'module_name' => 'mission_vision',
    'model_name' => 'Mission_vision_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'mission',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
  //  'permission' => 'mission_vision',


    'permission' => array(
    'create' => 'mission_vision/create',
    'edit' => 'mission_vision/edit',
    'publish' => 'mission_vision/publish',
    'delete' => 'mission_vision/delete'
),


    'module_uri' => 'mission_vision',
    'table_headers' => ['id', 'mission', 'vision', 'published'],  // Admin columns
];


$config['modules']['about_university'] = [
    'module_name' => 'about_university',
    'model_name' => 'About_University_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'about_university',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'about_university/create',
    'edit' => 'about_university/edit',
    'publish' => 'about_university/publish',
    'delete' => 'about_university/delete'
),

    'module_uri' => 'about_university',
    'table_headers' => ['id', 'about_university', 'published'],  // Admin columns
];



$config['modules']['rani_avanti_jeevani'] = [
    'module_name' => 'rani_avanti_jeevani',
    'model_name' => 'RaniAvantiJeevani_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'description',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'rani_avanti_jeevani/create',
    'edit' => 'rani_avanti_jeevani/edit',
    'publish' => 'rani_avanti_jeevani/publish',
    'delete' => 'rani_avanti_jeevani/delete'
),

    'module_uri' => 'rani_avanti_jeevani',
    'table_headers' => ['id', 'description', 'published'],  // Admin columns
];



$config['modules']['exam_time_table'] = [
    'module_name' => 'exam_time_table',
    'model_name' => 'Exam_time_table_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'heading',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'exam_time_table/create',
    'edit' => 'exam_time_table/edit',
    'publish' => 'exam_time_table/publish',
    'delete' => 'exam_time_table/delete'
),

    'module_uri' => 'exam_time_table',
    'table_headers' => ['id', 'heading', 'message', 'pdf', 'publish_till', 'published'],  // Admin columns
];



$config['modules']['result'] = [
    'module_name' => 'result',
    'model_name' => 'Result_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'heading',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'result/create',
    'edit' => 'result/edit',
    'publish' => 'result/publish',
    'delete' => 'result/delete'
),

    'module_uri' => 'result',
    'table_headers' => ['id', 'heading', 'message', 'pdf', 'publish_till', 'published'],  // Admin columns
];

$config['modules']['acadmic_calendar'] = [
    'module_name' => 'acadmic_calendar',
    'model_name' => 'Acadmic_calendar_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'heading',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'acadmic_calendar/create',
    'edit' => 'acadmic_calendar/edit',
    'publish' => 'acadmic_calendar/publish',
    'delete' => 'acadmic_calendar/delete'
),

    'module_uri' => 'acadmic_calendar',
    'table_headers' => ['id', 'heading', 'message', 'pdf', 'publish_till', 'published'],  // Admin columns
];


$config['modules']['important_updates'] = [
    'module_name' => 'important_updates',
    'model_name' => 'Important_updates_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'title',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
   // 'permission' => 'about_university',


   'permission' => array(
    'create' => 'important_updates/create',
    'edit' => 'important_updates/edit',
    'publish' => 'important_updates/publish',
    'delete' => 'important_updates/delete'
),

    'module_uri' => 'important_updates',
    'table_headers' => ['id', 'title', 'message', 'pdf', 'publish_till', 'published'],  // Admin columns
];





$config['modules']['central_administration'] = [
    'module_name' => 'central_administration',
    'model_name' => 'Central_Administration_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'central_administration/create',
		'edit' => 'central_administration/edit',
		'publish' => 'central_administration/publish',
		'delete' => 'central_administration/delete'
	),
    'module_uri' => 'central_administration',
    'table_headers' => ['id', 'name', 'designation', 'qualification', 'subject', 'experience', 'image', 'seqno', 'published'],  // Admin columns
];


$config['modules']['tender'] = [
    'module_name' => 'tender',
    'model_name' => 'Tender_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'tender/create',
		'edit' => 'tender/edit',
		'publish' => 'tender/publish',
		'delete' => 'tender/delete'
	),
    'module_uri' => 'tender',
    'table_headers' => ['id', 'name', 'description', 'tender_date', 'pdf', 'published'],  // Admin columns
];


$config['modules']['marquee'] = [
    'module_name' => 'marquee',
    'model_name' => 'Marquee_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'headline',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'marquee/create',
		'edit' => 'marquee/edit',
		'publish' => 'marquee/publish',
		'delete' => 'marquee/delete'
	),
    'module_uri' => 'marquee',
    'table_headers' => ['id', 'headline', 'description', 'new', 'published'],  // Admin columns
];


$config['modules']['ministers'] = [
    'module_name' => 'ministers',
    'model_name' => 'Ministers_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'name',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'ministers/create',
		'edit' => 'ministers/edit',
		'publish' => 'ministers/publish',
		'delete' => 'ministers/delete'
	),
    'module_uri' => 'ministers',
    'table_headers' => ['id', 'name', 'description', 'image', 'seqno', 'published'],  // Admin columns
];



$config['modules']['imp_links'] = [
    'module_name' => 'imp_links',
    'model_name' => 'Imp_links_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'headline',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'imp_links/create',
		'edit' => 'imp_links/edit',
		'publish' => 'imp_links/publish',
		'delete' => 'imp_links/delete'
	),
    'module_uri' => 'imp_links',
    'table_headers' => ['id', 'headline', 'image', 'link', 'release_date', 'published'],  // Admin columns
];



$config['modules']['slider'] = [
    'module_name' => 'slider',
    'model_name' => 'Slider_model',
    'model_location' => '',  // Keep blank if using default location
    'display_field' => 'caption',
    'default_col' => '',
    'default_order' => 'desc',
    'sanitize_input' => ['template', 'php'],
    'permission' => array(
		'create' => 'slider/create',
		'edit' => 'slider/edit',
		'publish' => 'slider/publish',
		'delete' => 'slider/delete'
	),
    'module_uri' => 'slider',
    'table_headers' => ['id', 'caption', 'caption_hidden', 'image', 'published', 'publish_till'],  // Admin columns
];

