#' Global seismicity data
#'
#' A sample global seismicity dataset for Master's students at CUH Mahendragarh.
#' This dataset can be used to visualize the Ring of Fire, plate boundaries,
#' and other earthquake-related geographic concepts.
#'
#' @format ## `global_seismicity`
#' Simple feature collection with 6 features and 13 fields:
#' \describe{
#'   \item{Date}{Date of the earthquake (YYYY/MM/DD)}
#'   \item{Time}{Time of the earthquake (HH:MM.S format, may include missing values)}
#'   \item{Lat}{Latitude in decimal degrees (WGS84)}
#'   \item{Lon}{Longitude in decimal degrees (WGS84)}
#'   \item{Depth}{Depth of the earthquake in km}
#'   \item{Mag}{Magnitude of the earthquake}
#'   \item{Magt}{Magnitude type (e.g., ML, MW)}
#'   \item{Nst}{Number of stations used (may include missing values)}
#'   \item{Gap}{Azimuthal gap (degrees, may include missing values)}
#'   \item{Clo}{Closest station distance (km, may include missing values)}
#'   \item{RMS}{Root mean square travel-time residual (may include missing values)}
#'   \item{SRC}{Source network (e.g., AK)}
#'   \item{Event}{Event identifier (may include missing values)}
#'   \item{geometry}{sf geometry column (POINT, EPSG:4326 / WGS84 CRS)}
#' }
#' @source \url{https://www.ncedc.org/anss/catalog-search.html}
"global_seismicity"
