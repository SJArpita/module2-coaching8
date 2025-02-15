resource "aws_dynamodb_table_item" "item1" {
    table_name = aws_dynamodb_table.bookinventory.name
    hash_key       = "ISBN" # Partition Key
    range_key      = "Genre" # Sort Key    
    
    item = jsonencode({
        "ISBN"  : {"S": "978-01346854325"},
        "Genre" : {"S": "Technology"},
        "Author": {"S": "Mark Lutz"},
        "Title" : {"S": "System Design"}
    })
}
resource "aws_dynamodb_table_item" "item2" {
    table_name = aws_dynamodb_table.bookinventory.name
    hash_key       = "ISBN" # Partition Key
    range_key      = "Genre" # Sort Key

    item = jsonencode({
        "ISBN"  : { "S": "978-0134685991" },
        "Genre" : { "S": "Technology" },
        "Author": { "S": "Joshua Bloch" },
        "Stock" : { "N": "1" },
        "Title" : { "S": "Effective Java" }
    })
}
resource "aws_dynamodb_table_item" "item3" {
    table_name = aws_dynamodb_table.bookinventory.name
    hash_key       = "ISBN" # Partition Key
    range_key      = "Genre" # Sort Key

    item = jsonencode({
        "ISBN"  : { "S": "974-0134789698" },
        "Genre" : { "S": "Fiction" },
        "Author": { "S": "Douglas Adams" },
        "Stock" : { "N": "10" },
        "Title" : { "S": "The Hitchhiker" }
    })
}
resource "aws_dynamodb_table_item" "item4" {
    table_name = aws_dynamodb_table.bookinventory.name
    hash_key       = "ISBN" # Partition Key
    range_key      = "Genre" # Sort Key

  item = jsonencode({
    "ISBN"  : { "S": "982-01346653457" },
    "Genre" : { "S": "Fiction" },
    "Author": { "S": "Frank Herbert" },
    "Stock" : { "N": "8" },
    "Title" : { "S": "Dune" }
  })
}
resource "aws_dynamodb_table_item" "item5" {
    table_name = aws_dynamodb_table.bookinventory.name
    hash_key       = "ISBN" # Partition Key
    range_key      = "Genre" # Sort Key    
    
    item = jsonencode({
        "ISBN"  : { "S": "978-0134685009" },
        "Genre" : { "S": "Technology" },
        "Author": { "S": "Mark Lutz" },
        "Stock" : { "N": "2" },
        "Title" : { "S": "Learning Python" }
    })
}