FROM python:3.11-alpine3.18
LABEL maintainer="louzaluana@gmail.com"

# This environment variable is used to control whether Python should
# write bytecode files (.pyc) to disk. 1 = No, 0 = Yes
ENV PYTHONDONTWRITEBYTECODE 1

# This sets Python to immediately display output to the console or other
# output devices without buffering.
# In short, you'll see Python outputs in real-time.
ENV PYTHONUNBUFFERED 1

# Copy the "djangoapp" and "scripts" folders into the container.
COPY djangoapp /djangoapp
COPY scripts /scripts

# Set the working directory to "djangoapp" inside the container.
WORKDIR /djangoapp

# Port 8000 will be available for external connections to the container.
# This is the port we'll use for Django.
EXPOSE 8000

# RUN executes commands in a shell within the container to build the image.
# The result of command execution is stored in the image's file system as a new layer.
# Grouping commands into a single RUN can reduce the number of layers in the image and make it more efficient.
RUN python -m venv /venv && \
  /venv/bin/pip install --upgrade pip && \
  /venv/bin/pip install -r /djangoapp/requirements.txt && \
  /venv/bin/pip install django-allauth && \
  adduser -D -s /bin/sh duser && \
  mkdir -p /data/web/static && \
  mkdir -p /data/web/media && \
  chown -R duser:duser /venv && \
  chown -R duser:duser /data/web/static && \
  chown -R duser:duser /data/web/media && \
  chmod -R 755 /data/web/static && \
  chmod -R 755 /data/web/media && \
  chmod -R +x /scripts

# Add the "scripts" folder and venv/bin to the container's $PATH.
ENV PATH="/scripts:/venv/bin:$PATH"

# Change the user to "duser".
USER duser

# Execute the scripts/commands.sh file.
CMD ["commands.sh"]
