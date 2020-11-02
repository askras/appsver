function get_current_app_version {
    local version=$( \
        curl -s -L  $url_get_version \
        | grep -E -o -m1 "$prefix_match$match$suffix_match" \
        | sed "s|$prefix_match||" \
        | sed "s|$suffix_match||" \
    )
    echo $version
}