FROM python:3.11-alpine3.18
LABEL maintainer="louzaluana@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY djangoapp /djangoapp
COPY scripts /scripts

WORKDIR /djangoapp

EXPOSE 8000

RUN apk add --no-cache build-base python3-dev musl-dev \
 && python -m venv /venv \
 && /venv/bin/pip install --upgrade pip \
 && /venv/bin/pip install -r /djangoapp/requirements.txt \
 && /venv/bin/pip install django-allauth \
 && /venv/bin/pip install pyOpenSSL \
 && adduser -D -s /bin/sh duser \
 && mkdir -p /data/web/static \
 && mkdir -p /data/web/media \
 && chown -R duser:duser /venv \
 && chown -R duser:duser /data/web/static \
 && chown -R duser:duser /data/web/media \
 && chmod -R 755 /data/web/static \
 && chmod -R 755 /data/web/media \
 && chmod -R +x /scripts

ENV PATH="/scripts:/venv/bin:$PATH"

USER duser

CMD ["/bin/sh", "-c", "/scripts/commands.sh"]
