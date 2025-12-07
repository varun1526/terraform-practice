data "aws_availability_zones" "available" {}

data "aws_vpcs" "this" {
    filter {
        name   = "tag:Name"
        values = ["test-vpc"]
    }
}

data "aws_subnets" "subnet" {
    filter {
        name   = "vpc-id"
        values = [data.aws_vpcs.this.ids[0]]
    }
    filter {
        name   = "tag:Name"
        values = ["**public**"]
    }
}