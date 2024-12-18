<?php

add_action('rest_api_init', 'noteRoutes');


/**
 * Registers the /note/v1/notes endpoint for fetching notes.
 *
 * Fetches all notes from the database and returns them in a JSON response.
 *
 * @since 0.1.0
 */
function noteRoutes() {
    $base_route = 'note/v1';
    $slug = '/notes';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchNotes'
        )
    );
}


/**
 * Callback function for the /note/v1/notes endpoint.
 *
 * Fetches all notes from the database and returns them in a JSON response.
 *
 * The function takes a WP_REST_Request object as an argument. The request
 * object contains the URL parameters passed in the request. The function
 * fetches the notes using the given page and limit, and formats the results
 * into a JSON object.
 *
 * @since 0.1.0
 *
 * @param WP_REST_Request $request The request object.
 *
 * @return array The JSON response.
 */
function fetchNotes(WP_REST_Request $request){
    $limit = (int) $request->get_param('limit');
    $page = (int) $request->get_param('page');
    $results = array(
        'notes' => array()
    );
    $mainQuery = new WP_Query(
        array(
            'post_type' => array('note'),
            'posts_per_page' => (is_null($limit) OR $limit < 1)? 5: $limit,
            'paged' => (is_null($page) OR $page < 1)? 1: $page
        )
    );

    while($mainQuery->have_posts()) {
        $mainQuery->the_post();

        $now = new DateTime("now");
        $created = DateTime::createFromImmutable(get_post_datetime());
        $timeDiff = $now->diff($created);
        $timeDiffTxt = '';

        switch(true) {
            case $timeDiff->y > 0:
                $timeDiffTxt .= $timeDiff->format('%y years') . ' ago';
                break;
            case $timeDiff->m:
                $timeDiffTxt .= $timeDiff->format('%M months') . ' ago';
                break;
            case $timeDiff->d:
                $timeDiffTxt .= $timeDiff->format('%d days') . ' ago';
                break;
            case $timeDiff->h:
                $timeDiffTxt .= $timeDiff->format('%h hrs') . ' ago';
                break;
            case $timeDiff->i:
                $timeDiffTxt .= $timeDiff->format('%i min') . ' ago';
                break;
            case $timeDiff->s:
                $timeDiffTxt .= $timeDiff->format('%s sec') . ' ago';
                break;
            default:
                $timeDiffTxt = 'now';
                break;
        }

        array_push($results['notes'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'content' => get_the_content(),
            'created' => $timeDiffTxt,
            'author' => array(
                'nickname' => get_the_author_meta('display_name'),
                'name' => get_the_author_meta('first_name') . ' ' . get_the_author_meta('last_name'),
                'profileImage' =>get_avatar_url(get_the_author_meta('ID'))

            )
        ));
    }

    $results['currentPage'] = (is_null($page) OR $page < 1)? 1: $page;
    $results['maxPage'] =  $mainQuery->max_num_pages;
    $results['status'] = array(
            'is_success' => true,
            'message' => 'successfully loaded notes'
    );

    return $results;
}