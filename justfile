requirements:
	ansible-galaxy install -r requirements.yaml

bootstrap:
	ansible-playbook --ask-pass "$(ls -1 | grep 'bootstrap' | fzf)"
