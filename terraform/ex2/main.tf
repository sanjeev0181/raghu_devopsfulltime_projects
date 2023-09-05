module "sg" {
    source = "./sg"
}

module "ec2" {
  source = "./ec2"
  source = module.sg.sg_id
}