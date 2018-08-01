venv: requirements.txt
	test -L ./venv/bin/python || virtualenv -p python3 ./venv
	./venv/bin/pip install -r requirements.txt

run: venv config.yml
	./venv/bin/python emr_loader.py
