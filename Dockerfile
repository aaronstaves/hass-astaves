FROM homeassistant/home-assistant:0.80.1

# remove existing python
RUN pip3 uninstall -y pyvera

# install new (dev) version of python_openzwave
RUN pip3 install --no-cache-dir 'pyvera==0.2.45'

# replace component requirement 0.4.9 with 0.4.4
RUN sed -i 's/0.2.44/0.2.45/' /usr/src/app/homeassistant/components/vera.py
RUN sed -i 's/0.2.44/0.2.45/' /usr/src/app/homeassistant/requirements_all.txt
