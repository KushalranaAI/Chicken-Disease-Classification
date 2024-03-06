# Chicken Disease Classification Project

## Overview

This project is dedicated to achieving precise classification of chicken diseases, with a specific emphasis on differentiating between cocci-infected and healthy states using a machine learning model. The codebase follows a meticulous and modular approach, encompassing key components such as a robust data pipeline, creation of a foundational base model, model training, and seamless Dockerized deployment. The incorporation of Data Version Control (DVC) serves as a pivotal tool for managing and versioning data, ensuring the reproducibility of results.

## Project Structure

```bash
|-- .dvc
|-- .github/
|   |-- workflows/
|       |-- docker-image.yml
|-- .vscode/
|-- artifacts/  (this folder is not visible due to .gitignore feature)
|   |-- data_ingestion/
|   |-- prepare_base_model/
|   |-- training/
|-- config/
|   |-- config.yaml
|-- research/  (find a colab files use to experiment the project)
|-- src/
|   |-- cnnClassifier/
|       |-- __pycache__/
|       |-- components/
|       |-- config/
|       |-- constants/
|       |-- entity/
|       |-- pipeline/
|       |-- utils/
|       |-- __init__.py
|   |-- cnnClassifier.egg-info/
|-- templates/
|   |-- index.html
|-- .dvcignore
|-- .gitignore
|-- app.py
|-- Dockerfile
|-- dvc.lock
|-- dvc.yaml
|-- inputImage.jpg
|-- LICENSE
|-- main.py
|-- params.yaml
|-- README.md
|-- requirements.txt
|-- scores.json
|-- setup.py
|-- template.py
```

## Components

### Data Pipeline
- Located in `artifacts/data_ingestion/`, this pipeline manages data ingestion and processing.
- Utilizes DVC for versioning and tracking data changes.

#### Base Model
- Found in `artifacts/prepare_base_model/`, this module contains the base model for chicken disease classification.

#### Model Training
- Scripts for training the model are in `artifacts/training/`.

#### CNN Classifier
- The core machine learning model implementation resides in `src/cnnClassifier/`.

#### Docker Image
- The Dockerfile for creating a Docker image is at the root of the project.

#### Template
- The project includes a template component, located in `src/cnnClassifier/components/template.py`, designed to generate a basic template for every machine learning project. This component provides a structured starting point, incorporating essential elements for data handling, model architecture, training, and evaluation. Utilizing this template simplifies the initiation of new projects, ensuring a consistent and organized foundation for machine learning development.

#### Setup.py
- The setup.py file serves a crucial role in Python projects, acting as a configuration script for packaging and distribution. It outlines metadata about the project and its dependencies, facilitating easy installation and distribution. This file is particularly essential when sharing your machine learning project with others or when deploying it in various environments.

#### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/kushalranaai/Chicken-Disease-Classification.git
   cd Chicken-Disease-Classification
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

#### DVC init
it's run only git bash (be sure that you have install and use it)
  ```bash
  dvc init
  ```

#### Data Ingestion
- Run the data ingestion pipeline:
  ```bash
  dvc repro artifacts/data_ingestion/
  ```

#### Model Training
- Train the model using the prepared data:
  ```bash
  dvc repro artifacts/training/
  ```

#### Docker Image
- Build the Docker image:
  ```bash
  docker build -t your-docker-username/your-project-name:latest .
  ```

## Deploy on Render

To deploy the project on Render using the Docker image, follow these steps:

1. Push your project to a GitHub repository.

2. Create a Render account and log in.

3. Create a new web service on Render.

4. Configure the service to use the Docker image hosted on Docker Hub.

5. Set any necessary environment variables.

6. Deploy the service on Render.

7. Access the deployed application through the provided URL.


## Docker Hub Image
The Docker image for this project is hosted on Docker Hub. You can pull the image using the following command:

Pull the Docker image from Docker Hub:
```bash
docker pull kushalranaai/chicken-disease-classification
```
