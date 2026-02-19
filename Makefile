VENV = .venv

.PHONY: make install reinstall

make: $(VENV)/bin/activate

$(VENV)/bin/activate:
	python3 -m venv $(VENV)

install: $(VENV)/bin/activate
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install numpy pandas scikit-learn jupyter ipykernel matplotlib seaborn

reinstall:
	rm -rf $(VENV)
	$(MAKE) make
	$(MAKE) install
