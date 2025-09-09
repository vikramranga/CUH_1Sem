#' Plot Global Seismicity Data on an Interactive Map
#'
#' Opens an interactive map in your default browser showing the global_seismicity points
#' on a satellite basemap, with popups listing all attributes.
#'
#' @param data An sf object with POINT geometry. Defaults to the built-in `global_seismicity`.
#' @return An interactive leaflet map is displayed.
#' @examples
#' plot_global_seismicity()
#' @export
plot_global_seismicity <- function(data = global_seismicity) {
  if (!requireNamespace("leaflet", quietly = TRUE)) {
    stop("Package 'leaflet' is required. Please install it.")
  }
  if (!inherits(data, "sf")) {
    stop("Input data must be an sf object with POINT geometry.")
  }

  # Create popup content dynamically: all columns except geometry
  attrs <- sf::st_drop_geometry(data)
  popup_text <- apply(attrs, 1, function(row) {
    paste0("<b>", names(attrs), ":</b> ", row, collapse = "<br>")
  })

  map <- leaflet::leaflet(data) |>
    leaflet::addProviderTiles("Esri.WorldImagery") |>  # Satellite imagery
    leaflet::addCircleMarkers(
      radius = 5,
      color = "red",
      stroke = FALSE,
      fillOpacity = 0.8,
      popup = popup_text
    )

  # Print map (opens in RStudio Viewer or default browser)
  map
}
