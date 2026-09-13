# CSE-420: Digital Image Processing Lab

**Department of Computer Science and Engineering**  
**Dhaka International University (DIU)**

---

## 👨‍💻 Student & Course Information

- **Course Code:** CSE-420
- **Course Title:** Image Processing Lab
- **Semester:** 12th (Summer 2026)
- **Student Name:** Rasheduzzaman Rakib
- **Registration No:** CS-D-77-22-120080
- **Roll No:** 37
- **Batch:** D-77
- **Email:** rasheduzzaman.rakib@students.diu.ac
- **Course Instructor:** Md. Muksit Ul Islam, Assistant Professor, Department of CSE, DIU

---

## 📌 Repository Overview

This repository contains all MATLAB source codes (`.m`), generated output figures (`.png`), and complete LaTeX lab reports (`.tex`) for the **CSE-420 Digital Image Processing Lab** course.

Each lab folder (`LAB1` through `LAB6`) is organized with its executable MATLAB code, captured experimental figures, and corresponding publication-ready LaTeX lab report following the official Dhaka International University format.

---

## 📂 Repository Directory Structure

```text
cse-420-image-processing-lab/
├── README.md                 # Repository documentation and comprehensive task guide
├── lab_task.txt              # Lab curriculum task list
├── LAB1/
│   ├── lab_01.m              # Basic image processing operations script
│   ├── Figure_1.png          # Output figure: 9-operation subplot grid
│   └── lab_report_01.tex     # Lab report 01 in LaTeX
├── LAB2/
│   ├── lab_02.m              # Image noise generation script (imnoise & manual)
│   ├── Figure_1.png          # Output figure: original + 7 noise variations
│   ├── class_code/           # Lecture notes & reference snippets
│   └── lab_report_02.tex     # Lab report 02 in LaTeX
├── LAB3/
│   ├── lab_03.m              # Pixel neighbourhood and distance metric calculations
│   ├── Figure_1.png          # Output figure: pixel matrix and neighbor visualization
│   ├── class_code/           # Lecture notes & reference snippets
│   └── lab_report_03.tex     # Lab report 03 in LaTeX
├── LAB4/
│   ├── lab_04.m              # 2D FFT, Ideal LPF/HPF, and bit plane slicing
│   ├── Figure_1.png          # Output figure: FFT spectrum, filter masks, and filtered images
│   ├── Figure_2.png          # Output figure: 8-bit plane decomposition (peppers.png)
│   ├── class_code/           # Lecture notes & reference snippets
│   └── lab_report_04.tex     # Lab report 04 in LaTeX
├── LAB5/
│   ├── lab_05.m              # Mathematical morphology, resizing, and Otsu segmentation
│   ├── Figure_1.png          # Output figure: dilation, erosion, opening, and closing
│   ├── Figure_2.png          # Output figure: nearest neighbor, bilinear, and Otsu segmentation
│   ├── class_code/           # Lecture notes & reference snippets
│   └── lab_report_05.tex     # Lab report 05 in LaTeX
└── LAB6/
    ├── lab_06.m              # Edge detection, K-means, CC labeling, and thresholding
    ├── Figure_1.png          # Output figure: Canny, Prewitt, K-means clusters, object masking
    ├── Figure_2.png          # Output figure: manual threshold, connected components, Otsu
    ├── class_code/           # Lecture notes & reference snippets
    └── lab_report_06.tex     # Lab report 06 in LaTeX
```

---

## 🔬 Detailed Lab Breakdown

### [LAB 01: Basic Image Processing Operations in MATLAB](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB1/)
- **Objectives:** Learn foundational spatial domain operations and array manipulations on standard digital images.
- **Key Topics & Operations:**
  1. **Image Reading & Display:** Loading RGB image (`peppers.png`) with `imread` and rendering with `imshow`.
  2. **Color Conversion:** Converting 3-channel RGB to single-channel intensity image with `rgb2gray`.
  3. **Binary Binarization:** Converting grayscale image to binary using `im2bw` with default cutoff.
  4. **Image Resizing:** Downscaling and upscaling dimensions using `imresize`.
  5. **Intensity Histogram:** Generating and plotting luminance distribution using `imhist`.
  6. **Region of Interest (Crop):** Spatial cropping using array slicing `I(1:150, 1:150, :)`.
  7. **Spatial Transformation:** Rotating image 90° counter-clockwise using `imrotate`.
  8. **Brightness Adjustment:** Direct pixel arithmetic intensity scaling (`I + 50`).
  9. **Photographic Negative:** Computing inverse intensity complement (`255 - I`).
- **MATLAB Code:** [`LAB1/lab_01.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB1/lab_01.m)
- **LaTeX Report:** [`LAB1/lab_report_01.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB1/lab_report_01.tex)

---

### [LAB 02: Image Noise Addition Using `imnoise` and Manual Methods](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB2/)
- **Objectives:** Simulate degradation models by introducing sensor and transmission noise into digital images.
- **Key Topics & Operations:**
  1. **Gaussian Noise (`imnoise`):** Additive zero-mean Gaussian noise modeling thermal sensor noise.
  2. **Salt & Pepper Noise (`imnoise`):** Impulse noise representing sparse white and black bit corruption.
  3. **Poisson Noise (`imnoise`):** Photon counting shot noise proportional to pixel intensity.
  4. **Manual Rayleigh Noise:** Simulating non-symmetric fading noise using `raylrnd` and normalizing.
  5. **Manual Gamma (Erlang) Noise:** Simulating multi-look radar speckle noise using `gamrnd`.
  6. **Manual Exponential Noise:** Generating negative exponential random variates via `exprnd`.
  7. **Manual Uniform Noise:** Generating uniformly distributed additive noise across $[0, 1]$ via `rand`.
- **MATLAB Code:** [`LAB2/lab_02.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB2/lab_02.m)
- **LaTeX Report:** [`LAB2/lab_report_02.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB2/lab_report_02.tex)

---

### [LAB 03: Pixel Neighbourhood and Distance Measures in MATLAB](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB3/)
- **Objectives:** Analyze spatial proximity, pixel adjacency, and geometric distance metrics on digital grid lattices.
- **Key Topics & Operations:**
  1. **Pixel Adjacency & Neighbourhoods:**
     - **4-Neighbours ($N_4(p)$):** Orthogonal adjacent pixels $(x\pm1, y)$ and $(x, y\pm1)$.
     - **Diagonal Neighbours ($N_D(p)$):** Corner adjacent pixels $(x\pm1, y\pm1)$.
     - **8-Neighbours ($N_8(p)$):** Union of 4-neighbours and diagonal neighbours ($N_4 \cup N_D$).
  2. **Distance Metrics:**
     - **Euclidean Distance ($D_e$):** Shortest straight-line distance $\sqrt{(x_1 - x_2)^2 + (y_1 - y_2)^2}$.
     - **City Block / Manhattan Distance ($D_4$):** Grid-constrained path distance $|x_1 - x_2| + |y_1 - y_2|$.
     - **Chessboard Distance ($D_8$):** Chebyshev metric distance $\max(|x_1 - x_2|, |y_1 - y_2|)$.
- **MATLAB Code:** [`LAB3/lab_03.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB3/lab_03.m)
- **LaTeX Report:** [`LAB3/lab_report_03.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB3/lab_report_03.tex)

---

### [LAB 04: Fourier Transform, Frequency Domain Filtering, and Bit Plane Slicing](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB4/)
- **Objectives:** Transform images between spatial and frequency domains, implement ideal filtering, and decompose pixel bit depths.
- **Key Topics & Operations:**
  1. **2D Fast Fourier Transform (FFT):** Converting spatial intensity into frequency domain using `fft2`.
  2. **Spectrum Centring & Log Scaling:** Centring DC component to the origin with `fftshift` and compressing dynamic range using $S = \log(1 + |F_{shift}|)$.
  3. **Ideal Low Pass Filter (ILPF):** Constructing circular pass-filter mask ($D \le D_0 = 30$) to preserve low frequencies and blur high frequencies.
  4. **Ideal High Pass Filter (IHPF):** Constructing circular stop-filter mask ($D > D_0 = 30$) to suppress smooth regions and retain edge boundaries.
  5. **Bit Plane Slicing:** Extracting individual bits from 8-bit image pixels using `bitget` from Bit Plane 1 (LSB) through Bit Plane 8 (MSB).
- **MATLAB Code:** [`LAB4/lab_04.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB4/lab_04.m)
- **LaTeX Report:** [`LAB4/lab_report_04.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB4/lab_report_04.tex)

---

### [LAB 05: Morphological Operations, Image Interpolation, and Otsu Segmentation](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB5/)
- **Objectives:** Implement non-linear mathematical morphology for binary cleanup, spatial resampling, and variance-maximizing segmentation.
- **Key Topics & Operations:**
  1. **Morphological Dilation (`imdilate`):** Expanding object boundaries using a $3\times3$ square structuring element (`strel('square', 3)`).
  2. **Morphological Erosion (`imerode`):** Stripping outer boundary layers and eliminating thin isolated noise.
  3. **Morphological Opening (`imopen`):** Erosion followed by dilation to remove small foreground protrusions.
  4. **Morphological Closing (`imclose`):** Dilation followed by erosion to bridge small gaps and fill intra-object holes.
  5. **Nearest Neighbor Resampling:** Duplicating adjacent pixels via `imresize(..., 'nearest')`.
  6. **Bilinear Interpolation:** Generating smooth zoomed images via weighted 4-neighbour interpolation `imresize(..., 'bilinear')`.
  7. **Otsu Global Thresholding:** Automatically calculating optimal threshold using `graythresh` to segment foreground from background.
- **MATLAB Code:** [`LAB5/lab_05.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB5/lab_05.m)
- **LaTeX Report:** [`LAB5/lab_report_05.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB5/lab_report_05.tex)

---

### [LAB 06: Edge Detection, K-Means Clustering, Connected Component Labeling, and Thresholding](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB6/)
- **Objectives:** Execute edge detection algorithms, unsupervised color cluster segmentation, and component counting.
- **Key Topics & Operations:**
  1. **Canny Edge Detection:** Advanced multi-stage edge detection with Gaussian smoothing, gradient calculation, non-maximum suppression, and hysteresis thresholding via `edge(..., 'canny')`.
  2. **Prewitt Edge Detection:** Gradient magnitude approximation using $3 \times 3$ directional derivative masks via `edge(..., 'prewitt')`.
  3. **K-Means Color Segmentation:** Unsupervised grouping of RGB pixel vectors into $K = 4$ clusters using `kmeans`.
  4. **Cluster Object Masking:** Extracting target objects (peppers) onto a clean black background and re-quantizing color values using cluster centroids.
  5. **Manual Thresholding:** Converting grayscale images into binary masks using a user-specified cutoff value ($0.2$).
  6. **Connected Component Analysis:** Identifying, labeling, and counting distinct coin objects in `coins.png` using `bwlabel`.
  7. **Otsu Threshold Comparison:** Automatically separating objects using optimal thresholding with `graythresh`.
- **MATLAB Code:** [`LAB6/lab_06.m`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB6/lab_06.m)
- **LaTeX Report:** [`LAB6/lab_report_06.tex`](file:///c:/rasheduzzamanrakib/programming/cse-420-image-processing-lab/LAB6/lab_report_06.tex)

---

## 🛠️ Requirements & Setup

### MATLAB Environment
- **Recommended Version:** MATLAB R2020a or later.
- **Toolbox Required:** Image Processing Toolbox (for `imnoise`, `imdilate`, `imerode`, `edge`, `graythresh`, `bwlabel`, etc.) and Statistics and Machine Learning Toolbox (for `kmeans`, `gamrnd`, `exprnd`, `raylrnd`).

### LaTeX Compilation Environment
- **Distribution:** TeX Live / MiKTeX / MacTeX.
- **Packages Used:** `amsmath`, `amssymb`, `booktabs`, `geometry`, `graphicx`, `float`, `listings`, `xcolor`, `titlesec`, `setspace`.
- **Important Note:** When compiling any `.tex` file locally, ensure the Dhaka International University logo image `diu_logo.png` is placed in the corresponding lab folder or parent directory.

To compile any report via terminal:
```bash
cd LAB1
pdflatex lab_report_01.tex
```

---

## 📜 License
This repository is created for academic coursework and educational purposes under the CSE curriculum at Dhaka International University.
