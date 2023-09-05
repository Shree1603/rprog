data(airquality)
if (is.data.frame(airquality)) {
  print("airquality is a data frame.")
} else {
  print("airquality is not a data frame.")
}
oaq <- airquality[order(airquality$Month, airquality$Day), ]

caq <- oaq[, !(names(oaq) %in% c('Solar.R', 'Wind'))]

print(caq)
