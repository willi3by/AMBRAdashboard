.onLoad <- function(libname, pkgname){
  site_statistics <- mongo(collection = "SiteSummaryStatistics", db = "aprise")
  bin_statistics <- mongo(collection = "StatusSummaryStatistics", db = "aprise")
}