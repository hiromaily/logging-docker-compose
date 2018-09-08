package main

import (
	"time"
	"log"
	"math/rand"
	//log "github.com/Sirupsen/logrus"
)

func main(){
	//var filename string = "logfile.log"
	//f, err := os.OpenFile(filename, os.O_WRONLY | os.O_APPEND | os.O_CREATE, 0644)
	//Formatter := new(log.TextFormatter)
	//Formatter.TimestampFormat = "02-01-2006 15:04:05"
	//Formatter.FullTimestamp = true
	//log.SetFormatter(Formatter)
	//if err != nil {
	//	panic(err)
	//}else{
	//	log.SetOutput(f)
	//}

	for{
		log.Printf("Some random log output %d\n", rand.Intn(1000))

		//log.Info("Some info. Earth is not flat")
		//log.Warning("This is a warning")
		//log.Error("Not fatal. An error. Won't stop execution")
		//log.Fatal("MAYDAY MAYDAY MAYDAY")
		//log.Panic("Do not panic")

		time.Sleep(500 * time.Millisecond)
	}
}