package main

import glp "github.com/mmRoshani/go_laravel_package"

type application struct {
	App *glp.GoLaravelPackage
}

func main() {
	glp := initApplication()
	glp.App.ListenAndServe()
}
