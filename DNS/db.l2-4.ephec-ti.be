$ORIGIN l2-4.ephec-ti.be.    ; default zone domain
$TTL 86400                   ; default time to live

@ IN SOA l2-4.ephec-ti.be. admin.l2-4.ephec-ti.be. (
        2021032801  ; serial number
        21600       ; Refresh
        3600        ; Retry
        604800      ; Expire
        86400       ; Min TTL
        )

        NS      ns1.l2-4.ephec-ti.be.
        MX      10 mail.l2-4.ephec-ti.be.
		A       192.168.0.3


ns1   IN     A        127.0.0.1
www   IN     A        192.168.0.3
;www   IN     A        public ip
b2b   IN     CNAME    www
;mail  IN     A       192.168.0.X?
;mail  IN     A       public ip