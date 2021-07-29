output "region" {
  value = aws_region.current
}

output "key_name" {
  value = aws_key_pair.ilearning-wordpress.key_name
}

output "key_id" {
  value = aws_key_pair.ilearning-wordpress.id
}