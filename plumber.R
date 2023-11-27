# Define the Plumber API using annotations
#* @get /predict/<file_id>
#* @param file_id:string ID or name of the RDS file
function(res, req, file_id) {
  if (file_id == "die") {
    stop_forbidden(file_id)
  }
  if (file_id == "stop") {
    stop("Normal R error.")
  }
  return("Success, File Found.")
}

stop_forbidden <- function(file_id) {
  api_error(
    paste0("Cannot access file ", file_id),
    status = 403
  )
}

api_error <- function(message, status) {
  err <- structure(
    list(message = message, status = status),
    class = c("error", "condition"),
    status_code = status
  )
  signalCondition(err)
}
