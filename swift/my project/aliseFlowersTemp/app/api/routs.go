package api

import (
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"time"
)

func Router() {
	router := mux.NewRouter()
	log.Print("routine")
	router.HandleFunc("/api", helloHandler)

	srv := &http.Server{
		Handler: router,
		Addr:    ":8080",
		// Good practice: enforce timeouts for servers you create!
		WriteTimeout: 15 * time.Second,
		ReadTimeout:  15 * time.Second,
	}

	log.Fatal(srv.ListenAndServe())
}
