ABOUT='https://github.com/direnv/direnv'
DEPS=direnv
RUN_AND_APPEND() { direnv hook bash; }
