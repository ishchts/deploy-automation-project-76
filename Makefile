setup:
	ansible-playbook -i inventory.ini playbook.yml

create-selfsigned-tsl:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=localhost" -keyout files/nginx.key -out files/nginx.crt
