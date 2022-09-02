package main

import (
	"context"
	"errors"
	"fmt"
	"log"
	"strconv"

	pb "github.com/mearaj/flutter_golang_examples/go/proto"
)

func (*Server) CreateBlog(ctx context.Context, in *pb.Blog) (*pb.BlogId, error) {
	log.Printf("CreateBlog was invoked with %v\n", in)
	for _, eachBlog := range Collection {
		if eachBlog.ID == in.GetId() {
			return nil, errors.New(fmt.Sprintf("id %s already exist", in.Id))
		}
	}
	_, err := strconv.Atoi(in.Id)
	if err != nil {
		return nil, err
	}
	Collection = append(Collection, BlogItem{
		ID:       in.Id,
		AuthorID: in.AuthorId,
		Title:    in.Title,
		Content:  in.Content,
	})
	return &pb.BlogId{
		Id: in.Id,
	}, nil
}
