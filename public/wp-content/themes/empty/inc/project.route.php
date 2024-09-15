<?php

add_action('rest_api_init', 'projectRoutes');

function projectRoutes()
{
    $base_route = 'project/v1';

    register_rest_route(
        $base_route,
        '/outstanding-projects',
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchOutstadingProjects'
        )
    );

    register_rest_route(
        $base_route,
        '/other-projects',
        array(
            'method' => WP_REST_Server::READABLE,
            'callback' => 'fetchOtherPost',
            'show_in_rest' => true
        )

    );

}


function fetchOutstadingProjects(WP_REST_Request $request) {

    
    $results = array(
        'projects' => array(),
        'status' => array(
            'is_success' => false,
            'message' => '',
        ),
    );


    $mainQuery = new WP_Query(
        array(
            'post_type' => 'project',
            'orderby' => 'DSC',
            'posts_per_page' => -1
        ),
    );


    while($mainQuery->have_posts()) {
        $mainQuery->the_post();
        $is_outstanding_project = get_field('is_outstanding_project', get_the_ID());

        if(!$is_outstanding_project) {
            continue;
        }

        
        $skills = array_map(function($skillPost){
            return $skillPost->post_title;
        },get_field('skills', get_the_ID()));

        $background_url = get_field('background')['url'];


        array_push($results['projects'], array(
            'id'=> get_the_ID(),
            'title' => get_the_title(),
            'description' => get_the_content(),
            'skills' => $skills,
            'background' => $background_url,
            'github_link' => get_field('github_link'),
            'isOutstandingProject' => $is_outstanding_project,
        ));


    }


    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    
}


function fetchOtherPost(WP_REST_Request $request) {
    $limit = $request->get_param('limit');
    $page = $request->get_param('page');
    $category = $request->get_param('category');


    $results = array(
        'projects' => array(),
        'status' => array(
            'is_success' => false,
            'message' => '',
        ),
    );


    $mainQuery = new WP_Query(
        array(
            'post_type' => 'project',
            'posts_per_page' => $limit,
            'paged' => $page,
            'category_name' => $category,
            'meta_query' => array(
                array(
                    'key' => 'is_outstanding_project',
                    'value' => 1,
                    'compare' => '!='
                )
            )
        ),
    );

    $subQuery = new WP_Query(
        array(
            'post_type' => 'project',
            'posts_per_page' => $limit,
            'paged' => 1,
            'category_name' => $category,
            'meta_query' => array(
                array(
                    'key' => 'is_outstanding_project',
                    'value' => 1,
                    'compare' => '!='
                )
            )
        )
    );

    $max_num = $subQuery->max_num_pages + 1;

    $next_page = ($page + 1) % $max_num > 0 ? ($page + 1) % $max_num : 1;
    $prev_page = ($max_num + $page - 1) % $max_num > 0 ? ($max_num + $page - 1) % $max_num : $max_num - 1;
    $next_page_url = get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$next_page";
    $prev_page_url = get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$prev_page";



    $results = array(
        'next_page_url' => $next_page_url,
        'prev_page_url' => $prev_page_url,
        'projects' => array(),
        'maxPage' => $subQuery->max_num_pages,
        'currentPage' => (int) $page,
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    if ($results['maxPage'] < (int) $page or 1 > (int) $page) {
        $results['status']['message'] = 'Please enter correct maximum posts per a page or currect page number';
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();

        array_push($results['projects'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'excerpt' => get_the_excerpt(),
            'created' => get_the_date(),
            'modified' => get_the_modified_date()
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Successfully fetched!';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}