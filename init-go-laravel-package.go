package main

import (
	"log"
	"os"

	glp "github.com/mmRoshani/go_laravel_package"
)

func initApplication() *application {
	path, err := os.Getwd()

	if err != nil {
		log.Fatal(err)
	}

	// initializing go_laravel_package
	glp := &glp.GoLaravelPackage{}
	err = glp.New(path)

	if err != nil {
		log.Fatal(err)
	}

	glp.AppName = "go-laravel"
	glp.Description = "Golang laravel based web framework."

	glp.InfoLog.Println("Debug flag is set to:", glp.Debug)

	// initializing app

	app := &application{
		App: glp,
	}

	return app

}
