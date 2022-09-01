//go:build !test
// +build !test

package main

import (
	"C"
	pb "github.com/mearaj/flutter_golang_examples/go/proto"
	"google.golang.org/grpc"
	"log"
	"net"
)

var collection = make([]BlogItem, 0)

//export Port
var Port int

var isServerRunning bool
var server *grpc.Server

func main() {
}

//export StartServer
func StartServer() {
	go func() {
		lis, err := net.Listen("tcp", "0.0.0.0:0")

		if err != nil {
			log.Fatalf("Failed to listen: %v\n", err)
		}

		log.Printf("Listening at %s\n", lis.Addr())
		Port = lis.Addr().(*net.TCPAddr).Port

		server = grpc.NewServer()
		pb.RegisterBlogServiceServer(server, &Server{})

		isServerRunning = true
		defer func() {
			isServerRunning = false
			server = nil
			Port = 0
		}()
		if err := server.Serve(lis); err != nil {
			log.Fatalf("Failed to serve: %v\n", err)
		}
	}()
}

//export StopServer
func StopServer() {
	if server != nil {
		server.Stop()
		isServerRunning = false
		Port = 0
	}
}

//export GetPort
func GetPort() int {
	return Port
}
