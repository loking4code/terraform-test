resource "aws_s3_bucket" "test-12-31-31" {
  bucket = "test-12-31-31"
  acl    = "public-read"
}
#resource "aws_s3_bucket" "test-12-31-32" {
#  bucket = "test-12-31-32"
#  acl    = "private"
#}
resource "aws_s3_bucket" "test-12-31-34" {
  bucket = "test-12-31-34"
  acl    = "private"
}
resource "aws_s3_bucket" "test-12-31-35" {
  bucket = "test-12-31-35"
  acl    = "private"
}
