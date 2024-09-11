about-plugin 'https://github.com/openwall/john'

for path in /opt/homebrew/Cellar/john-jumbo/*/share/john/; do
	one_PATH_append "$path"
done
