#!/bin/bash

echo "íº€ Creating AutoCreator AI structure..."

# Root files
touch .env.example
touch .gitignore
touch docker-compose.yml
touch Makefile
touch README.md


# Backend
mkdir -p backend/{alembic/versions,app/{api/v1,core,db,schemas,orchestrator,agents,services,workers},tests/{test_agents,test_orchestrator}}

touch backend/Dockerfile
touch backend/pyproject.toml


# Backend core files
touch backend/app/__init__.py
touch backend/app/main.py
touch backend/app/config.py


# API
touch backend/app/api/deps.py
touch backend/app/api/v1/{jobs.py,projects.py,assets.py,ws.py}


# Core
touch backend/app/core/{logging.py,security.py,exceptions.py}


# Database
touch backend/app/db/{session.py,models.py}


# Schemas
touch backend/app/schemas/{job.py,asset.py,state.py}


# LangGraph
touch backend/app/orchestrator/{graph.py,state.py,conditions.py,checkpointer.py}


# Agents

mkdir -p backend/app/agents

touch backend/app/agents/base.py


for layer in \
layer_0_input \
layer_1_research \
layer_2_story \
layer_3_visual \
layer_4_vfx \
layer_5_assets \
layer_6_consistency \
layer_7_gen \
layer_8_audio \
layer_9_compositor \
layer_10_qa \
layer_11_memory
do
mkdir -p backend/app/agents/$layer
done


# Services

touch backend/app/services/{llm_router.py,media_fetcher.py,audio_engine.py,video_editor.py,comfyui_client.py,vector_memory.py}


# Workers

touch backend/app/workers/{celery_app.py,pipeline_tasks.py}


# Tests

touch backend/tests/conftest.py


# Frontend

mkdir -p frontend/src/{app/{create,monitor},components/{ui,pipeline,wizard},lib,stores,hooks}

touch frontend/Dockerfile
touch frontend/package.json
touch frontend/tailwind.config.ts
touch frontend/next.config.js

touch frontend/src/app/{layout.tsx,page.tsx}

touch frontend/src/lib/{api.ts,utils.ts,websocket.ts}

touch frontend/src/stores/{pipelineStore.ts,uiStore.ts}


mkdir -p frontend/public


# Prompts

mkdir -p prompts/{research,story,visual}

touch prompts/README.md

touch prompts/research/trend_analysis_v1.yaml

touch prompts/story/{hook_architect_v2.yaml,script_writer_v4.yaml}

touch prompts/visual/scene_planner_v1.yaml


# Infra

mkdir -p infra/{docker/postgres,k8s,scripts}

touch infra/docker/nginx.conf
touch infra/docker/postgres/init.sql


touch infra/scripts/{setup_env.sh,init_db.sh,seed_prompts.py}


# Docs

mkdir -p docs

touch docs/{architecture.md,api.md,agent_specs.md}


echo "âœ… Structure created"

tree -L 4
