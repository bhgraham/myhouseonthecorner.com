build:
	@docker-compose -p myhouseonthecorner build 
run:
	@docker-compose -p myhouseonthecorner up -d blog gallery
stop:
	@docker-compose -p myhouseonthecorner stop
clean:	stop
	@docker-compose -p myhouseonthecorner rm blog gallery
clean-images:
	@docker rmi `docker images -q -f "dangling=true"`

