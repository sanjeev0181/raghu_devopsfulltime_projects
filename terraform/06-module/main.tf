// main.tf in main moudule
module "sample" {
  source = "./module"
  #input = "xyz"
  input = module.sample1.dummy_opt
}

module "sample1" {
  source = "./dummy"
}