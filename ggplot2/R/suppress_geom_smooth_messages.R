suppress_geom_smooth_messages <-
function() {
  old_option <- options(show.error.messages = FALSE)
  on.exit(options(old_option), add = TRUE)
}
