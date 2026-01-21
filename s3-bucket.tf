# creating bucket to store images and will trigger lambda function to resize images
resource "aws_s3_bucket" "image-need-resize" {
    bucket = var.s3-bucket-lambda-code
    
    lifecycle {
      prevent_destroy = false
    }
    force_destroy = true
}

# creating a bucket to store resize images after lambda fucntion trigger

resource "aws_s3_bucket" "image-resized" {
    bucket = var.s3-bucket-destination
    
    lifecycle {
      prevent_destroy = false
    }

    force_destroy = true  
}
