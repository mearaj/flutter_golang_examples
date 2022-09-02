package main

import (
	"context"
	"fmt"
	"log"

	pb "github.com/mearaj/flutter_golang_examples/go/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func (*Server) ReadBlog(ctx context.Context, in *pb.BlogId) (*pb.Blog, error) {
	log.Printf("ReadBlog was invoked with %v\n", in)

	log.Printf("DeleteBlog was invoked with %v\n", in)
	for _, eachBlog := range Collection {
		if eachBlog.ID == in.GetId() {
			return documentToBlog(&eachBlog), nil
		}
	}
	return nil, status.Errorf(
		codes.Internal,
		fmt.Sprintf("ID not found %v", in.GetId()),
	)
}
