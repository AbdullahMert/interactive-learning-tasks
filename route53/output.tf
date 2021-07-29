output "SomeOutput" {
  value = <<EOF
        zone_id   ${aws_route53_record.www.zone_id}
        name      ${aws_route53_record.www.name}
        EOF
}

output "records" {
  value = aws_route53_record.www.records
}


