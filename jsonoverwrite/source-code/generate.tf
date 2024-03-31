locals {
## Update below as needed or can add it to tfvar file if needed
  defined_json={   
    class="AS3",
    action="deploy",
    persist= true,
    samovar=var.Outerwear.samovar,
    Othervar=var.Outerwear.Othervar,
    declaration=local.declaration}
  declaration=merge(var.Outerwear.input_json)
  output_json_data  = merge(local.defined_json)
}
## accept tfvar variable input_json
variable "Outerwear" {
  type        = any
  description = "This is a JSON formatted string."
}

variable "SomoeotherVar" {
  type        = string
}


## only to dispaly value in the terminal
output "var" {
  value = local.output_json_data
}

## create required output2.json file 
resource "local_file" "output_json" {
  filename = "output2.json"
  content  = jsonencode(local.output_json_data)
}
