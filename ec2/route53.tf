resource "aws_route53_record" "ABC" {
  zone_id = "Z021347633WKSSEZ8PEC1"
  name    = "wordpress.mertaykanat.net"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}