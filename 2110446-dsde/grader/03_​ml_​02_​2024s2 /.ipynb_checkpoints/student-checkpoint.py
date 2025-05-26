#e.g. pandas, sklearn, .....
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.impute import SimpleImputer
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import f1_score
import warnings # DO NOT modify this line
from sklearn.exceptions import ConvergenceWarning # DO NOT modify this line
warnings.filterwarnings("ignore", category=ConvergenceWarning) # DO NOT modify this line


class BankLogistic:
    def __init__(self, data_path): # DO NOT modify this line
        self.data_path = data_path
        self.df = pd.read_csv(data_path, sep=',')
        self.X_train = None
        self.y_train = None
        self.X_test = None
        self.y_test = None

    def Q1(self): # DO NOT modify this line
        """
        Problem 1:
            Load ‘bank-st.csv’ data from the “Attachment”
            How many rows of data are there in total?

        """
        # TODO: Paste your code here
        return self.df.shape[0]

    def Q2(self): # DO NOT modify this line
        """
        Problem 2:
            return the tuple of numeric variables and categorical variables are presented in the dataset.
        """
        # TODO: Paste your code here
        num_vars = self.df.select_dtypes(include=['int64', 'float64']).shape[1]
        cat_vars = self.df.select_dtypes(include=['object']).shape[1]
        return (num_vars, cat_vars)
    
    def Q3(self): # DO NOT modify this line
        """
        Problem 3:
            return the tuple of the Class 0 (no) followed by Class 1 (yes) in 3 digits.
        """
        # TODO: Paste your code here
        total_rows = self.df.shape[0]
        
        class_0 = round(self.df[self.df['y']=='no'].shape[0] / total_rows, 3)
        class_1 = round(self.df[self.df['y']=='yes'].shape[0] / total_rows, 3)
        return (class_0, class_1)
      
    

    def Q4(self): # DO NOT modify this line
        """
        Problem 4:
            Remove duplicate records from the data. What are the shape of the dataset afterward?
        """
        # TODO: Paste your code here
        self.df.drop_duplicates(inplace=True)
        return self.df.shape
        

    def Q5(self): # DO NOT modify this line
        """
        Problem 5:
            5. Replace unknown value with null
            6. Remove features with more than 99% flat values. 
                Hint: There is only one feature should be drop
            7. Split Data
            -	Split the dataset into training and testing sets with a 70:30 ratio.
            -	random_state=0
            -	stratify option
            return the tuple of shapes of X_train and X_test.

        """
        # TODO: Paste your code here
        self.Q4()
        self.df.replace('unknown', np.nan, inplace=True)
        
        for col in self.df.columns:
            if col != 'y':
                value_counts = self.df[col].value_counts(normalize=True)
                if value_counts.iloc[0]> 0.99:       
                    self.df.drop(col, axis=1, inplace=True)
                
        self.X = self.df.drop(columns=['y'])
        self.y = self.df['y']
        
        self.X_train, self.X_test, self.y_train, self.y_test = train_test_split(self.X, self.y, stratify=self.y, 
                                                            test_size=0.3, random_state=0)
        
        return (self.X_train.shape, self.X_test.shape)

       
    def Q6(self): 
        """
        Problem 6: 
            8. Impute missing
                -	For numeric variables: Impute missing values using the mean.
                -	For categorical variables: Impute missing values using the mode.
                Hint: Use statistics calculated from the training dataset to avoid data leakage.
            9. Categorical Encoder:
                Map the ordinal data for the education variable using the following order:
                education_order = {
                    'illiterate': 1,
                    'basic.4y': 2,
                    'basic.6y': 3,
                    'basic.9y': 4,
                    'high.school': 5,
                    'professional.course': 6,
                    'university.degree': 7} 
                Hint: Use One hot encoder or pd.dummy to encode ordinal category
            return the shape of X_train.

        """
        # TODO: Paste your code here
        self.Q5()
        num_vars = self.X_train.select_dtypes(include=['int64', 'float64']).columns
        cat_vars = self.X_train.select_dtypes(include=['object']).columns
        
        # Initialize imputers
        num_imp = SimpleImputer(missing_values=np.nan, strategy='mean')
        cat_imp = SimpleImputer(missing_values=np.nan, strategy='most_frequent')
        
        # Fit and transform on training data
        self.X_train[num_vars] = num_imp.fit_transform(self.X_train[num_vars])
        self.X_train[cat_vars] = cat_imp.fit_transform(self.X_train[cat_vars])
        
        # Only transform test data using training data statistics
        self.X_test[num_vars] = num_imp.transform(self.X_test[num_vars])
        self.X_test[cat_vars] = cat_imp.transform(self.X_test[cat_vars])
        
        # Map education values
        education_order = { 
            'illiterate': 1,
            'basic.4y': 2,
            'basic.6y': 3,
            'basic.9y': 4,
            'high.school': 5,
            'professional.course': 6,
            'university.degree': 7
        } 
        
        self.X_train['education'] = self.X_train['education'].map(education_order)
        self.X_test['education'] = self.X_test['education'].map(education_order)
        
        # One-hot encode remaining categorical variables
        self.X_train = pd.get_dummies(self.X_train, columns=self.X_train.select_dtypes(include='object').columns)
        self.X_test = pd.get_dummies(self.X_test, columns=self.X_test.select_dtypes(include='object').columns)
        
        return self.X_train.shape
    
    def Q7(self):
        ''' Problem7: Use Logistic Regression as the model with 
            random_state=2025, 
            class_weight='balanced' and 
            max_iter=500. 
            Train the model using all the remaining available variables. 
            What is the macro F1 score of the model on the test data? in 2 digits
        '''
        # TODO: Paste your code here
        self.Q6()
        model = LogisticRegression(random_state=2025, 
                                   class_weight='balanced', 
                                   max_iter=500)
        
        model.fit(self.X_train, self.y_train)
        
        y_pred = model.predict(self.X_test)

        macro_f1 = f1_score(self.y_test, y_pred, average='macro')
        return round(macro_f1, 2)   