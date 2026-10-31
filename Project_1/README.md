# Automated Job Postings Pipeline (v1) - dbt + DuckDB

[![dbt build & publish](https://github.com/chouaibmouidis-py/DBT_project/actions/workflows/dbt_build.yml/badge.svg)](https://github.com/chouaibmouidis-py/DBT_project/actions/workflows/dbt_build.yml)

![dbt pipeline diagram](img/dbt_pipeline.png)

A public dbt + DuckDB pipeline over real job postings, rebuilt and republished automatically on every push.

- Models the raw postings into tested, documented insight marts
- Publishes the finished warehouse as a GitHub Release — open to anyone, no credentials
- Runs itself on GitHub Actions: every push and every Monday

> **v1 of this pipeline** — everything free and local-friendly: DuckDB as the warehouse, GitHub Actions as the scheduler. [v2](../Project_2/) rebuilds it production-grade on Databricks.

| What I Built | How I Implemented | Where to Look |
| --- | --- | --- |
| **dbt pipeline** | sources → cleaned model → insight marts | [`analytics/models/`](analytics/models/) |
| **Data tests** | `not_null` / `unique` on key columns | [`schema.yml`](analytics/models/schema.yml) |
| **dbt docs** | lineage, descriptions, column tests | [Generate locally](#-docs) |
| **Public CI** | build + test + publish on every push | [Actions workflow](../.github/workflows/dbt_build.yml) |
| **Environments** | local `dev` vs CI `prod` targets | [`ci/profiles.yml`](ci/profiles.yml) |
| **Published warehouse** | one `ATTACH`, queryable by anyone | [Query it](#-query-the-published-warehouse) |

---

## ⚙️ The dbt Pipeline

Raw postings flow through three dbt layers — declared sources → cleaned staging views → insight marts — with tests gating every build. The DAG below is the whole flow:

![dbt dag diagram](img/dag_pipeline.png)

And the dbt features doing the work:

| dbt Feature | How I Used It |
| --- | --- |
| Model dependencies | `ref()` downstream of `job_postings`; dbt resolves order and parallelism |
| Materializations | project default `table`; `job_postings` overridden to `view` |
| Data tests | `not_null` / `unique` in [`schema.yml`](analytics/models/schema.yml) |
| Environments | local `dev` vs CI `prod` targets ([`ci/profiles.yml`](ci/profiles.yml)) |

`dbt build` compiles SQL, materializes models, and fails the run if any test fails — same command locally and in CI.

---

## 🚀 Production

GitHub Actions runs the whole pipeline — no laptop required: [`.github/workflows/dbt_build.yml`](../.github/workflows/dbt_build.yml)

| Trigger | What happens |
| --- | --- |
| Push to `master` | Full rebuild |
| Weekly (Monday) | Scheduled rebuild — pipeline stays fresh |
| Manual (`workflow_dispatch`) | Run button in the Actions UI |

On each run, Actions:

1. Installs deps with `uv`
2. Downloads raw parquet
3. Runs `dbt build` with the committed CI profile (prod)
4. Publishes `prod.duckdb` as a GitHub Release asset

The badge at the top of this README links to the latest runs.

---

## 🦆 Query the published warehouse

No clone required. [Install DuckDB](https://duckdb.org/docs/installation/) (version **1.5.x**, the one used to build the file), then from a `duckdb` session:

```sql
INSTALL httpfs;
LOAD httpfs;

ATTACH 'https://github.com/chouaibmouidis-py/DBT_project/releases/download/warehouse/prod.duckdb' AS jobs (READ_ONLY);
USE jobs;
SHOW TABLES;

SELECT * FROM top_locations;
SELECT * FROM monthly_summary;
```

---

## 📖 Docs

Docs are generated locally with `dbt docs generate` (see [Run it yourself](#-run-it-yourself)).

The site shows:

- The full **lineage graph** (sources → models → marts)
- **Model and column descriptions** from the YAML
- Which columns carry **tests**

---

## 💻 Run it yourself

From the `Project_1/` folder:

```bash
uv sync
uv run python scripts/download_data.py
cd analytics
uv run dbt build --profiles-dir ../ci
```

The CI profile writes to `data/prod.duckdb`. Run dbt from `analytics/`, since model paths are relative to it.

Optional docs locally (still in `analytics/`):

```bash
uv run dbt docs generate --profiles-dir ../ci
uv run dbt docs serve --profiles-dir ../ci
```

---

## 📁 Project layout

```text
Project_1/
├── ci/profiles.yml                   # prod DuckDB target for Actions
├── data/                             # raw + warehouse (gitignored; CI regenerates)
├── img/                              # README diagrams
├── analytics/
│   ├── dbt_project.yml
│   └── models/                       # job_postings, marts, schema.yml, sources.yml
└── scripts/download_data.py          # fetch raw parquet before build
```

The CI workflow lives at the repository root: [`.github/workflows/dbt_build.yml`](../.github/workflows/dbt_build.yml).

---

