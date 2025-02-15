resource "aws_dynamodb_table" "bookinventory" {
  name           = "${var.prefix}-bookinventory"
  billing_mode   = "PAY_PER_REQUEST" # On-demand billing
  hash_key       = "ISBN" # Partition Key
  range_key      = "Genre" # Sort Key

  attribute {
    name = "ISBN" 
    type = "S" # String
  }
  attribute {
    name = "Genre"
    type = "S" # String
  }

  # Set lifecycle rules to prevent accidental replacement of existing resources  
 /*  lifecycle {
    prevent_destroy = true
  } */

  tags = {
    Environment = "Dev"
    Application = "BookInventory"
    CreatedBy   = var.createdByTerraform
  }
}

# Option to Force Replace
# If you want to delete and recreate the table (WARNING: this deletes existing data), 
# use the terraform destroy command:
#   terraform destroy -target=aws_dynamodb_table.bookinventory
# Then, reapply the configuration:
#   terraform apply


output "dynamodb_table_arn" {
  value = aws_dynamodb_table.bookinventory.arn
}
output "dynamodb_table_name" {
  value = aws_dynamodb_table.bookinventory.name
}