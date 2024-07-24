variable "my_list"{
    type = list /*This wil specify to only include lists as inndata*/
    default = ["Hello", "World"]
}

output "output_mylist" {
  value = var.my_list 
}
