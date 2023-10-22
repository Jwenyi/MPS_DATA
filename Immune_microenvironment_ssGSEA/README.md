# Employing Singscore to validate ssGSEA-based results of immune microenvironment

**In the present study, we evaluated the immune cell infiltration of NBL using ssGSEA and came to the following conclusions:**

> Among 28 immune cellular components, 14 presented significantly reduced infiltration abundance in the MPS-I NBL group (Figure 6 A). These cell types included T helper 2 (Th2) cells (log2 Fold-change: -0.08), neutrophils (-0.09), T cell co-inhibition (-0.11), check-point (-0.11), interstitial dendritic cells(iDCs, -0.11), tumor infiltrating lymphocyte (TIL, -0.13), C-C chemokine receptor (CCR, -0.13), inflammation-promoting (-0.15), T helper 1 (Th1) cells (-0.15),  cytolytic activity (-0.18), mast cells(-0.21), T cell co-stimulation(-0.21), antigen presenting cells (APC) co-stimulation(-0.27), and dendritic cells (DCs, -0.31), as shown in Figure 6 B and Table S11. Additionally, there was a positive correlation between the infiltration abundance of these 14 cellular components and all of these cellular components had a negative correlation with the MPS score, indicating that these immune cell components interact dynamically during NBL progression (Figure 6 C). Collectively, such a significant differential profile in infiltration abundance and dynamic interaction network of key immune cells could indicate the cellular mechanisms underlying the malignant progression of MPS-I NBL, eventually forming a specific immunosuppressive microenvironment that highly potentiates the poor prognosis of MPS-I NBL.

**To further critically validate the results of ssGSEA, we used singscore to reassess the immune cell infiltration of neuroblastoma.**

> Singscore is a simple single-sample gene signature scoring method that uses rank-based statistics to analyze the sample's gene expression profile. It scores the expression activities of gene sets at a single-sample level.

---

## Singscore confirmed the immunosuppressive microenvironment of MPS-I NBL, which is similar to ssGSEA results

Utilizing a gene set and normalization function analogous to those employed in ssGSEA analyses, Singscore meticulously evaluated the infiltration of immune cells within neuroblastoma. Our findings indicate a marked similarity between the immune cell infiltration profiles of neuroblastoma as discerned through Singscore and ssGSEA. Out of the 14 differentially infiltrated immune cell types identified via ssGSEA, Singscore was able to confirm 13 **(Table. 1 and Table. 2)**. Only `Mast_cells `could not be identified.

**Table. 1** ssGSEA results

| Cell                | MeanTrain.high | MeanTrain.low | log2FC.Train | pTrain      | WTrain  | pTest       | WTest | MeanTest.high | MeanTest.low | log2FC.Test |
|---------------------|----------------|---------------|--------------|-------------|---------|-------------|-------|---------------|--------------|--------------|
| APC_co_stimulation  | 0.4514         | 0.5458        | -0.2740      | 7.26E-13    | 6724    | 4.59E-12    | 7056  | 0.4450        | 0.5384       | -0.2748      |
| CCR                 | 0.4341         | 0.4750        | -0.1297      | 9.99E-13    | 6760    | 3.15E-10    | 7574  | 0.4324        | 0.4695       | -0.1190      |
| Check-point         | 0.4053         | 0.4363        | -0.1063      | 5.57E-07    | 8506    | 0.000153    | 9645  | 0.4063        | 0.4298       | -0.0809      |
| Cytolytic_activity  | 0.4732         | 0.5355        | -0.1784      | 1.67E-05    | 9082    | 6.63E-05    | 9477  | 0.4685        | 0.5367       | -0.1962      |
| DCs                 | 0.3545         | 0.4391        | -0.3085      | 1.29E-07    | 8280    | 3.19E-06    | 8924  | 0.3528        | 0.4262       | -0.2729      |
| iDCs                | 0.1911         | 0.2066        | -0.1131      | 0.002849    | 10167.5 | 0.039349    | 11071.5| 0.2012        | 0.1907       | 0.0780       |
| Inflammation-promoting | 0.4753      | 0.5277        | -0.1510      | 1.95E-05    | 9110    | 0.000762    | 9992  | 0.4719        | 0.5171       | -0.1320      |
| Mast_cells          | 0.2423         | 0.2808        | -0.2128      | 0.040060    | 10932   | 0.014358    | 10751 | 0.2361        | 0.2705       | -0.1965      |
| Neutrophils         | 0.5015         | 0.5326        | -0.0870      | 2.80E-08    | 8056    | 2.84E-06    | 8904  | 0.5005        | 0.5276       | -0.0758      |
| T_cell_co-inhibition | 0.3649        | 0.3925        | -0.1052      | 9.94E-05    | 9421    | 0.001504    | 10151 | 0.3606        | 0.3812       | -0.0803      |
| T_cell_co-stimulation | 0.4004        | 0.4645        | -0.2142      | 2.97E-09    | 7744    | 9.77E-09    | 8034  | 0.3916        | 0.4563       | -0.2206      |
| Th1_cells           | 0.3531         | 0.3921        | -0.1512      | 7.08E-05    | 9354    | 7.67E-06    | 9076  | 0.3397        | 0.3876       | -0.1904      |
| Th2_cells           | 0.5130         | 0.5434        | -0.0832      | 0.001607    | 10027   | 0.000411    | 9854  | 0.5090        | 0.5405       | -0.0868      |
| TIL                 | 0.4763         | 0.5201        | -0.1270      | 2.48E-06    | 8749    | 0.000173    | 9670  | 0.4727        | 0.5062       | -0.0988      |


**Table. 2** Singscore results

| Cell                 | MeanTrain.high | MeanTrain.low | log2FC.Train | pTrain      | WTrain  | pTest       | WTest | MeanTest.high | MeanTest.low | log2FC.Test  |
|----------------------|----------------|---------------|--------------|-------------|---------|-------------|-------|---------------|--------------|--------------|
| APC_co_stimulation   | 0.4379         | 0.5233        | -0.2570      | 4.38E-12    | 6929.5  | 2.63E-11    | 7264  | 0.4322        | 0.5153       | -0.2538      |
| CCR                  | 0.3878         | 0.4265        | -0.1370      | 5.27E-12    | 6951    | 1.85E-09    | 7806  | 0.3865        | 0.4202       | -0.1204      |
| Check-point          | 0.3900         | 0.4208        | -0.1098      | 1.91E-06    | 8706    | 0.000317    | 9798  | 0.3908        | 0.4140       | -0.0833      |
| Cytolytic_activity   | 0.4618         | 0.5136        | -0.1536      | 4.82E-05    | 9279.5  | 0.000267    | 9761  | 0.4612        | 0.5148       | -0.1585      |
| DCs                  | 0.3485         | 0.4251        | -0.2865      | 3.11E-06    | 8787    | 6.84E-05    | 9483  | 0.3487        | 0.4128       | -0.2434      |
| iDCs                 | 0.2024         | 0.2299        | -0.1837      | 0.002679    | 10152.5 | 0.037736    | 11057.5| 0.2147        | 0.2143       | 0.0030       |
| Inflammation-promoting| 0.4561        | 0.5051        | -0.1470      | 8.46E-05    | 9389    | 0.002681    | 10293 | 0.4534        | 0.4933       | -0.1218      |
| Neutrophils          | 0.4554         | 0.4813        | -0.0797      | 2.89E-06    | 8775    | 1.22E-05    | 9159.5| 0.4526        | 0.4772       | -0.0764      |
| T_cell_co-inhibition | 0.3581         | 0.3870        | -0.1118      | 0.000141    | 9491.5  | 0.006026    | 10504.5| 0.3540        | 0.3734       | -0.0769      |
| T_cell_co-stimulation| 0.3959         | 0.4587        | -0.2122      | 4.63E-09    | 7804    | 2.69E-08    | 8178  | 0.3880        | 0.4503       | -0.2150      |
| Th1_cells            | 0.3319         | 0.3652        | -0.1382      | 0.001336    | 9983    | 0.000461    | 9879.5| 0.3192        | 0.3598       | -0.1727      |
| Th2_cells            | 0.4520         | 0.4882        | -0.1113      | 0.000411    | 9716    | 0.000929    | 10037.5| 0.4501        | 0.4824       | -0.1001      |
| TIL                  | 0.4683         | 0.5095        | -0.1215      | 9.69E-06    | 8984    | 0.000396    | 9846  | 0.4645        | 0.4952       | -0.0924      |
