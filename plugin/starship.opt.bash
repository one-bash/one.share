ABOUT='Awesome shell prompt. https://starship.rs/'
DEPS=starship
RUN_AND_APPEND() {
	starship init bash
	printf '\n'
}
