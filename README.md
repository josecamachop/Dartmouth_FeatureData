
# Dartmouth Feature data 

This repository contains the feature data variants of the Dartmouth data used in the following papers:

- Camacho, J., Wasielewska, K., Bro R., Kotz, D., Interpretable Learning in Multivariate Big Data Analysis for Network Monitoring. Preprint arXiv:1907.02677 [cs.NI]

- Camacho, J., Wasielewska, K., Bro R., Kotz, D.,  Extracting Knowledge from Network Data: Multivariate Visualizations of Network Analytics based on Matrix Factorization, Submitted to ACM Internet Measurement Conference, 2023 

Please, make sure to reference the first paper when using the data, and also the original paper of the Dartmouth dataset:

- Camacho, J. , McDonald, C., Peterson, R., Zhou, X. Longitudinal Analysis of a Campus Wi-Fi Network . Computer Networks.   2020, 179, 107103.

Data is provided in Malab format, csv format and excel format.

Contact person: José Camacho (josecamacho@ugr.es)

Last modification of this document: 05/Jun/23


## Repository organization

The folder is organized as follows:

- folder csv: Contains the feature data in csv format.

- folder excel: Contains the feature data in excelformat.

- folder matlab: Contains the feature data in Matlab format.

- dataDartmouth.m: matlab script to generate the csv and excel files

- README.md: this document.


## Data description following the Matlab data
 
x: [2548 x 92] feature data

xlog_2cent: [2548 x 92] log transformed feature data, double centered

obs_l: [1 x 2548] observation label (timestamp)

var_l: [1 x 92] feature label

classy: [2548 x 4] classes for the observations: year, quarter, week, workday/weekend. 

