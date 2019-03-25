provider "s3" {
    s3_server        = "localhost:9000"
    s3_access_key    = "dalongdemo"
    s3_secret_key    = "dalongdemo"
    s3_api_signature = "v4"
    s3_ssl           = false
    s3_debug         = true
}

resource "s3_bucket" "bucket_create" {
	bucket = "s3page"
    s3_debug         = true
}

resource "s3_file" "upload_index_page" {
    bucket       = "s3page"
    name         = "index.html"
    file_path    =  "./files/index.html"
    content_type = "text.html"
    debug        = true
    depends_on = ["s3_bucket.bucket_create"]
}

resource "s3_file" "upload_user_js" {
    bucket       = "s3page"
    name         = "user.js"
    file_path    =  "./files/user.js"
    content_type = "application/javascript"
    debug        = true
    depends_on = ["s3_bucket.bucket_create"]

}