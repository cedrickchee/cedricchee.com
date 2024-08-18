+++
title = "Designing Machine Learning (ML) Systems Book Summary"
description = "A chapter by chapter detailed summary of the book."
date = 2024-05-16T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["machine_learning", "systems_design", "books"]

[extra]
ToC = true
+++

A summary of each chapter of
["Designing Machine Learning Systems: An Iterative Process for Production-Ready Applications"](https://www.amazon.com/Designing-Machine-Learning-Systems-Production-Ready/dp/1098107969),
1st edition (June, 2022)
by Chip Huyen:

### Chapter 1: Overview of Machine Learning Systems

#### When to Use Machine Learning

- **Criteria for Using ML**: Machine learning (ML) is beneficial when there is no clear set of rules to solve a problem, when the problem involves complex patterns or large-scale data, or when a system needs to adapt to new data.
- **Use Cases**: Common use cases include recommendations, fraud detection, image and speech recognition, and predictive maintenance.

#### Understanding Machine Learning Systems

- **Components**: An ML system comprises data collection, preprocessing, model training, evaluation, deployment, and monitoring.
- **Pipeline**: The ML pipeline involves steps from data ingestion to model monitoring, emphasizing the iterative nature of improving ML models.

#### ML in Research vs. Production

- **Differences**: Research focuses on model accuracy and innovation, often using clean, well-labeled datasets, whereas production emphasizes reliability, scalability, and maintainability with real-world noisy data.
- **Challenges**: Transitioning from research to production involves addressing issues like data consistency, system integration, and performance in diverse environments.

#### ML Systems vs. Traditional Software

- **Distinctions**: Traditional software follows deterministic rules, while ML systems rely on statistical methods and can change behavior based on new data.
- **Complexity**: ML systems require ongoing management, including monitoring for data drift and retraining models to maintain performance.

#### Summary

- **Project Initiation**: Start with clear business objectives that guide the development of ML models.
- **System Requirements**: Key requirements include reliability, scalability, maintainability, and adaptability.
- **Iterative Process**: Developing ML systems is iterative, involving continuous improvement based on feedback and performance monitoring.
- **Role of Data**: Data quality and quantity are critical; having good data can often be more beneficial than sophisticated algorithms.
- **Future Chapters**: The book will delve into data engineering, model development, deployment, and the human aspects of ML systems.

This chapter sets the foundation for understanding the lifecycle of ML systems, from conception to deployment and monitoring, highlighting the importance of aligning ML objectives with business goals and the iterative nature of ML system development.

### Chapter 2: Introduction to Machine Learning Systems Design

#### Business and ML Objectives

- **Alignment**: The chapter starts by emphasizing the importance of aligning ML projects with business objectives. ML objectives need to translate into measurable business outcomes.
- **Metrics**: Data scientists often focus on metrics like accuracy and F1 score, but business metrics such as customer satisfaction or revenue impact are crucial for project justification.

#### Requirements for ML Systems

- **Four Key Requirements**:
  - **Reliability**: Ensuring the system performs consistently under various conditions.
  - **Scalability**: Ability to handle increasing amounts of work or data.
  - **Maintainability**: Ease of making updates and improvements.
  - **Adaptability**: Flexibility to adjust to changing conditions and requirements.

#### Iterative Process

- **Design Cycle**: ML system design is an iterative process involving continuous refinement. Initial designs may not meet all requirements, and iterative improvements are essential.
- **Feedback Loop**: Incorporate feedback from deployment and monitoring to improve the system iteratively.

#### Framing ML Problems

- **Problem Definition**: Properly framing the problem is critical. The chapter discusses how to translate business problems into ML tasks.
- **Impact on Complexity**: How a problem is framed significantly affects the difficulty of finding a solution.

#### Types of ML Tasks

- **Task Categories**: Covers various ML tasks such as classification, regression, clustering, and recommendation systems.
- **Choosing the Right Task**: Selecting the appropriate task type is crucial for solving the problem effectively.

#### Objective Functions

- **Purpose**: Objective functions guide model training by quantifying how well the model performs.
- **Types**: Different ML tasks require different objective functions, such as mean squared error for regression or cross-entropy for classification.

#### Mind Versus Data

- **Debate**: Discusses the ongoing debate on the importance of data versus algorithms. High-quality data can often be more beneficial than sophisticated algorithms.
- **Real-World Examples**: Examples like AlexNet, BERT, and GPT illustrate that access to large amounts of data has driven recent ML advancements.

#### Summary

- **Key Takeaways**:
  - Align ML projects with business goals.
  - Focus on reliability, scalability, maintainability, and adaptability.
  - Use an iterative design process to refine ML systems.
  - Properly frame ML problems and choose the right tasks and objective functions.
  - Recognize the critical role of data in the success of ML systems.
- **Next Steps**: The chapter sets the stage for diving deeper into data engineering fundamentals, which will be covered in subsequent chapters.

This summary encapsulates the key points of Chapter 2, emphasizing the foundational aspects of designing effective machine learning systems that are aligned with business objectives and built to be reliable, scalable, maintainable, and adaptable.

### Chapter 3: Data Engineering Fundamentals

#### Data Sources

- **User Input Data**: Data entered by users such as text, images, videos, and uploaded files. User input can often be malformatted and requires thorough validation.
- **Logs**: Logs are system-generated records of events and user activities. They can be used for monitoring, debugging, and understanding user behavior.
- **Third-Party Data**: Data acquired from external sources, which can be useful for augmenting your internal data.

#### Data Formats

- **JSON**: A human-readable format using key-value pairs. It’s flexible but can be inefficient in terms of storage.
- **CSV**: A row-major format where each row is stored sequentially. It’s simple but can be slow for accessing specific columns.
- **Parquet**: A column-major binary format that allows efficient column-based access and storage.

#### Row-Major vs. Column-Major Format

- **Row-Major (CSV)**: Faster for row-based access but inefficient for column-based operations.
- **Column-Major (Parquet)**: Efficient for column-based access, beneficial for large datasets with many features.

#### Text vs. Binary Format

- **Text (CSV, JSON)**: Human-readable but larger in size.
- **Binary (Parquet)**: Compact and faster for storage and processing but not human-readable.

#### Data Models

- **Relational Model**: Uses tables to represent data and relationships. Suitable for structured data with complex queries.
- **NoSQL**: Flexible schema, suitable for unstructured or semi-structured data. Includes document, key-value, column-family, and graph databases.

#### Data Storage Engines and Processing

- **Transactional Processing (OLTP)**: Focuses on quick, reliable transaction processing, typical for relational databases.
- **Analytical Processing (OLAP)**: Optimized for querying large datasets, common in data warehouses.

#### ETL: Extract, Transform, Load

- **Extract**: Retrieving data from various sources.
- **Transform**: Cleaning and converting data into a suitable format.
- **Load**: Storing the transformed data into a target database.

#### Modes of Dataflow

- **Data Passing Through Databases**: Storing and retrieving data using database management systems.
- **Data Passing Through Services**: Inter-process communication via APIs and microservices.
- **Data Passing Through Real-Time Transport**: Streaming data using real-time systems like Kafka.

#### Batch Processing vs. Stream Processing

- **Batch Processing**: Handling large volumes of data at once. Suitable for non-time-sensitive tasks.
- **Stream Processing**: Real-time data processing, essential for time-sensitive applications like fraud detection.

#### Summary

Understanding data engineering fundamentals is crucial for building efficient and scalable machine learning systems. It involves knowing the types and formats of data, how to store and process it, and the different paradigms for data management. This chapter provides foundational knowledge necessary for handling data in ML production environments.

### Chapter 4: Training Data

Chapter 4 focuses on the critical aspect of training data in machine learning systems, emphasizing that while model building often receives the most attention, the quality and handling of training data are equally crucial for successful ML projects.

#### Importance of Training Data

 - Training data is foundational for developing ML models.
 - High-quality, well-processed data is essential to avoid pitfalls that can derail ML projects.

#### Data Challenges

- **Label Multiplicity:** Handling multiple labels for a single instance.
- **Lack of Labels:** Strategies to cope with insufficient labeled data.
- **Class Imbalance:** Techniques to manage imbalanced datasets where some classes are underrepresented.

#### Sampling Techniques

- Various methods to select representative samples for training.
- **Weighted Sampling:** Assigning different probabilities to samples.
- **Reservoir Sampling:** A method useful for streaming data where the total size is unknown.

#### Data Labeling

 - **Hand Labeling:** Often necessary but expensive, slow, and poses privacy concerns, especially when subject matter expertise is required.
 - **Programmatic Labeling:** Uses labeling functions (LFs) to generate labels, which can be shared and reused, offering cost savings, privacy benefits, and scalability. This method is particularly useful when data privacy is a concern.

#### Challenges in Labeling

 - Obtaining labels can be difficult due to costs, privacy issues, and the time required.
 - Andrej Karpathy, director of AI at Tesla, shared an anecdote about how when he decided to have an in-house labeling team, his recruiter asked how long he’d need this team for. He responded: “How long do we need an engineering team for?” Data labeling has gone from being an auxiliary task to being a core function of many ML teams in production.
 - Strategies to address these challenges include using natural labels and programmatic labeling.

#### Class Imbalance

 - A prevalent issue in real-world applications, where some classes are underrepresented in the data.
 - **Impact on Models:** Class imbalance can lead to models that perform poorly on minority classes, as the majority class can dominate the learning process.
 - **Mitigation Techniques:** 
   - **Choosing Appropriate Metrics:** Use metrics like precision, recall, F1-score, and class-specific accuracies rather than overall accuracy to evaluate model performance.
   - **Data-Level Methods:** Resampling techniques such as oversampling the minority class or undersampling the majority class to balance the dataset.
   - **Algorithm-Level Methods:** Adjusting learning algorithms to be more robust to class imbalance, such as cost-sensitive learning and using ensemble methods.

#### Data Augmentation

- Methods to artificially increase the amount of training data to improve model robustness.
- **Simple Transformations:** For images, techniques include cropping, flipping, and rotating.
- **Perturbation:** Adding noise to data.
- **Data Synthesis:** Generating new data points from existing ones.

By addressing these aspects, the chapter underscores the necessity of careful data handling and preprocessing to build robust ML models.

### Chapter 5: Feature Engineering

#### Introduction to Feature Engineering

- **Importance**: Feature engineering is crucial for improving model performance. It involves creating, transforming, and selecting features to enhance the predictive power of ML models.
- **Feature Types**: Features can be learned (from models like neural networks) or engineered (manually created based on domain knowledge).

#### Common Feature Engineering Techniques

- **Scaling**: Standardizing or normalizing features to ensure they contribute equally to the model. Methods include Min-Max scaling and Z-score standardization.
- **Encoding**: Converting categorical data into numerical format using one-hot encoding, label encoding, and binary encoding.
- **Feature Crossing**: Creating new features by combining existing ones to capture interactions between different features.

#### Handling Missing Values

- **Strategies**: Methods for handling missing data include imputation (mean, median, mode), using algorithms that support missing values, and treating missingness as a separate category.

#### Data Leakage

- **Definition**: Data leakage occurs when information from outside the training dataset is used to create the model, leading to overly optimistic performance estimates.
- **Prevention**: To avoid data leakage, ensure that test data is not used during training and be cautious with feature selection and engineering.

#### Engineering Good Features

- **Domain Knowledge**: Leveraging domain expertise to create features that capture the underlying patterns in the data.
- **Feature Importance**: Identifying and focusing on features that have the most significant impact on model predictions. Techniques such as feature importance scores from tree-based models and permutation importance are discussed.
- **Feature Generalization**: Creating features that generalize well to new data. This involves ensuring that features are robust and not overly specific to the training data.

#### Summary

- **Key Takeaways**: Effective feature engineering involves creating informative features, handling missing data appropriately, preventing data leakage, and selecting relevant features. It also emphasizes the importance of feature importance and generalization for building robust ML models.
- **Next Steps**: The subsequent chapter will cover model development and offline evaluation, building on the foundation of well-engineered features.

### Chapter 6: Model Development and Offline Evaluation

How to select the best machine learning algorithm for a given task?

Cautions against blindly using the latest state-of-the-art models, which may not be suitable or efficient for the problem at hand.
Starting with the simplest models capable of solving the problem effectively.

Six tips for model selection:

1. Avoid the state-of-the-art trap 
2. Start with the simplest models
3. Avoid human biases in selecting models  
4. Evaluate good performance now vs potential later
5. Evaluate trade-offs like accuracy vs interpretability
6. Understand your model's assumptions

#### Model Development and Training

##### Evaluating ML Models

- Use learning curves to estimate potential gains from more data
- Consider properties beyond just performance metrics like training time, interpretability

##### Creating Ensembles

- Combining multiple models can boost performance
- Techniques include bagging, boosting (e.g. gradient boosting), stacking

##### Experiment Tracking and Versioning

- Track model training metrics, parameters, outputs for analysis 
- Version experiments to enable reproducibility and comparisons

#####  Debugging ML Models

- Common causes of failures include violated assumptions, poor implementation, bad hyperparameters
- Strategies like starting simple, overfitting tiny data, using set seeds

#####  Distributed Training

- Data parallelism (split data across machines) 
- Model parallelism (split model across machines)
- Pipelining to overlap compute across model components

#####  AutoML

- Automated model selection and tuning
- Ranges from hyperparameter tuning to neural architecture search (NAS)

**Four Phases of ML Model Development**

There are four phases of adopting ML, from using non-ML baselines to progressively more complex models:

- Phase 1. Before machine learning
- Phase 2. Simplest machine learning models
- Phase 3. Optimizing simple models
- Phase 4. Complex models

#### Model Offline Evaluation

##### Baselines

- Evaluate against random, heuristic, human, and existing solution baselines  

**Evaluation Methods**

- Perturbation tests to measure noise robustness
- Invariance tests to detect unwanted sensitive factor influence  
- Directional expectation tests
- Model calibration
  - Ensure model confidence scores match empirical probabilities
- Confidence measurement
  - Gauge certainty of individual predictions
- Slice-based Evaluation
  - Check performance across different sliced subsets of data
  - Detect undesirable bias or performance variability

The emphasis is on thorough offline analysis using various techniques to ensure models are robust,
unbiased, well-calibrated, make sense, and meet requirements before deployment.

### Chapter 7: Model Deployment and Prediction Service

Important considerations and challenges in deploying machine learning models to production environments,
which go well beyond just training accurate models.

#### Machine Learning Deployment Myths

Dispelling some common myths:

- **Myth 1: Companies only deploy a few models**. In reality, even medium-sized companies leverage hundreds of models to power different application features across various domains and geographies.
- **Myth 2: Model performance remains static**. Models tend to degrade over time due to data distribution shifts, software rot, and changing real-world conditions.
- **Myth 3: Models don't need frequent updates**. Best practices actually involve updating models as frequently as possible, with some companies like Weibo updating certain models every 10 minutes.
- **Myth 4: Scale is not a concern for most ML engineers**. Most ML engineers end up working at companies requiring their models to serve a large number of queries/users at scale.

#### From Batch Prediction to Online Prediction

Two main methods for models to generate and serve predictions:

- **Batch Prediction** precomputes predictions periodically (e.g. every 4 hours) and stores them to be retrieved on request. This allows leveraging distributed techniques for high throughput but makes the model less responsive to changing user preferences. It is useful for accumulating data when immediate results are not needed, like recommendations.
- **Online Prediction** generates predictions on-the-fly as soon as a request arrives, making it more responsive but requiring optimizations for low latency inference. It is crucial for applications needing real-time predictions like fraud detection.

#### Unifying Batch Pipeline and Streaming Pipeline

Many applications use a hybrid approach - batch prediction for popular queries and online prediction for less popular ones.

To consistently extract features across training and inference phases, we need to unify batch and streaming data pipelines through paradigms
like stream processing engines and feature stores.

#### Model Compression

Model compression techniques to reduce model size and latency:

- **Low-rank factorization** replaces high-dimensional tensors/filters with lower-dimensional representations (e.g. compact convolution filters, depthwise separable convolutions).
- **Knowledge distillation** trains a small "student" model to mimic a pre-trained large "teacher" model or ensemble.
- **Pruning** removes uncritical nodes/connections or zeros out less important parameters in neural networks.
- **Quantization** uses lower bit-precision (e.g. 8-bit vs 32-bit floats) to represent and compute with model parameters.

#### ML on the Cloud and on the Edge

The tradeoffs of Cloud vs edge/on-device deployment:

- **Cloud**: Easy setup but suffers from network latency, ongoing cost, and potential privacy issues from sending user data.
- **Edge**: More responsive with offline capabilities and data privacy, but constrained by limited hardware of user devices.

#### Compiling and Optimizing Models for Edge Devices

Techniques to compile and optimize models to run efficiently across different hardware backends:

- Using intermediate representations (IRs) to decouple frameworks from specific hardware. (This type of “middleman” is called an IR)
- **Model optimization**. Leveraging optimizing compilers to automatically tune low-level execution. Four of the common optimization techniques: vectorization, parallelization, loop tiling, operator fusion
- **Using ML to optimize ML models**. Exploring the optimization search space using machine learning itself (e.g. [autoTVM](https://tvm.apache.org/docs/reference/api/python/autotvm.html)).

#### ML in Browsers

Emerging approaches to run ML models in web browsers using JavaScript, WebAssembly, and open standards - enabling deployment across a wide range of devices.

The key takeaway is that deploying ML models is a multi-faceted (complex) engineering challenge requiring strategic decisions around prediction serving methods,
model compression, prediction platforms, system optimization, and overall robustness - well beyond just training accurate models.

### Chapter 8: Data Distribution Shifts and Monitoring

The chapter opens with a real-world story about a company whose machine learning
model for predicting grocery demand degraded significantly after being deployed
for a year, highlighting the importance of monitoring and updating models in
production.

#### Common Causes of ML System Failures

- **Software system failures** - Not specific to ML, like dependency issues, deployment problems, hardware failures, system crashes, etc. Addressing them requires traditional software engineering skills.
- **ML-specific failures**
  - **Production data differing from training data** - Crucial assumption of ML is that training and production data come from the same distribution. But this is often violated due to sampling biases, non-stationarity of real-world data, etc. Leading to "train-serving skew".
  - **Edge cases** - Inputs that cause catastrophic failures, crucial for safety-critical applications. Different from outliers.
  - **Degenerate feedback loops** - When model outputs influence future inputs, leading to issues like popularity bias, exposure bias, filter bubbles. Common in recommender systems.

#### Data Distribution Shifts

- Explained using P(X), P(Y), P(Y|X) definitions and examples
- **Covariate shift** - P(X) changes but P(Y|X) remains same 
- **Label shift** - P(Y) changes but P(X|Y) remains same
- **Concept drift** - P(Y|X) changes 
- **General data distribution shifts**: Feature changes, label schema changes, compound shifts

#### Detecting Data Distribution Shifts

- Monitoring accuracy metrics (if labels available)
- **Statistical methods**: Two-sample tests like Kolmogorov-Smirnov, Maximum Mean Discrepancy
- Monitoring artifacts: Predictions, features, raw inputs
- Temporal aspects: Time windows, cumulative vs sliding stats
- Challenges: High dimensionality, schema changes, overwhelming alerts

#### Addressing Data Distribution Shifts

- Retraining models on new data (from scratch or fine-tuning)
- Data techniques: Importance weighting, transfer learning  
- Model techniques: Invariant representations, unsupervised adaptation
- System design: Intelligent feature selection, separate models

#### Monitoring and Observability

- Metrics: Operational (latency, CPU, etc.) and **ML-specific** (accuracy, predictions, features, raw inputs)
- **Toolbox**: Logs, dashboards, alerts
- **Observability** instead of monitoring, provides visibility into internal states. Monitoring makes no assumption about the relationship between the internal state of a system and its outputs
- In ML, observability encompasses interpretability. Interpretability aids observability for ML
- Avoiding alert fatigue through good policies and runbooks

The chapter provides a comprehensive overview of data distribution shifts,
their detection, mitigation techniques, monitoring practices, and the
tooling/infrastructure required to ensure robust ML systems in production
environments.

### Chapter 9: Continual Learning and Test in Production

What continual learning is and its challenges—continual learning is largely an infrastructural problem.

After you’ve set up your infrastructure to allow you to update your models as
frequently as you want, how often should I retrain my models?

#### Continual Learning

- Continual learning allows continuously updating models by training further on new data, rather than fully retraining from scratch each time. This enables faster model adaptation.
- **Stateless retraining** versus **stateful training**: Most companies do stateless retraining—the model is trained from scratch each time. Continual learning means also allowing stateful training—the model continues training on new data. (aka. fine-tuning)
- Two types of model updates: **data iteration** (updating model on new data) and **model iteration** (changing model architecture/features)

##### Why Continual Learning?

Benefits include combating data distribution shifts, handling rare events like holidays, and addressing the continuous cold start problem for new users/scenarios.

##### Continual Learning Challenges

Three major challenges include accessing truly fresh data before it gets stale, labeling new data fast enough, adapting certain model types like matrix factorization, and properly evaluating model updates.

##### Four Stages of Continual Learning

1. Manual, stateless retraining
2. Automated retraining from scratch
3. Automated, stateful training
4. Continual learning - fully automated triggered by monitoring

#### How Often to Update Your Models

- How often to update depends on the **value of data freshness** for the specific model.
- Run experiments varying the training window to quantify performance gain from fresher data.
- Balance between model iteration (improving architecture) and data iteration (updating on new data).

#### Test in Production

- Static test sets are insufficient when data distributions shift. Backtests on recent data help but have limitations.
- Techniques for safely testing new models on live traffic include:
    - **Shadow deployment**: Run candidate and current model in parallel, log candidate 
    - **A/B testing**: Randomized controlled experiments comparing models
    - **Canary releases**: Slowly rolling out candidate while monitoring performance
    - **Interleaving experiments**: Expose users to recommendations from multiple models
    - **Bandit algorithms**: Dynamically prioritize better performing models. However, bandits are a lot more difficult to implement than A/B testing because
it requires computing and keeping track of models' payoffs.
- Bandit algorithms can be more data-efficient than A/B tests by prioritizing exploration early on.
- Important to have systematic automated evaluation pipelines beyond ad-hoc tests.
- Evaluation ownership should move away from just model developers.

### Chapter 10: Infrastructure and Tooling for MLOps

The chapter emphasizes that having the right infrastructure and tooling in place
is crucial for successfully developing, deploying and maintaining machine
learning systems at scale. It outlines four main layers of ML infrastructure.

#### 1. Storage and Compute

- This foundational layer provides the data storage and computing resources required to run ML workloads.
- Most companies now leverage cloud computing services like AWS, GCP, Azure rather than private data centers for storage and compute due to the elasticity and ease of use.
- However, as companies grow, some are considering "cloud repatriation" to private data centers to reduce costs of public cloud.
- Covers key compute concepts like instances, memory, CPU/GPU cores, FLOPS.

#### 2. Development Environment

- This is the integrated development environment (IDE) where data scientists write code, run experiments and interact with production.
- **Standardizing the dev environment** across a team using cloud IDEs/notebooks is recommended to improve productivity.
- Containers (Docker) are used to package code and move between **dev and production environments**.

#### 3. Resource Management

- Tools in this layer like **schedulers** (Airflow, Prefect) and **orchestrators** (Kubernetes) help schedule, execute and allocate resources for ML workflow tasks.
- **Unique aspects of ML workflows** like repetitiveness and complex dependencies are discussed.
- Airflow is one of the earliest workflow orchestrators.
- The evolution from cron to modern workflow managers like Metaflow is covered.

#### 4. ML Platform

- This relatively new layer provides shared tools/infrastructure across an organization's ML applications.  
- Key components include **model stores**, **feature stores**, **model deployment** services.
- Challenges around artifact tracking, feature management, model deployment are discussed.

#### Build Versus Buy

The chapter also dives into the considerations around the "build vs buy"
decision for ML infrastructure components based on factors like company stage,
focus areas (or competitive advantages), and tool maturity.

Overall, it provides a comprehensive overview to help structure an
organization's ML infrastructure stack across these four layers using the latest
tools and best practices.

### Chapter 11: The Human Side of Machine Learning

The chapter discusses the important human aspects involved in designing machine
learning systems beyond just the technical implementation details.

Consider how user experience might be altered and affected due to the
probabilistic nature of ML models.

#### User Experience

- ML systems behave probabilistically, providing "mostly correct" predictions
that can be inconsistent. This differs from traditional deterministic software.
- High latency inferences can also negatively impact user experience.
- Techniques to improve user experience include:
    - Ensuring consistency by defining rules on when to return the same or new predictions
    - Showing multiple top predictions for a single input to increase chance of a correct one
    - **Smooth Failing**: Having backup systems to provide fast but less accurate responses when main model is too slow

#### Team Structure

Cross-functional teams with subject matter experts involved early on aid 
developing better ML systems suited for the domain.

##### End-to-End Data Scientists

Two approaches for team structure:

- Separate data science and MLOps teams 
    - Pros: Specialized hiring, clear responsibilities
    - Cons: Communication overhead, finger-pointing, limited end-to-end context
- Data scientists own the entire process
    - Pros: End-to-end ownership, context 
    - Cons: Extremely broad skill requirements, may dislike ops work
    - Having good supporting tools/infrastructure is critical for this approach

#### Responsible AI

Responsible AI is the practice of designing, developing, and deploying AI
systems with good intention and sufficient awareness to empower users, to
engender trust, and to ensure fair and positive impact to society. It consists of
areas like fairness, privacy, transparency, and accountability.

##### Irresponsible AI: Case Studies

Case studies like UK exam grading algorithm and Strava fitness data illustrate
failures due to factors like:

- Biased or unrepresentative training data
- Lack of transparency and public scrutiny 
- Prioritizing the wrong objectives
- Unintended privacy violations despite anonymization

##### A Framework for Responsible AI

- Identify sources for **model biases** throughout the project lifecycle
- Understand **data-driven approach limitations**  
- Be aware of **trade-offs between objectives** like privacy vs accuracy
- Use **model cards** for transparency
- Establish concrete **processes to audit for and mitigate biases**
- **Stay updated** on the latest responsible AI research and best practices

The key takeaway is that developing ML systems isn't just a technical
endeavor - it critically involves human-centric aspects like user experience,
cross-functional collaboration, and proactively building trustworthy,
ethical AI systems that account for societal implications.
Ignoring these human factors can lead to user frustration, organizational
inefficiencies, and negative real-world consequences.

<p align="center">~ The End ~</p>
