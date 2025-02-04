FROM python:3.13-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
COPY . . 

WORKDIR /
RUN uv sync --frozen --no-cache

CMD ["/.venv/bin/fastapi", "run", "main.py", "--port", "80", "--host", "0.0.0.0"]