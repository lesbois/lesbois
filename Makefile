setup_local:
	rm .env.production
	cp .env.example .env
	pip install -r requirements/base.txt
	pip install -r requirements/local.txt

setup_prod:
	rm .env
	cp .env.production.example .env.production
	pip install -r requirements/base.txt
	pip install -r requirements/local.txt
