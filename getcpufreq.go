package main

import (
    "fmt"
    "os"
)

func main() {
    dat, _ := os.ReadFile("/proc/cpuinfo")
    fmt.Print(string(dat))
}
