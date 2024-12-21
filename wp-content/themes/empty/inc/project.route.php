<?php

add_action('rest_api_init', 'projectRoutes');

/**
 * Registers REST API routes for fetching outstanding projects and other projects.
 *
 * This function sets up the routes for fetching outstanding projects and other projects
 * using the WordPress REST API. It registers two routes under the 'project/v1' namespace:
 * - '/outstanding-projects': Calls the 'fetchOutstadingProjects' function to retrieve outstanding projects.
 * - '/other-projects': Calls the 'fetchOtherPost' function to retrieve other projects.
 *
 * @since 0.1.0
 */
function projectRoutes()
{
    $base_route = 'project/v1';

    register_rest_route(
        $base_route,
        '/outstanding-projects',
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchOutstadingProjects'
        )
    );

    register_rest_route(
        $base_route,
        '/other-projects',
        array(
            'methods' => WP_REST_Server::READABLE,
            'callback' => 'fetchOtherPost',
            'show_in_rest' => true
        )

    );

    register_rest_route(
        $base_route,
        '/projects',
        array(
            'methods' => WP_REST_Server::READABLE,
            'callback' => 'fetchProjects',
            'show_in_rest' => true
        )
    );

}


/**
 * Handles a GET request to the /projects endpoint.
 *
 * This function is used as the callback for the /projects endpoint.
 * It fetches projects that are related to the given skill and returns all of them. 
 * Each project is represented as an array with keys id, title, github_link.
 *
 * The response is returned as a JSON object with 'projects' mapped to the array
 * of projects, 'status' with keys is_success and message, and pagination URLs
 * for next and previous pages.
 *
 * If the requested page number is out of range, an error message is returned.
 *
 * @param WP_REST_Request $request The GET request object.
 *
 * @since 0.1.0
 *
 * @return WP_REST_Response A JSON response with the list of projects.
 */
function fetchProjects(WP_REST_Request $request)
{
    $skill_id = $request->get_param('skill');

    $results = array(
        'projects' => array(),
        'status' => array(
            'is_success' => false,
            'message' => '',
        ),
    );


    $query = new WP_Query(array(
        'post_type' => 'project',
        'orderby' => 'DSC',
        'posts_per_page' => -1,
        'meta_query' => array(
            array(
                'key' => 'skills',
                'value' => '"' . $skill_id . '"',
                'compare' => 'LIKE'
            )
        )
    ));


    while ($query->have_posts()) {
        $query->the_post();

        array_push($results['projects'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'github_link' => get_field('github_link'),

        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'success';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}


/**
 * Handles a GET request to the outstanding projects endpoint.
 *
 * This function is used as the callback for the /outstanding-projects endpoint.
 * It fetches all projects and then filters out the projects that are not outstanding,
 * and returns the outstanding projects as an array of objects with the keys id, title,
 * description, skills, background, github_link, and isOutstandingProject.
 *
 * The response is returned as a JSON object with the key outstandingProjects mapped
 * to the array of outstanding projects, and the key status mapped to an object with
 * the keys is_success and message.
 *
 * @param WP_REST_Request $request The GET request object.
 *
 * @since 0.1.0
 *
 * @return WP_REST_Response A JSON response with the outstanding projects.
 */
function fetchOutstadingProjects(WP_REST_Request $request)
{


    $results = array(
        'outstandingProjects' => array(),
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


    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();
        $is_outstanding_project = get_field('is_outstanding_project', get_the_ID());

        if (!$is_outstanding_project) {
            continue;
        }


        $skills = array_map(function ($skillPost) {
            return $skillPost->post_title;
        }, get_field('skills', get_the_ID()));

        $background_url = get_field('background')['url'];


        array_push($results['outstandingProjects'], array(
            'id' => get_the_ID(),
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


/**
 * Handles a GET request to the other projects endpoint.
 *
 * This function is used as the callback for the /other-projects endpoint.
 * It fetches projects that are not marked as outstanding and returns them
 * with pagination. Each project is represented as an array with keys id,
 * title, excerpt, background, github_link, created, and modified.
 *
 * The response is returned as a JSON object with 'otherProjects' mapped
 * to the array of projects, 'status' with keys is_success and message,
 * and pagination URLs for next and previous pages.
 *
 * If the requested page number is out of range, an error message is returned.
 *
 * @param WP_REST_Request $request The GET request object.
 *
 * @since 0.1.0
 *
 * @return WP_REST_Response A JSON response with the list of other projects.
 */
function fetchOtherPost(WP_REST_Request $request)
{
    $limit = $request->get_param('limit');
    $page = $request->get_param('page');



    $mainQuery = new WP_Query(
        array(
            'post_type' => 'project',
            'posts_per_page' => $limit,
            'paged' => $page,
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
        'otherProjects' => array(),
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

        array_push($results['otherProjects'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'excerpt' => get_the_excerpt(),
            'background' => get_field('background')['url'],
            'github_link' => get_field('github_link'),
            'created' => get_the_date(),
            'modified' => get_the_modified_date()
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Successfully fetched!';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}