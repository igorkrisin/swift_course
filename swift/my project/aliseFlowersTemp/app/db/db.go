package db

import (
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

type Flowers struct {
	gorm.Model
	Name string
}

type Colors struct {
	ID    uint `gorm:"primarykey"`
	Name  string
	Hex   string
	Image string
}

func Connect() {

	dsn := "host=postgres user=alise_flowers_db password=k[zqDqLsnV dbname=alise_flowers_db port=5432 sslmode=disable"
	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	if err != nil {
		panic("failed to connect database")
	}

	db.AutoMigrate(&Flowers{})
	db.AutoMigrate(&Colors{})

}
