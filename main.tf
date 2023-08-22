resource "aws_route53_zone" "soslabs" {
  name = "soslabs.com"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.soslabs.zone_id
  name    = "www.soslabs.com"
  type    = "A"
  ttl     = 300
  records = ["192.168.1.1"]
}

resource "aws_route53_record" "mail" {
  zone_id = aws_route53_zone.soslabs.zone_id
  name    = "mail.soslabs.com"
  type    = "MX"
  ttl     = 300
  records = ["20 mail.soslabs.com"]
}