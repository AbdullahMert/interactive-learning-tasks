resource "aws_route53_record" "www" {
  zone_id = "Z021347633WKSSEZ8PEC1"
  name    = "blog.mertaykanat.net"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}