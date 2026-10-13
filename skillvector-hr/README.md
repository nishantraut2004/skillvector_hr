# SkillVector HR

AI-powered resume screening backend for HR recruiters.

The SkillVector HR project demonstrates the efficacy of a hybrid AI architecture in modernizing recruitment workflows by harmonizing deterministic NLP for precise fact extraction with probabilistic Large Language Models (LLMs) for semantic reasoning.

## Quick Start

### 1. Database Setup (PostgreSQL with `pgvector`)
Start the PostgreSQL container with `pgvector`:
```bash
docker run -d --name skillvector-postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=skillvector_hr \
  -p 5432:5432 \
  pgvector/pgvector:pg16
```

### 2. Environment Setup
Create and activate the virtual environment:
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python -m spacy download en_core_web_sm
```

### 3. Environment Variables
Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```
Ensure your database URI and port are set:
```env
DATABASE_URL=postgresql://postgres:postgres@localhost:5432/skillvector_hr
SECRET_KEY=dev-secret-key-skillvector-2026
FLASK_RUN_PORT=5001
```

### 4. Database Migrations & Seeding
```bash
flask db upgrade
python scripts/seed_db.py
```

### 5. Run the Application
```bash
flask run -p 5001
```
Open **[http://127.0.0.1:5001](http://127.0.0.1:5001)** in your browser.

- **Default Recruiter Username:** `recruiter`
- **Default Password:** `password`


