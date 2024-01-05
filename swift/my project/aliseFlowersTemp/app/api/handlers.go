package api

import (
	"encoding/json"
	"log"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	log.Print("hello")
	json.NewEncoder(w).Encode(map[string]bool{"hello world": true})
}
