package main

import (
	pb "github.com/mearaj/flutter_golang_examples/go/proto"
)

var IDs = 0

type BlogItem struct {
	ID       string
	AuthorID string
	Title    string
	Content  string
}

func documentToBlog(data *BlogItem) *pb.Blog {
	return &pb.Blog{
		Id:       data.ID,
		AuthorId: data.AuthorID,
		Title:    data.Title,
		Content:  data.Content,
	}
}
