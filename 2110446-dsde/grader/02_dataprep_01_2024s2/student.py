import pandas as pd
from sklearn.model_selection import train_test_split

"""
    ASSIGNMENT 2 (STUDENT VERSION):
    Using pandas to explore Titanic data from Kaggle (titanic_to_student.csv) and answer the questions.
    (Note that the following functions already take the Titanic dataset as a DataFrame, so you don’t need to use read_csv.)

"""


def Q1(df):
    """
        Problem 1:
            How many rows are there in the "titanic_to_student.csv"?
    """
    # TODO: Code here
    return df.shape[0]


def Q2(df):
    '''
        Problem 2:
            Drop unqualified variables
            Drop variables with missing > 50%
            Drop categorical variables with flat values > 70% (variables with the same value in the same column)
            How many columns do we have left?
    '''
    # TODO: Code here
    half_count = len(df)*0.5
    # print(half_count)

    df.dropna(thresh=half_count, axis=1, inplace=True)
    
    for col in df.columns:
        if df[col].value_counts().values[0] > 0.7*df.shape[0]:
            df.drop(col, axis=1, inplace=True)
    return df.shape[1]


def Q3(df):
    '''
       Problem 3:
            Remove all rows with missing targets (the variable "Survived")
            How many rows do we have left?
    '''
    # TODO: Code here
    df.dropna(subset=['Survived'], axis=0, inplace=True)
    return df.shape[0]


def Q4(df):
    '''
       Problem 4:
            Handle outliers
            For the variable “Fare”, replace outlier values with the boundary values
            If value < (Q1 - 1.5IQR), replace with (Q1 - 1.5IQR)
            If value > (Q3 + 1.5IQR), replace with (Q3 + 1.5IQR)
            What is the mean of “Fare” after replacing the outliers (round 2 decimal points)?
            Hint: Use function round(_, 2)
    '''
    # TODO: Code here
    Q1 = df['Fare'].quantile(0.25)
    Q3 = df['Fare'].quantile(0.75)
    iqr = Q3 - Q1

    threshold = 1.5

    lower_bound = Q1 - threshold * iqr
    upper_bound = Q3 + threshold * iqr

    df['Fare'] = df['Fare'].apply(lambda x: lower_bound if x < lower_bound 
                        else upper_bound if x > upper_bound else x)

    return round(df['Fare'].mean(), 2)


def Q5(df):
    '''
       Problem 5:
            Impute missing value
            For number type column, impute missing values with mean
            What is the average (mean) of “Age” after imputing the missing values (round 2 decimal points)?
            Hint: Use function round(_, 2)
    '''
    # TODO: Code here
    import numpy as np
    from sklearn.impute import SimpleImputer

    num_cols = ['Age', 'SibSp', 'Fare']
    text_cols = ['Pclass', 'Name', 'Ticket', 'Embarked']

    numImp = SimpleImputer(missing_values=np.NaN, strategy='mean')  
    textImp = SimpleImputer(missing_values=np.NaN, strategy='most_frequent') 
    df[num_cols] = numImp.fit_transform(df[num_cols])
    df[text_cols] = textImp.fit_transform(df[text_cols])

    return round(df['Age'].mean(), 2)


def Q6(df):
    '''
        Problem 6:
            Convert categorical to numeric values
            For the variable “Embarked”, perform the dummy coding.
            What is the average (mean) of “Embarked_Q” after performing dummy coding (round 2 decimal points)?
            Hint: Use function round(_, 2)
    '''
    # TODO: Code here
    embarked_dummies = pd.get_dummies(df['Embarked'], prefix='Embarked')
    df = pd.concat([df, embarked_dummies], axis=1)
    
    return round(df['Embarked_Q'].mean(), 2)


def Q7(df):
    '''
    Split train/test split with stratification using 70%:30% and random seed with 123
    Show proportion of survivors in training data.
    '''
    from sklearn.model_selection import train_test_split
    import numpy as np

    df = df.copy()
    
    numeric_columns = df.select_dtypes(include=[np.number]).columns
    df[numeric_columns] = df[numeric_columns].fillna(df[numeric_columns].mean())
    
    X = df.drop('Survived', axis=1)  # Features
    y = df['Survived']  # Target
    
    X_train, X_test, y_train, y_test = train_test_split(
        X, 
        y,
        stratify=y,
        test_size=0.30, 
        random_state=123
    )
    
    return round(y_train.value_counts() / len(y_train), 2)[1]
