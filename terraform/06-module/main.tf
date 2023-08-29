// main.tf in main moudule
module "sample" {
  source = "./module"
  input = "xyz"
}

module "sample1" {
  source = "./dummy"
}