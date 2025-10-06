FROM python:3.8-slim-bullseye

# Set work directory
WORKDIR /app

# Install dependencies for psycopg2 and system packages
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        dnsutils \
        libpq-dev \
        python3-dev \
        build-essential \
        && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install pip and Python dependencies
COPY requirements.txt .
RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port 8000
EXPOSE 8000

# Run migrations
RUN python3 manage.py migrate

# Start server
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "6", "pygoat.wsgi"]

