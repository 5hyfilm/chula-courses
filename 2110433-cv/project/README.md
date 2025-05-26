# 2110433-cv-project
 
# HAM10000 Balanced Dataset for Multimodal Skin Lesion Classification

This dataset is a **balanced and pre-split version of the HAM10000 dataset**, designed for training multimodal models (e.g., using image + metadata such as age, sex, and localization).

---

## 📂 Folder Structure
---

## 📋 Description

| Component          | Description                                                   |
|--------------------|---------------------------------------------------------------|
| `HAM10000_train.csv` | Contains metadata for training, including image_id, dx, age, sex, and localization |
| `HAM10000_test.csv`  | Same as above but for the test set                           |
| `train_images/`       | Contains image files referenced in `HAM10000_train.csv`     |
| `test_images/`        | Contains image files referenced in `HAM10000_test.csv`      |

All images are in `.jpg` format, and image filenames match the `image_id` column in the CSV files.

---

## 🧠 Labels (dx)

The following 7 diagnostic categories are used as labels:

- `akiec` : Actinic keratoses and intraepithelial carcinoma
- `bcc`   : Basal cell carcinoma
- `bkl`   : Benign keratosis
- `df`    : Dermatofibroma
- `mel`   : Melanoma
- `nv`    : Melanocytic nevi
- `vasc`  : Vascular lesions

---

## 🛠 Usage

To use with a custom PyTorch Dataset for multimodal learning (image + metadata), load CSV files and access images by `image_id`:

```python
import pandas as pd

train_df = pd.read_csv("HAM10000_balanced/HAM10000_train.csv")
test_df = pd.read_csv("HAM10000_balanced/HAM10000_test.csv")

train_image_dir = "HAM10000_balanced/train_images/"
test_image_dir = "HAM10000_balanced/test_images/"
