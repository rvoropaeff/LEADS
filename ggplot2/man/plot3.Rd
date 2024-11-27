\name{plot3}
\alias{plot3}
\docType{data}
\title{
A Capitalized Title for the Data Set
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("plot3")}
\format{
  The format is:
List of 11
 $ data       : tibble [35 × 4] (S3: tbl_df/tbl/data.frame)
  ..$ surveytype: Factor w/ 3 levels "Baseline","Exit",..: 1 1 1 1 1 1 1 1 1 1 ...
  ..$ Score_x   : num [1:35] 1 2 3 3 4 4 4 4 5 5 ...
  ..$ Score_y   : num [1:35] 4 5 4 5 2 3 4 5 3 4 ...
  ..$ Count     : int [1:35] 1 1 6 7 4 3 6 16 4 7 ...
 $ layers     :List of 1
  ..$ :Classes 'LayerInstance', 'Layer', 'ggproto', 'gg' <ggproto object: Class LayerInstance, Layer, gg>
    aes_params: list
    compute_aesthetics: function
    compute_geom_1: function
    compute_geom_2: function
    compute_position: function
    compute_statistic: function
    computed_geom_params: NULL
    computed_mapping: NULL
    computed_stat_params: NULL
    constructor: call
    data: waiver
    draw_geom: function
    finish_statistics: function
    geom: <ggproto object: Class GeomPoint, Geom, gg>
        aesthetics: function
        default_aes: uneval
        draw_group: function
        draw_key: function
        draw_layer: function
        draw_panel: function
        extra_params: na.rm
        handle_na: function
        non_missing_aes: size shape colour
        optional_aes: 
        parameters: function
        rename_size: FALSE
        required_aes: x y
        setup_data: function
        setup_params: function
        use_defaults: function
        super:  <ggproto object: Class Geom, gg>
    geom_params: list
    inherit.aes: TRUE
    layer_data: function
    map_statistic: function
    mapping: uneval
    position: <ggproto object: Class PositionJitter, Position, gg>
        compute_layer: function
        compute_panel: function
        height: 0.3
        required_aes: x y
        seed: NA
        setup_data: function
        setup_params: function
        width: 0.1
        super:  <ggproto object: Class PositionJitter, Position, gg>
    print: function
    setup_layer: function
    show.legend: NA
    stat: <ggproto object: Class StatIdentity, Stat, gg>
        aesthetics: function
        compute_group: function
        compute_layer: function
        compute_panel: function
        default_aes: uneval
        dropped_aes: 
        extra_params: na.rm
        finish_layer: function
        non_missing_aes: 
        optional_aes: 
        parameters: function
        required_aes: 
        retransform: TRUE
        setup_data: function
        setup_params: function
        super:  <ggproto object: Class Stat, gg>
    stat_params: list
    super:  <ggproto object: Class Layer, gg> 
 $ scales     :Classes 'ScalesList', 'ggproto', 'gg' <ggproto object: Class ScalesList, gg>
    add: function
    add_defaults: function
    add_missing: function
    backtransform_df: function
    clone: function
    find: function
    get_scales: function
    has_scale: function
    input: function
    map_df: function
    n: function
    non_position_scales: function
    scales: list
    train_df: function
    transform_df: function
    super:  <ggproto object: Class ScalesList, gg> 
 $ guides     :Classes 'Guides', 'ggproto', 'gg' <ggproto object: Class Guides, gg>
    add: function
    assemble: function
    build: function
    draw: function
    get_custom: function
    get_guide: function
    get_params: function
    get_position: function
    guides: list
    merge: function
    missing: <ggproto object: Class GuideNone, Guide, gg>
        add_title: function
        arrange_layout: function
        assemble_drawing: function
        available_aes: any
        build_decor: function
        build_labels: function
        build_ticks: function
        build_title: function
        draw: function
        draw_early_exit: function
        elements: list
        extract_decor: function
        extract_key: function
        extract_params: function
        get_layer_key: function
        hashables: list
        measure_grobs: function
        merge: function
        override_elements: function
        params: list
        process_layers: function
        setup_elements: function
        setup_params: function
        train: function
        transform: function
        super:  <ggproto object: Class GuideNone, Guide, gg>
    package_box: function
    print: function
    process_layers: function
    setup: function
    subset_guides: function
    train: function
    update_params: function
    super:  <ggproto object: Class Guides, gg> 
 $ mapping    :List of 3
  ..$ x     : language ~Score_x
  .. ..- attr(*, ".Environment")=<environment: 0x000001a234a72120> 
  ..$ y     : language ~Score_y
  .. ..- attr(*, ".Environment")=<environment: 0x000001a234a72120> 
  ..$ colour: language ~surveytype
  .. ..- attr(*, ".Environment")=<environment: 0x000001a234a72120> 
  ..- attr(*, "class")= chr "uneval"
 $ theme      :List of 136
  ..$ line                            :List of 6
  .. ..$ colour       : chr "black"
  .. ..$ linewidth    : num 0.5
  .. ..$ linetype     : num 1
  .. ..$ lineend      : chr "butt"
  .. ..$ arrow        : logi FALSE
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_line" "element"
  ..$ rect                            :List of 5
  .. ..$ fill         : chr "white"
  .. ..$ colour       : chr "black"
  .. ..$ linewidth    : num 0.5
  .. ..$ linetype     : num 1
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_rect" "element"
  ..$ text                            :List of 11
  .. ..$ family       : chr ""
  .. ..$ face         : chr "plain"
  .. ..$ colour       : chr "black"
  .. ..$ size         : num 11
  .. ..$ hjust        : num 0.5
  .. ..$ vjust        : num 0.5
  .. ..$ angle        : num 0
  .. ..$ lineheight   : num 0.9
  .. ..$ margin       : 'margin' num [1:4] 0points 0points 0points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : logi FALSE
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ title                           : NULL
  ..$ aspect.ratio                    : NULL
  ..$ axis.title                      :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : num 7
  .. ..$ hjust        : NULL
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : NULL
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi FALSE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.title.x                    :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 1
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 2.75points 0points 0points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.title.x.top                :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 0
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 0points 2.75points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.title.x.bottom             : NULL
  ..$ axis.title.y                    :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 1
  .. ..$ angle        : num 90
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 2.75points 0points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.title.y.left               : NULL
  ..$ axis.title.y.right              :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 1
  .. ..$ angle        : num -90
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 0points 0points 2.75points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text                       :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : chr "grey30"
  .. ..$ size         : num 7
  .. ..$ hjust        : NULL
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : NULL
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi FALSE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text.x                     :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 1
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 2.2points 0points 0points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text.x.top                 :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : NULL
  .. ..$ vjust        : num 0
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 0points 2.2points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text.x.bottom              : NULL
  ..$ axis.text.y                     :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : num 1
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 2.2points 0points 0points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text.y.left                : NULL
  ..$ axis.text.y.right               :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : num 0
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 0points 0points 2.2points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.text.theta                 : NULL
  ..$ axis.text.r                     :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : NULL
  .. ..$ hjust        : num 0.5
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : 'margin' num [1:4] 0points 2.2points 0points 2.2points
  .. .. ..- attr(*, "unit")= int 8
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi TRUE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ axis.ticks                      : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ axis.ticks.x                    : NULL
  ..$ axis.ticks.x.top                : NULL
  ..$ axis.ticks.x.bottom             : NULL
  ..$ axis.ticks.y                    : NULL
  ..$ axis.ticks.y.left               : NULL
  ..$ axis.ticks.y.right              : NULL
  ..$ axis.ticks.theta                : NULL
  ..$ axis.ticks.r                    : NULL
  ..$ axis.minor.ticks.x.top          : NULL
  ..$ axis.minor.ticks.x.bottom       : NULL
  ..$ axis.minor.ticks.y.left         : NULL
  ..$ axis.minor.ticks.y.right        : NULL
  ..$ axis.minor.ticks.theta          : NULL
  ..$ axis.minor.ticks.r              : NULL
  ..$ axis.ticks.length               : 'simpleUnit' num 2.75points
  .. ..- attr(*, "unit")= int 8
  ..$ axis.ticks.length.x             : NULL
  ..$ axis.ticks.length.x.top         : NULL
  ..$ axis.ticks.length.x.bottom      : NULL
  ..$ axis.ticks.length.y             : NULL
  ..$ axis.ticks.length.y.left        : NULL
  ..$ axis.ticks.length.y.right       : NULL
  ..$ axis.ticks.length.theta         : NULL
  ..$ axis.ticks.length.r             : NULL
  ..$ axis.minor.ticks.length         : 'rel' num 0.75
  ..$ axis.minor.ticks.length.x       : NULL
  ..$ axis.minor.ticks.length.x.top   : NULL
  ..$ axis.minor.ticks.length.x.bottom: NULL
  ..$ axis.minor.ticks.length.y       : NULL
  ..$ axis.minor.ticks.length.y.left  : NULL
  ..$ axis.minor.ticks.length.y.right : NULL
  ..$ axis.minor.ticks.length.theta   : NULL
  ..$ axis.minor.ticks.length.r       : NULL
  ..$ axis.line                       : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ axis.line.x                     : NULL
  ..$ axis.line.x.top                 : NULL
  ..$ axis.line.x.bottom              : NULL
  ..$ axis.line.y                     : NULL
  ..$ axis.line.y.left                : NULL
  ..$ axis.line.y.right               : NULL
  ..$ axis.line.theta                 : NULL
  ..$ axis.line.r                     : NULL
  ..$ legend.background               : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ legend.margin                   : 'margin' num [1:4] 0points 0points 0points 0points
  .. ..- attr(*, "unit")= int 8
  ..$ legend.spacing                  : 'simpleUnit' num 11points
  .. ..- attr(*, "unit")= int 8
  ..$ legend.spacing.x                : NULL
  ..$ legend.spacing.y                : 'simpleUnit' num 0.01cm
  .. ..- attr(*, "unit")= int 1
  ..$ legend.key                      : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ legend.key.size                 : 'simpleUnit' num 1.2lines
  .. ..- attr(*, "unit")= int 3
  ..$ legend.key.height               : NULL
  ..$ legend.key.width                : NULL
  ..$ legend.key.spacing              : 'simpleUnit' num 5.5points
  .. ..- attr(*, "unit")= int 8
  ..$ legend.key.spacing.x            : NULL
  ..$ legend.key.spacing.y            : NULL
  ..$ legend.frame                    : NULL
  ..$ legend.ticks                    : NULL
  ..$ legend.ticks.length             : 'rel' num 0.2
  ..$ legend.axis.line                : NULL
  ..$ legend.text                     :List of 11
  .. ..$ family       : NULL
  .. ..$ face         : NULL
  .. ..$ colour       : NULL
  .. ..$ size         : num 7
  .. ..$ hjust        : NULL
  .. ..$ vjust        : NULL
  .. ..$ angle        : NULL
  .. ..$ lineheight   : NULL
  .. ..$ margin       : NULL
  .. ..$ debug        : NULL
  .. ..$ inherit.blank: logi FALSE
  .. ..- attr(*, "class")= chr [1:2] "element_text" "element"
  ..$ legend.text.position            : NULL
  ..$ legend.title                    : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ legend.title.position           : NULL
  ..$ legend.position                 : chr "right"
  ..$ legend.position.inside          : NULL
  ..$ legend.direction                : NULL
  ..$ legend.byrow                    : NULL
  ..$ legend.justification            : chr "center"
  ..$ legend.justification.top        : NULL
  ..$ legend.justification.bottom     : NULL
  ..$ legend.justification.left       : NULL
  ..$ legend.justification.right      : NULL
  ..$ legend.justification.inside     : NULL
  ..$ legend.location                 : NULL
  ..$ legend.box                      : NULL
  ..$ legend.box.just                 : NULL
  ..$ legend.box.margin               : 'margin' num [1:4] 0cm 0cm 0cm 0cm
  .. ..- attr(*, "unit")= int 1
  ..$ legend.box.background           : list()
  .. ..- attr(*, "class")= chr [1:2] "element_blank" "element"
  ..$ legend.box.spacing              : 'simpleUnit' num 11points
  .. ..- attr(*, "unit")= int 8
  .. [list output truncated]
  ..- attr(*, "class")= chr [1:2] "theme" "gg"
  ..- attr(*, "complete")= logi TRUE
  ..- attr(*, "validate")= logi TRUE
 $ coordinates:Classes 'CoordCartesian', 'Coord', 'ggproto', 'gg' <ggproto object: Class CoordCartesian, Coord, gg>
    aspect: function
    backtransform_range: function
    clip: on
    default: TRUE
    distance: function
    expand: TRUE
    is_free: function
    is_linear: function
    labels: function
    limits: list
    modify_scales: function
    range: function
    render_axis_h: function
    render_axis_v: function
    render_bg: function
    render_fg: function
    setup_data: function
    setup_layout: function
    setup_panel_guides: function
    setup_panel_params: function
    setup_params: function
    train_panel_guides: function
    transform: function
    super:  <ggproto object: Class CoordCartesian, Coord, gg> 
 $ facet      :Classes 'FacetNull', 'Facet', 'ggproto', 'gg' <ggproto object: Class FacetNull, Facet, gg>
    compute_layout: function
    draw_back: function
    draw_front: function
    draw_labels: function
    draw_panels: function
    finish_data: function
    init_scales: function
    map_data: function
    params: list
    setup_data: function
    setup_params: function
    shrink: TRUE
    train_scales: function
    vars: function
    super:  <ggproto object: Class FacetNull, Facet, gg> 
 $ plot_env   :<environment: 0x000001a234a72120> 
 $ layout     :Classes 'Layout', 'ggproto', 'gg' <ggproto object: Class Layout, gg>
    coord: NULL
    coord_params: list
    facet: NULL
    facet_params: list
    finish_data: function
    get_scales: function
    layout: NULL
    map_position: function
    panel_params: NULL
    panel_scales_x: NULL
    panel_scales_y: NULL
    render: function
    render_labels: function
    reset_scales: function
    resolve_label: function
    setup: function
    setup_panel_guides: function
    setup_panel_params: function
    train_position: function
    super:  <ggproto object: Class Layout, gg> 
 $ labels     :List of 5
  ..$ x     : chr "creativeperson"
  ..$ y     : chr "priaccess"
  ..$ title : chr "creativeperson vs priaccess"
  ..$ colour: chr "surveytype"
  ..$ size  : chr "Count"
 - attr(*, "class")= chr [1:2] "gg" "ggplot"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(plot3)
## maybe str(plot3) ; plot(plot3) ...
}
\keyword{datasets}
