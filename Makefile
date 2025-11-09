server = root@192.168.2.7
remote_dir = /var/www/my-site

deploy:
	hugo && \
	rsync -avz --delete public/ $(server):$(remote_dir)