package main

import (
	"context"
	"fmt"
	"log"

	pb "github.com/mearaj/flutter_golang_examples/go/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

func (*Server) UpdateBlog(ctx context.Context, in *pb.Blog) (*emptypb.Empty, error) {
	log.Printf("UpdateBlog was invoked with %v\n", in)
	for index, eachBlog := range collection {
		if eachBlog.ID == in.GetId() {
			collection[index] = BlogItem{
				ID:       in.GetId(),
				AuthorID: in.GetAuthorId(),
				Title:    in.GetTitle(),
				Content:  in.GetContent(),
			}
			return &emptypb.Empty{}, nil
		}
	}
	return nil, status.Errorf(
		codes.Internal,
		fmt.Sprintf("blog ID not found %v", in.GetId()),
	)
}
