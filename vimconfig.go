package main

import (
	"flag"
	"fmt"
	"os"
)

func file_copy(src,dst string) (int64,error)  { 
	sourceFileStat, err := os.Stat(src)
	if err !=nil  {
		return 0, err
	}
	if !sourceFileStat.Mode().IsRegular()  {
		return 0, fmt.Errorf("%s is not regular file",src) 
	}

	source, err:=os.Open(src)
	if err != nil { 
		return 0, err
	}
	defer source.Close()

	destination, err := os.Create(dst)
	if err != nil { 
		return 0, err
	}
	defer destination.Close()
	nBytes , err := io.Copy(destination,source)
	return nBytes,err
}

func main() { 
	SubCmd1 := flag.NewFlagSet("deploy",flag.ExitOnError)
	SubCmd2 := flag.NewFlagSet("pull",flag.ExitOnError)
	

	if len(os.Args) < 2  {
		fmt.Println("expected 'foo' or 'bar' subcommand")
		os.Exit(1)
	}
	switch os.Args[1]{
	case "deploy":
		SubCmd1.Parse(os.Args[2:])
		fmt.Println("subcommand 'SubCmd1'")
		//	file_copy(os.Args[3:],os.Args[4:])
		fmt.Println("debug"+os.Args[3])
		fmt.Println("debug"+os.Args[4])
	case "pull":
		SubCmd2.Parse(os.Args[2:])
		fmt.Println("subcommand 'SubCmd2'")
	default:
		fmt.Println("excepted ")
	}
}


