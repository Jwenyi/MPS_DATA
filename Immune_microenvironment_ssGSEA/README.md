# Employing Singscore to validate ssGSEA-based results of immune microenvironment

**In the present study, we evaluated the immune cell infiltration of neuroblastoma using ssGSEA and came to the following conclusions:**

> Among 28 immune cellular components, 14 presented significantly reduced infiltration abundance in the MPS-I NBL group (Figure 6 A). These cell types included T helper 2 (Th2) cells (log2 Fold-change: -0.08), neutrophils (-0.09), T cell co-inhibition (-0.11), check-point (-0.11), interstitial dendritic cells(iDCs, -0.11), tumor infiltrating lymphocyte (TIL, -0.13), C-C chemokine receptor (CCR, -0.13), inflammation-promoting (-0.15), T helper 1 (Th1) cells (-0.15),  cytolytic activity (-0.18), mast cells(-0.21), T cell co-stimulation(-0.21), antigen presenting cells (APC) co-stimulation(-0.27), and dendritic cells (DCs, -0.31), as shown in Figure 6 B and Table S11. Additionally, there was a positive correlation between the infiltration abundance of these 14 cellular components and all of these cellular components had a negative correlation with the MPS score, indicating that these immune cell components interact dynamically during NBL progression (Figure 6 C). Collectively, such a significant differential profile in infiltration abundance and dynamic interaction network of key immune cells could indicate the cellular mechanisms underlying the malignant progression of MPS-I NBL, eventually forming a specific immunosuppressive microenvironment that highly potentiates the poor prognosis of MPS-I NBL.

**To further critically validate the results of ssGSEA, we used singscore to reassess the immune cell infiltration of neuroblastoma.**

> Singscore is a simple single-sample gene signature scoring method that uses rank-based statistics to analyze the sample's gene expression profile. It scores the expression activities of gene sets at a single-sample level.

---

## Singscore-evaluated immune cell infiltrations were highly agreed ssGSEA results

Singscore employed the ** gene set and normalization function similar to ssGSEA** analyses to evaluate the immune cell infiltration within neuroblastoma.
