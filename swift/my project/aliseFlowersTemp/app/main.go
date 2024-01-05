package main

import (
	"aliseFlowersTemp/api"
	"aliseFlowersTemp/db"
)

func main() {

	db.Connect()

	go api.Router()
	select {}
}
