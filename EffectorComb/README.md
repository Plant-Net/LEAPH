# EffectorComb - Self Organizing Map ShinyApp
This shiny app provides a more detailed overview of the putative effectors predicted by LEAPH at a feature-by-feature scale.
The app's ```Download subDataset``` tab allows users to retrieve information on proteins belonging to one or more cells on the map, while the last one, ```Map your proteins!```, allows users to map their just-predicted proteins on the background SOM landscape.

## Required packages
- shiny (used here v1.8.0)
- DT (used here v0.29)
- readr (used here v2.1.4)
- aweSOM (used here v1.3)
- bslib (used here v0.5.1)
  
## Usage
**Command line** 
```
R -e "shiny::runApp('./')"
```
The app will directly read, as inputs, the 2 files contained in ```../essentials/EC_*.tsv``` 
**Note** if the document converter ```pandoc``` is not installed in your system, you can run into some issues in downloading the images from EffectorComb. In this case please either:
- install it from https://github.com/jgm/pandoc/releases/tag/3.1.13
- run the app directly from Rstudio
- use the following singularity container. 

**Using the provided singularity container**
Please use the provided definition file to build up the ```EffectorComb.simg``` container. This step will take a while.
```
sudo singularity build EffectorComb.simg ./EffectorComb.recipe
```
Then use the container as follows: 

```
singularity exec ./EffectorComb.simg R -e "shiny::runApp('./')"
```
**Copy and paste the URL written on terminal in your browser**

## Use the ```Map your proteins!``` section
Please, before continuing, use the Python script provided here, ```EC_map_new_candidates.py```, to scale the actual predictions accordingly to be mapped to the background SOM.

## Required packages
- pandas v1.2.4 (or later)
- numpy v1.20.1 (or later)
  
```
python3.8.10 EC_map_new_candidates.py -ifl ../essentials/unify_proteomes_predictions.csv -i /path/to/just_created_feature_table.tsv -lp /path/to/LEAPH1.0_predictions.tsv -o ./ -p prefix
```
As for LEAPH predictions, you can verify the usability of the Mapping, by using the DEMO predictions. Results will be saved in ```-o ../LEAPH_results``` created during LEAPH prediction process. Run the following command in the current directory:
```
python3.8.10 EC_map_new_candidates.py -ifl ../essentials/unify_proteomes_predictions.csv -i ../LEAPH_results/feature_table_DEMO.tsv -lp ../LEAPH_results/DEMO_LEAPH1.0_predictions.tsv -p DEMO
```
**Then, upload the obtained table in the corresponding section in EffectorComb, ```Map your proteins!/Browse...```. Eventually, reload the page if the SOM doesn't show itself**
