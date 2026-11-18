all: README.md

.PHONY: all README.md

README.md:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Make was run on: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh | tr -d " ")" >> README.md
