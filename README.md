# Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease

This repository contains the source files for the paper titled **Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease**. The study focuses on understanding the factors that contribute to the severity of Alzheimer's disease using multi-omics analysis techniques.

## Snapshot of Our Research

In this study, we conducted a two-phase assessment to evaluate individuals diagnosed with Alzheimer's disease (AD). The first phase involved a baseline assessment on day 0, followed by a follow-up visit on day 84, three months later.

Initially, a total of 87 individuals with AD were included in the study. They were stratified into three groups based on their quartile scores on the Alzheimer's Disease Assessment Scale - Cognitive Subscale (ADAS-Cog). The ADAS-Cog is a numerical value derived from a cognitive test that reflects the severity of cognitive impairment, **with higher scores indicating greater impairment**.

The low group consisted of individuals with ADAS-Cog scores below 15 (N = 20), the moderate group consisted of individuals with scores between 15 and 32 (N = 45), and the high group consisted of individuals with scores equal to or greater than 32 (N = 22).

Out of the initial 87 patients, a total of 59 individuals completed the follow-up visit on day 84.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Overview%20of%20study%20design.png" alt="Overview" width="900">
</p>

A correlation analysis was conducted to examine the association between ADAS-Cog scores and various variables. The findings revealed a significant negative correlation between ADAS-Cog scores and triglyceride levels, as well as ALT levels (p<0.05, Spearman's rank test). This suggests that higher ADAS-Cog scores are associated with lower triglyceride and ALT levels.

Furthermore, a positive correlation was observed between ADAS-Cog scores and age, although the association did not reach statistical significance.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Clinic.png" alt="Clinic" width="900">
</p>

We first aimed to explore the differential plasma inflammation proteins in patients with Alzheimer's disease (AD) who exhibited varying ADAS-Cog scores. The concentration of plasma proteins was measured using normalized protein expression (NPX), represented as an arbitrary unit on a log2 scale derived from cycle threshold values.

We conducted correlation analyses to examine the relationship between protein concentration levels and ADAS-Cog scores, as well as age, BMI, and gender (Figure A). Among the correlated proteins, SKAP1, NEFL, VPS37A, CALCOCO1, and SF3B4 demonstrated the strongest associations with ADAS-Cog scores.

Furthermore, our differential analytical results unveiled significant alterations in the plasma levels of 170 proteins between the high and low ADAS-Cog groups (FDR < 0.05, Kruskal-Wallis test). Among these proteins, 150 were downregulated, while 20 were upregulated (Figure B).

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Proteomics.png" alt="Proteomics" width="900">
</p>

We next conducted group pairwise analyses to identify metabolites that exhibited significant differences among different ADAS-Cog groups. Our results revealed significant variations in 157 metabolites between the high and low ADAS-Cog groups. Similarly, 20 metabolites exhibited significant differences between the high and moderate ADAS-Cog groups, while 61 metabolites were significantly different between the moderate and low ADAS-Cog groups (Figure A).

Of particular interest, we observed noteworthy downregulation of threonate, phosphatidylethanolamines (PEs; specifically 1-stearoyl-2-linoleoyl-GPE (18:0/18:2)* and 1-stearoyl-2-oleoyl-GPE (18:0/18:1)), and diacylglycerols (DAGs; specifically palmitoyl-linoleoyl-glycerol (16:0/18:2) [2]* and oleoyl-linoleoyl-glycerol (18:1/18:2) [2]). Additionally, we observed significant upregulation of plasmalogens (specifically 1-(1-enyl-palmitoyl)-2-palmitoyl-GPC (P-16:0/16:0)* and 1-(1-enyl-palmitoyl)-2-palmitoleoyl-GPC (P-16:0/16:1)*), lactosyl-N-palmitoyl-sphingosine, trans-urocanate, and 2-ethylphenylsulfate among the different ADAS-Cog groups (Figure B).

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Metabolomics.png" alt="Metabolomics" width="900">
</p>

In our study, we explored the potential involvement of the gut and saliva microbiome in Alzheimer's disease (AD) using shotgun metagenomics analysis. We investigated the microbial composition and evaluated dysbiosis within the gut (Figure A) and saliva (Figure B) microbiomes across subjects with varying ADAS-Cog scores.

Our analysis specifically concentrated on examining the differences between high and low ADAS-Cog groups. We aimed to understand the alterations in microbial profiles and identify potential dysbiosis patterns associated with AD severity.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Metagenomics.png" alt="Metagenomics" width="900">
</p>

We employed a network-based approach to capture the complex interplay between various omics data in the context of AD. Our constructed network consisted of 47 nodes representing key clinical and omics features associated with AD.

The nodes included the ADAS-Cog score, six significant clinical features identified through our clinical analysis, and the top 10 features derived from proteomics, metabolomics, gut metagenomics, and saliva metagenomics analyses.

To establish functional relationships among these features, we computed Spearman's correlation coefficients. We visualized the correlations as red and blue edges connecting the corresponding nodes in the network, reflecting positive and negative associations, respectively. Furthermore, the size of each node in the network was proportional to its degree, indicating the number of connections it had with other nodes.

This network-based approach allowed us to capture and visualize the intricate relationships and interactions among diverse omics features associated with AD, providing insights into the complex molecular landscape of the disease.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Correlation.png" alt="Correlation" width="900">
</p>

We evaluated the predictive performance of the XGBoost model by visually comparing the regression results against the actual ADAS-Cog scores for each patient. To identify the most influential features within the XGBoost model, we employed the SHapley Additive exPlanations (SHAP) feature importance algorithm, as described by Lundberg and Lee (2017) (Figure A).

Through our analysis, we identified the top ten predictive parameters, predominantly composed of proteins (SKAP1 and NEFL), metabolites (HVA, glutamate, 1-stearoyl-2-linoleoyl-GPC (18:0/18:2)*, and threonate), and gut/saliva microbiome components (Paraprevotella clara, Corynebacterium matruchotii, and Phocaeicola dorei).

To evaluate the generalizability of our XGBoost model on independent testing cohorts, we assessed the prediction results as depicted in Figure B. The results showcased a high level of predictability, with a mean absolute error of 6.20 (including an extreme outlier). The diagonal dotted line in our visualization represented the ideal output. Our regression model demonstrated low bias when ADAS-Cog scores were 45 or below, indicating accurate prediction of cognitive function in the low, moderate, and partially high ADAS-Cog groups.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/ML.png" alt="ML" width="900">
</p>

The most significant parameters associated with AD are summarized in the following figure.

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Summary.png" alt="Summary" width="900">
</p>

## Citation
If you are interested in exploring more comprehensive research results, we invite you to refer to our original paper:

*Meng, L. et al.*, "**Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease**," *Journal Name*, *Volume*(Issue), *Year*, DOI: *insert DOI here*.

## Repository Structure
The repository is organized as follows:

- **Data**: This directory contains the datasets used in the study, including genomic, transcriptomic, proteomic, and metabolomic data. The data is available in standard formats for easy access and analysis.

- **Code**: This directory contains the code used for data processing, statistical analysis, and generation of results. The code is provided in Jupyter Notebook format for reproducibility.

- **Results**: This directory contains the results of the multi-omics analysis. It includes figures, tables, and supplementary materials that support the findings described in the paper.

- **Documentation**: This directory contains additional documentation, such as a detailed description of the data and code, as well as instructions for reproducing the analysis.

## How to Use
To reproduce the analysis presented in the paper, follow these steps:

1. Clone the repository to your local machine using the following command:

```git clone https://github.com/your-username/repository-name.git```

2. Navigate to the cloned repository:

```cd repository-name```

3. Explore the **Data** directory to familiarize yourself with the datasets used in the study.

4. Open the Jupyter Notebooks in the **Code** directory to view the code used for data processing, statistical analysis, and generating the results. Execute the cells in the notebooks sequentially to reproduce the analysis step by step.

5. Refer to the **Results** directory for the generated figures, tables, and supplementary materials that support the findings described in the paper.

6. If you encounter any issues or have questions, please don't hesitate to reach out to the authors listed in the paper.

## License
The source code and data in this repository are provided under the *insert license type* license. Please refer to the [LICENSE](LICENSE) file for more information.

## Contact
For any further inquiries or collaboration opportunities, please contact the corresponding author:

*Adil Mardinoglu*
*adilm@scilifelab.se*

We appreciate your interest in our work!
