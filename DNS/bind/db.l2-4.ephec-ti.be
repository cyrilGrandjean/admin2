$ORIGIN l2-4.ephec-ti.be.     ;designates the start of this zone file in the namespace
$TTL 86400                   ; default time to live

@ IN SOA l2-4.ephec-ti.be. admin.l2-4.ephec-ti.be. (
        2021032801  ; serial number
        21600       ; Refresh
        3600        ; Retry
        1209600     ; Expire
        86400       ; Min TTL
        )

@                   IN                  NS                  ns.l2-4.ephec-ti.be.
@                   IN                  MX                  10 mail.l2-4.ephec-ti.be.
@                   IN                  A                   135.125.101.209


ns                  IN                  A                   135.125.101.209

;WEB
www                 IN                  A                   135.125.101.209
b2b                 IN                  CNAME               www

;mail
mail                IN                  A                   135.125.101.209

;voip
sip                 IN                  A                   135.125.101.209
_sip._udp   SRV 0 0 5060 sip
_sip._tcp   SRV 0 0 5060 sip

$INCLUDE Kl2-4.ephec-ti.be.zsk.key
$INCLUDE Kl2-4.ephec-ti.be.ksk.key
