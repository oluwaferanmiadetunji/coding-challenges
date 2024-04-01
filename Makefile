run_go:
	cd $(name) && go build main.go && ./main

run_rust:
	cd $(name) && rustc app.rs && ./app

generate_challenge:
	mkdir -p "$(name)"
	chmod +w "$(name)"
	cp -r template/. "$(name)/"

push:
	git add .
	git commit -m "$(commit)"
	git push

.PHONY: run_go run_rust generate_challenge push
