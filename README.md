# terraform with minio

## how to running

* install s3 provider

```code
go get github.com/negronjl/terraform-provider-s3
go install github.com/negronjl/terraform-provider-s3
```

* start minio s3 server

> use docker-compose

```code
docker-compose up -d

```

* add plugin

> note platform deps you os my os is mac so is will be darwin_amd64

```code
you must copy terraform-provider-s3 binary file to  ./.terraform/plugins/<platform>/
```

* init terraform

```code
terraform init
```

* view plan for this deploy

```code
terraform  plan
```

* deploy

```code
terraform deploy
```

* change bucket policy for user view webpage

```code
with * Ready Only
```
