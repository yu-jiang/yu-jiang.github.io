---
layout: default
---

# Simulink Control Design

Below is a list of new features or enhancements I contributed to [Simulink Control Design](https://www.mathworks.com/products/simcontrol/) at MathWorks.

<div class="infoblock">
<div class="blockcontent">
<p> <strong>Disclaimer:</strong> This page is not part of the official release notes or any official documentation of Simulink Control Design. Information given below is quoted from the publicly accessible
  <a href="https://www.mathworks.com/help/slcontrol/release-notes.html">SCD Release Notes</a>. If there is any discrepency, please refer to the official release notes.
  .</p>
</div></div>


## R2017a

* Custom Constraints and Objective Functions for Trimming Simulink Models: Calculate operating points with increased flexibility [[See more]](https://www.mathworks.com/help/slcontrol/ug/compute-operating-points-using-custom-constraints-and-objective-functions.html)
* Bounds on State Derivatives During Trimming: Constrain derivatives of model states that are not at steady state [[See more]](https://www.mathworks.com/help/slcontrol/ug/steady-state-operating-points-from-state-specifications.html#bvn6bv2) [[Doc:operspec]](https://www.mathworks.com/help/slcontrol/ug/operspec.html)
* addoutputspec Command: Add output specification to multiple operating point specification objects in an array [[Doc:addoutputspec]](https://www.mathworks.com/help/slcontrol/ug/addoutputspec.html)


## R2016b

* Batch Trimming for Parameter Variation: Vary model parameters, and compute multiple operating points using a single model compilation [[See more]](https://www.mathworks.com/help/slcontrol/ug/batch-compute-steady-state-operating-points-for-parameter-variation.html)
* Improved LPV System Construction: Compute operating point offsets for model inputs, outputs, states, and state derivatives during linearization [[See more]](https://www.mathworks.com/help/slcontrol/ug/getoffsetsforlpv.html)
* operspec Command: Create array of operating point specification objects [[See more]](https://www.mathworks.com/help/slcontrol/ug/designing-a-family-of-pid-controllers-for-multiple-operating-points.html)
