# syntax=docker/dockerfile:1

FROM python:3.11-slim AS builder
WORKDIR /app

COPY requirements.txt requirements-dev.txt ./
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir -r requirements.txt

FROM builder AS test
COPY . .
RUN pip install --no-cache-dir -r requirements-dev.txt
RUN pytest -q

FROM python:3.11-slim AS runtime
WORKDIR /app
COPY --from=builder /opt/venv /opt/venv
COPY . .
ENV PATH="/opt/venv/bin:$PATH"

RUN useradd -m appuser && chown -R appuser /app
USER appuser

EXPOSE 8001
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
