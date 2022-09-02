package main

import (
	pb "github.com/mearaj/flutter_golang_examples/go/proto"
	"google.golang.org/protobuf/types/known/emptypb"
)

func (*Server) ListBlogs(_ *emptypb.Empty, stream pb.BlogService_ListBlogsServer) error {
	for _, eachblog := range Collection {
		stream.Send(documentToBlog(&eachblog))
	}

	return nil
}
