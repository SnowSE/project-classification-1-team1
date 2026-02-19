VENV = .venv

.PHONY: install clean reinstall

$(VENV)/bin/activate:
	python3 -m venv $(VENV)

install: $(VENV)/bin/activate
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install numpy pandas scikit-learn jupyter ipykernel matplotlib seaborn

clean:
	rm -rf $(VENV)

reinstall: clean install
