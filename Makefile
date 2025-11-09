server := 192.168.2.5
remote_dir := /var/lib/docker/volumes/my-site_my-site_data/_data

deploy:
	hugo
	rsync -avz --delete --rsync-path="sudo rsync" public/ $(server):$(remote_dir)/
	ssh $(server) 'docker restart my-site'