import pandas as pd
import json

"""
    ASSIGNMENT 1 (STUDENT VERSION):
    Using pandas to explore youtube trending data from GB (GBvideos.csv and GB_category_id.json) and answer the questions.
"""

csv_path = '/data/GBvideos.csv'
json_path = '/data/GB_category_id.json'

def Q1():
    """
        1. How many rows are there in the GBvideos.csv after removing duplications?
        - To access 'GBvideos.csv', use the path '/data/GBvideos.csv'.
    """
    df = pd.read_csv(csv_path).drop_duplicates()
    return df.shape[0]

def Q2(vdo_df):
    '''
        2. How many VDO that have "dislikes" more than "likes"? Make sure that you count only unique title!
            - GBvideos.csv has been loaded into memory and is ready to be utilized as vdo_df
            - The duplicate rows of vdo_df have been removed.
    '''
    vdo_df = vdo_df.drop_duplicates()
    unique_title = vdo_df[vdo_df['dislikes'] > vdo_df['likes']]
    return unique_title['title'].nunique()

def Q3(vdo_df):
    '''
        3. How many VDO that are trending on 22 Jan 2018 with comments more than 10,000 comments?
            - GBvideos.csv has been loaded into memory and is ready to be utilized as vdo_df
            - The duplicate rows of vdo_df have been removed.
            - The trending date of vdo_df is represented as 'YY.DD.MM'. For example, January 22, 2018, is represented as '18.22.01'.
    '''
    return vdo_df[(vdo_df['trending_date'] == '18.22.01') & (vdo_df['comment_count'] > 10000)].shape[0]

def Q4(vdo_df):
    '''
        4. Which trending date that has the minimum average number of comments per VDO?
            - GBvideos.csv has been loaded into memory and is ready to be utilized as vdo_df
            - The duplicate rows of vdo_df have been removed.
    '''
    return vdo_df.groupby('trending_date')['comment_count'].mean().idxmin()

def Q5(vdo_df):
    '''
        5. Compare "Sports" and "Comedy", how many days that there are more total daily views of VDO in "Sports" category than in "Comedy" category?
            - GBvideos.csv has been loaded into memory and is ready to be utilized as vdo_df
            - The duplicate rows of vdo_df have been removed.
            - You must load the additional data from 'GB_category_id.json' into memory before executing any operations.
            - To access 'GB_category_id.json', use the path '/data/GB_category_id.json'.
    '''
    
    with open(json_path, 'r') as file:
        category_id = json.load(file)
    
    sport_id = 17
    comedy_id = 23

    sport_vdo = vdo_df[vdo_df['category_id'] == sport_id]
    comedy_vdo = vdo_df[vdo_df['category_id'] == comedy_id]
    
    sport_dailyviews = sport_vdo.groupby('trending_date')['views'].sum()
    comedy_dailyviews = comedy_vdo.groupby('trending_date')['views'].sum()
    
    return (sport_dailyviews > comedy_dailyviews).sum()