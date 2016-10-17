.PHONY: image release

image:
	docker build --tag pbrisbin/static-hs .

release: image
	docker push pbrisbin/static-hs
