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
		A       192.168.30.2


ns1     IN     A        135.125.101.209
www     IN     A        192.168.30.3
www     IN     A        135.125.101.209
b2b     IN     CNAME     www
;mail   IN     A        192.168.30.4
;mail   IN     A        (id public)
