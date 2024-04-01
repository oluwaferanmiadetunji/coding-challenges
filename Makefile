run:
	cd ./$(name)

generate_challenge:
	mkdir -p "$(name)"
	touch "$(name)/main.go"
	touch "$(name)/main.rs"

push:
	git add .
	git commit -m "$(commit)"
	git push

.PHONY: run generate_challenge push
