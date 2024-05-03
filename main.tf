module "vpc" {
    source = "./vpc"
}

module "web" {
    source = "./web"
    sn = module.vpc.pb_sn
    sg = module.vpc.mysg
}

resource "aws_dynamodb_table" "backend" {
    name           = "backend"
    read_capacity  = 20
    write_capacity = 20
    hash_key       = "gems"

    attribute {
        name = "backend"
        type = "S"
    }
}
