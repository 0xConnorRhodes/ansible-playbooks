requirements:
	ansible-galaxy install -r requirements.yml

bootstrap:
	ansible-playbook --ask-pass "$(ls -1 | grep 'bootstrap' | fzf)"
