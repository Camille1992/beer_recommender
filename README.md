# Beer profile and rating study - Building a Beer Recommender

## Project Goals

#### 1.  Building machine learning models that can predict a beer's alcohol content and rating, gaining some insights into the characteristics that make a highly-rated beer - a rating of 4 and more on a 0 to 5 scale.

Which features predominantly impact the beer rating? 

Which features are responsible for higher alcohol content? Can we accurately predict the ABV based with the other features?

#### 2. Building a beer recommendation system based on similarities with the user's favourite beer or preffered beer style.

What do we need to build a beer recommender?

How many beer clusters exist among these 3197 unique beers?

How do we account for the variety of the user input?

What would be the next steps to improve the first MVP?

### Tools Used

Python and Tableau were the principal tools used for this project. Some SQL as well, although it isn't needed for project completion.

### Modules Used

Pandas, Numpy, Scikit-learn, Seaborn, Matplotlib, Scipy, Math, Stats

### Dataset

The dataset holds information on 3197 unique beers and 934 different breweries.
Link to the dataset: https://www.kaggle.com/datasets/ruthgn/beer-profile-and-ratings-data-set

**Description of the least obvious features:**

**ABV**: Alcohol by volume is used to measure the alcohol content of beer and other alcoholic drinks. They usually fall between 3.0 and 13.0 percent ABV. \
**IBU**: International Bitterness Units, it’s a scale used to rate the bitterness level.\
**Astringency**: Not quite a taste so much as a physical sensation, hard to define. Too much Astringency is considered a flavor fault in beer. Good analogy: is like the dryness produced by a strong tea.\
**Body**: Fullness of the flavor and mouthfeel, from watery to satiating (Ales, Stouts and Porters).\
**Alcohol**: Impacts the body and bitterness.\
**Bitter**: Due to the amount and type of hops used (IPA, IPL, APA)\
**Sweet**: Strong malt presence and little hops.\
**Sour**:  Lactobacillus and Pediococcus, bacteria consuming food and producing acid as a by-product.\
**Salty**: Salt is added as a taste enhancer.\
**Fruits**: Fruitiness can either be added or be a result of hops, some strains of yeast or malts used.\
**Hoppy**: Solid Malt base but Hops dominate. Counterbalance the sweetness.\
**Spices**: Imparted by the yeast, especially when yeast is aged for several years.\
**Malty**: Malts dominate, usually sweet.

### Workflow

Data exploration -> Exploratory Data Analysis -> Feature Engineering -> Feature Extraction -> Modeling & Model Evaluation

### Main Challenges

The lack of useful & non highly-correlated data to accurately predict the overall review of a beer. It would be interesting to find some additional data such as beer reviews, comments, as well as sales data.

The main challenges identified for the creation of a beer recommender are the following:
  - The difficulty of accounting for all the variation of user input to make sure that the recommender can understand it without raising errors.
  - The unability to us beer profiles as input.
  - The amount of data available in general, a bigger dataset might have given us different clusters as the one used had predominantly North American beers.
