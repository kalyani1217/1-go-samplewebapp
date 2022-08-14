package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	h := http.FileServer(http.Dir("./static"))
	http.Handle("/", h)

	http.HandleFunc("/home", homeHandler)
	http.HandleFunc("/form", formHandler)

	log.Fatal(http.ListenAndServe(":9001", nil))
}

func homeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome to home page")
	w.WriteHeader(http.StatusOK)
}

func formHandler(w http.ResponseWriter, r *http.Request) {
	username := r.FormValue("username")
	age := r.FormValue("age")

	fmt.Fprintf(w, "username is %s and age is %s\n", username, age)
}
