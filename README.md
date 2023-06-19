# Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease

This repository contains the source files for the paper titled **Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease**. The study focuses on understanding the factors that contribute to the severity of Alzheimer's disease using multi-omics analysis techniques.

## Abstract
Alzheimer's disease (AD) is a neurodegenerative disorder characterized by progressive cognitive decline and memory loss. The severity of the disease can vary among individuals, but the underlying factors influencing this variability remain poorly understood. In this study, we conducted a comprehensive multi-omics analysis to identify key factors involved in the severity of AD.

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

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Metabolomics.png" alt="Metabolomics" width="900">
</p>

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Metagenomics.png" alt="Metagenomics" width="900">
</p>

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Correlation.png" alt="Correlation" width="900">
</p>

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/ML.png" alt="ML" width="900">
</p>

<p align="center">
  <img src="https://github.com/lingqime/AD-baseline/blob/main/images/Summary.png" alt="Summary" width="900">
</p>

Here it is the overview of the study design. 

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

## Citation
If you find this work useful in your research, please consider citing the paper:

*Authors*, "**Multi-omics Analysis Reveals the Key Factors Involved in the Severity of Alzheimer's Disease**," *Journal Name*, *Volume*(Issue), *Year*, DOI: *insert DOI here*.

## License
The source code and data in this repository are provided under the *insert license type* license. Please refer to the [LICENSE](LICENSE) file for more information.

## Contact
For any further inquiries or collaboration opportunities, please contact the corresponding author:

*Adil Mardinoglu*
*adilm@scilifelab.se*

We appreciate your interest in our work!
