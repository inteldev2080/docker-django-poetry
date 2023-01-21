# will automatically install curl, poetry in docker container and avoids venv creation for poetry
FROM yashmarmat/dj-py-poetry

# Set work directory
WORKDIR /app

COPY pyproject.toml poetry.lock /app/

RUN poetry install

# Copy project
COPY . .

