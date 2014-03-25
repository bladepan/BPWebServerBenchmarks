package main

import (
	"fmt"
	"net/http"
	"os"
	"runtime"
	"strconv"
)

func main() {
	fmt.Printf("Starting with arguments %#v \n", os.Args)
	fmt.Printf("%d Logic CPUS in this machine. \n", runtime.NumCPU())
	fmt.Printf("Default GOMAXPROCS: %d \n", runtime.GOMAXPROCS(0))

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
