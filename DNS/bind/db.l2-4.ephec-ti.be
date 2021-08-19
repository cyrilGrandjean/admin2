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
@       IN     TXT      "v=spf1 include:mail.l2-4.ephec-ti.be ip4:135.125.101.209"

default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyCHFHgIvQB8UEk1JicVkrUIl1xpGyx7TduCnEck7c9dcnd4d9b2WV4r8x2KHGRhW+BvlPYIHpPpaZgWRnJk6UTtp120Fxhgh8fLEKZj8luL10kuaD0ncLrWKrqBhkv0f2me/mv+MnUhKNZ9ZOEcXnh2FYGmoPUYp8VPo1qSFCre3Qu56WYzhZzFRoh0TTBFBvpLm3I18uHFUdQ"
          "FDtqldgSUuk8/ZkD8RbIckT2zLx8Zglim+NDRDr593XNmSn0D3ImmJUe+8rmBdyCvrh+78DU/qx1SHqrFMW+lGjQPKfXc4HpQSs/8NRVyCfG6ece8VItjTJ9OB1yunDmCB5wXN6QIDAQAB" )  ; ----- DKIM key default for l2-4.ephec-ti.be
_dmarc  IN     TXT      "v=DMARC1; p=none; pct=100; rua=mailto:mikael@l2-4.ephec-ti.be"

135.125.101.209.in-addr.arpa.   IN      PTR     mail.l2-4.ephec-ti.be

$INCLUDE Kl2-4.ephec-ti.be.zsk.key
$INCLUDE Kl2-4.ephec-ti.be.ksk.key
