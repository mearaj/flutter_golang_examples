package main

import (
	"context"
	"fmt"
	pb "github.com/mearaj/flutter_golang_examples/go/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"log"
)

func (*Server) DeleteBlog(ctx context.Context, in *pb.BlogId) (*emptypb.Empty, error) {
	log.Printf("DeleteBlog was invoked with %v\n", in)
	for index, eachBlog := range Collection {
		if eachBlog.ID == in.GetId() {
			newCollection := make([]BlogItem, 0)
			newCollection = append(newCollection, Collection[:index]...)
			Collection = append(newCollection, Collection[:index]...)
			return &emptypb.Empty{}, nil
		}
	}
	return nil, status.Errorf(
		codes.Internal,
		fmt.Sprintf("ID not found %v", in.GetId()),
	)
}
