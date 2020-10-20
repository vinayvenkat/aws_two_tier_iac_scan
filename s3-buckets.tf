resource "aws_s3_bucket" "foo" {
  bucket        = "tf-test-trail"
  force_destroy = true

  acl    = "public"
  #versioning {
  #  enabled = true
  #}
}
