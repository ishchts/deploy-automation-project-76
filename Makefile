install:
	ansible-galaxy install -r requirements.yml

create-selfsigned-tsl:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=localhost" -keyout files/nginx.key -out files/nginx.crt

yc-instance-list:
	yc compute instance list

deploy:
	ansible-playbook --ask-vault-pass playbook.yml