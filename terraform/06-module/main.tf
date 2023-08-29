// main.tf in main moudule
module "sample" {
  source = "./module"
  #input = "xyz"
  input = module.dummy.dummy_opt
}

module "sample1" {
  source = "./dummy"
}