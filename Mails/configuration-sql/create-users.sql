INSERT IGNORE INTO `maildb`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'l2-4.ephec-ti.be');

INSERT IGNORE INTO `maildb`.`virtual_users` 
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', 'root', 'quentin@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/quentin/');

INSERT IGNORE INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', 'root', 'mikael@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/mikael/');

INSERT IGNORE INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', 'root', 'cyril@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/cyril/');

INSERT IGNORE INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', 'root', 'b2b@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/b2b/');

INSERT IGNORE INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', 'root', 'contact@l2-4.ephec-ti.be', 'l2-4.ephec-ti.be/contact/');
