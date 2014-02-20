//need to put this thing into a folder to properly run go install
package main

import (
	"fmt"
	"net/http"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("Starting with arguments %#v \n", os.Args)

	if len(os.Args) < 3 {
		fmt.Printf("Error! %s %s %s \n", os.Args[0], "portNumber", "staticFileDir")

	} else {
		if _, err := strconv.ParseUint(os.Args[1], 10, 32); err != nil {
			panic(err)
		}
		staticFileDir := os.Args[2]

		http.ListenAndServe(":"+os.Args[1], http.FileServer(http.Dir(staticFileDir)))
	}

}
