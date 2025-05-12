Title: Leveraging High-Resolution LISS IV Data and Machine Learning for Land Use Land Cover Mapping: A Comprehensive Workflow and Model Interpretation

Data was created in the Indo-German Research Unit FOR2432 project: Social-Ecological Systems in the Indian Rural-Urban Interface: Functions, Scales, and Dynamics of Transition (DFG); and The Rural-Urban Interface of Bengaluru-A Space of Transitions in Agriculture, Economics, and Society (DBT). 
We are thankful to the National Remote Sensing Centre (NRSC)/ Indian Space Research Organisation (ISRO) for providing LISS IV satellite datasets. The employed LISS IV satellite data is available at respective databases (e.g., https://bhoonidhi.nrsc.gov.in/bhoonidhi/home.html). 

This data presents a comprehensive workflow for mapping Land Use/Land Cover (LULC) using satellite data. We explore the performance of various machine learning (ML) algorithms under different cross-validation (CV) techniques, interpret the developed models, and evaluate model uncertainty when applied to new geographic areas.

Dataset Components

The dataset includes the following files:

1) Study area:

  	Format: .shp and associated files

	Description: Defines the geographic boundary of the study area. The shapefile is compatible with any GIS software.

1) Sample Point:

	Format: .shp and associated files

	Description: Contains georeferenced sample points labelled with various land use land cover (LULC) classes. These points 	represent the following LULC classes: cropland, built-up, fallow land, forest, plantation, grass/grazing, and waterbodies 	in study area. A total of 3404 sample points (Cropland: 1134, Built-up: 378, Fallow land: 210, Forest: 410, Plantation: 	588, Grass/Grazing: 378, Waterbodies: 306) were initially collected for each land use class.
	
	This data is compatible with any GIS software.

2) Script (Jupyter Notebook):
   
	Format: .ipynb

	Description: This Python notebook outlines the complete workflow, including:
  *Objective 1-ML for LULC:  Implementation of ML models for LULC classification
  *Objective 2 SHAP- ML for LULC: Model interpretation using explainable AI techniques
 *bjective 3 DI_AOA- ML for LULC : Evaluation of model uncertainty when applied to spatially distinct areas
	

Usage: 
The dataset and script are intended for researchers, students, and practitioners working on land use land cover mapping, environmental monitoring, or remote sensing-based classification using machine learning. Users can open the shapefiles in any GIS software (e.g., QGIS, ArcGIS) and run the notebook using Jupyter or a similar Python environment.



