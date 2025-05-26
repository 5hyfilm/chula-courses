#import your other libraries here
import pandas as pd
import numpy as np
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans

class Clustering:
    def __init__(self, file_path): # DO NOT modify this line
        #Add other parameters if needed
        self.file_path = file_path 
        self.df = pd.read_csv(file_path)

    def Q1(self): # DO NOT modify this line
        """
        Step1-4
            1. Load the CSV file.
            2. Choose edible mushrooms only.
            3. Only the variables below have been selected to describe the distinctive
               characteristics of edible mushrooms:
               'cap-color-rate','stalk-color-above-ring-rate'
            4. Provide a proper data preprocessing as follows:
                - Fill missing with mean
                - Standardize variables with Standard Scaler
        """
        # remove pass and replace with you code
        self.df = self.df[self.df['label'] == 'e']
        
        selected_vars = ['cap-color-rate', 'stalk-color-above-ring-rate']
        self.df = self.df[selected_vars]

        self.df.fillna(value=self.df.mean(), inplace=True)

        self.scaler = StandardScaler()
        self.scaled = self.scaler.fit_transform(self.df)
        return self.scaled.shape
        

    def Q2(self): # DO NOT modify this line
        """
        Step5-6
            5. K-means clustering with 5 clusters (n_clusters=5, random_state=0, n_init='auto')
            6. Show the maximum centroid of 2 features ('cap-color-rate' and 'stalk-color-above-ring-rate') in 2 digits.
        """
        # remove pass and replace with you code
        self.Q1()
        
        kmeans = KMeans(n_clusters=5, random_state=0, n_init='auto')
        kmeans = kmeans.fit(self.scaled)

        self.centroids = kmeans.cluster_centers_

        return np.round(np.max(self.centroids, axis=0), 2)
        

    def Q3(self): # DO NOT modify this line
        """
        Step7
            7. Convert the centroid value to the original scale, and show the minimum centroid of 2 features in 2 digits.

        """
        # remove pass and replace with you code
        self.Q2()

        self.original = self.scaler.inverse_transform(self.centroids)

        return np.round(np.min(self.original, axis=0), 2)