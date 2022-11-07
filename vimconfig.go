package main

import (
	"fmt"
	"flag"
	"os"
)


func main() { 
	SubCmd1 := flag.NewFlagSet("deploy",flag.ExitOnError)
	testSubCmd2 := flag.NewFlagSet("pull",flag.ExitOnError)

	if len(os.Args) < 2  {
		fmt.Println("expected 'foo' or 'bar' subcommand")
		os.Exit(1)
	}
	switch os.Args[1]{
	case "deploy":
		testSubCmd1.Parse(os.Args[2:])
		fmt.Println("subcommand 'SubCmd1'")
	case "pull":
		testSubCmd2.Parse(os.Args[2:])
		fmt.Println("subcommand 'SubCmd2'")
	default:
		fmt.Println("excepted ")
	}
}


