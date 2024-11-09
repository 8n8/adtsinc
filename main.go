package main

import (
    "net/http"
    "log"
)

func main() {
    var db Db
    http.HandleFunc("/", func(response http.ResponseWriter, request *http.Request) {
        handler(&db, response, request)
    })
    log.Fatal(http.ListenAndServe(":8080", nil))
}
