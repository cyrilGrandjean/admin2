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
        IN      MX  10  mail.l2-4.ephec-ti.be.
ns      IN      A       135.125.101.209

        IN      MX  10  mail

ns      IN     A        135.125.101.209
www     IN     A        135.125.101.209
b2b     IN     CNAME    www

mail    IN     A        135.125.101.209
smtp    IN     CNAME    mail
@       IN     NS       ns
        IN     A        135.125.101.209


$INCLUDE Kl2-4.ephec-ti.be.zsk.key
$INCLUDE Kl2-4.ephec-ti.be.ksk.key
