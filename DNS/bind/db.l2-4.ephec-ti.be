$ORIGIN l2-4.ephec-ti.be.     ;designates the start of this zone file in the namespace
$TTL 86400                   ; default time to live

@ IN SOA l2-4.ephec-ti.be. admin.l2-4.ephec-ti.be. (
        2021032801  ; serial number
        21600       ; Refresh
        3600        ; Retry
        1209600     ; Expire
        86400       ; Min TTL
        )

        IN      NS      ns.l2-4.ephec-ti.be.
        IN      MX  10  mail
ns      IN      A       135.125.101.209


ns      IN     A        135.125.101.209
www     IN     A        135.125.101.209
b2b     IN     CNAME    www

mail    IN     A        135.125.101.209
@       IN     NS       ns
        IN     A        135.125.101.209
        IN     MX       10  mail
@	IN	TXT	"v=spf1 include:mail.l2-4.ephec-ti.be ip4:135.125.101.209 ~all"

default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2KeZfKbTtVMph8wTnboA68Vy1LDN+LsNb6UfqZrnu+bYudhWrstvS9PDn3rmn2X7AEsDj9IInFPZl69CqxgZsHUpzMSa0ytOlVbm0SdhrJr+DlMfbO3QiOnrcgNTbQbMgdHUOixvzR0JOvbiagEfxGJ94i27qIbFIYQ59UPuman+Bpaa0ycSB3gi9W6wcQxvUvRk51YN7zloxG"
          "RDg5CoTG/7EGIU/ilhYQYAdUvXCvs3Jk92rObGoHJJ9NnSEf9pLTczEFO9ro87jdSSFL1k8q4XYqS8yk9BYBGhq9wFJ6jvL76NNM4BrKZV/O6d2Op4y5fx7p6WCDMgMVDSNInyBQIDAQAB" )  ; ----- DKIM key default for l2-4.ephec-ti.be

_dmarc	in	TXT	("v=DMARC1;p=quarantine;sp=quarantine;pct=100;adkim=r;aspf=r;fo=1;ri=86400;rua=mailto:dmarc@l2-4.ephec-ti.be;ruf=mailto:dmarc@l2-4.ephec-ti.be;rf=afrf")

$INCLUDE Kl2-4.ephec-ti.be.zsk.key
$INCLUDE Kl2-4.ephec-ti.be.ksk.key