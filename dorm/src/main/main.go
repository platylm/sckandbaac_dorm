package main

import (
	"html/template"
	"net/http"
)

type TodoPageData struct {
	PageTitle string

}

func main() {
    tmpl := template.Must(template.ParseFiles("../app/views/content/searchDorm.html"))
	http.HandleFunc("/sckdorm", func(w http.ResponseWriter, r *http.Request) {
		data := TodoPageData{
		}
		tmpl.Execute(w, data)
	})

	http.ListenAndServe(":8080", nil)
}