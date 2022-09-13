<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Machine Learning</h2>
        </div>
      </div>
    </div>
  </div>
  <!--/ Intro Skew End /-->

  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt4" id="blog">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/ml-blog.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
              	Machine Learning was one of the technical electives I had taken in the final semester at NTU. It dealt 
              	with basic machine learning techniques and taught concepts such as decision trees, generalisation and 
              	Bayesian networks in the first half and concepts such as SVM, random forests and dimensionality 
              	reduction in the second half.
              </p>
              <p>
              	The first half of the module was primarily based on more traditional machine learning methods that 
              	did not involve neural networks. Concepts such as decision trees were inference based and the 
              	objective of teaching us these concepts was to intoduce us to the evolution of different techniques 
              	and their pros and cons instead of directly diving into the neural networks and other models. The 
              	concepts in the first half were relatively easy to understand as they were intuitive. However, I 
              	faced some difficulty with the Bayesian Belief networks since they were not as intuitive and required 
              	a lot of practice. Eventually I got better at it as the exams drew near by consistently practicing the 
              	past year paper questions repeatedly to get a hang of the approaches.
              </p>
              <p>
              	The second half of the module dealt with more advanced methods such as SVM and random forests. Though 
              	those concepts were simple enough to grasp, the later topics such as dimensionality reduction and PCA 
              	were relatively much harder, needing many late night study sessions with my friends who were equally struggling.
              </p>
              <p>
              	There was also a course project which constituted 40% of the overall grade with the remaining 60% allocated 
              	to the final exam. We were supposed to form a team of 4 members, select a project from the list of options 
              	provided and work on it starting week 4 of the semester. I made a group with three people I knew out of which 
              	one was a friend I was quite well acquainted with from the first year as we were neighbors for the whole 4 
              	years of university. The topic we selected was the "New York Taxi Fare Prediction" Kaggle challenge as it seemed 
              	to be a relatively simple regression problem statement which we were all confident in. We divided the tasks 
              	in pairs and I worked with my friend for the tasks. This is the same friend I worked with in the NLP assignments 
              	and the ongoing Information Retrieval assignment so we were well aware of each other's work style 
              	and knew how to work together.
              </p>
              <p>
              	Looks can be deceiving, and the project was more complex than we first thought. There were not many features 
              	provided to us and a large part of our efforts went into feature engineering to improve the model performances. 
              	After performing a few basic tests on simple models such as SVM and random forests from ScikitLearn we decided 
              	we needed at least 4-5 more features to get sufficiently good performance. We referred previous students solutions, 
              	YouTube videos and other methodologies to get ideas on which features we can add as well as which model would be 
              	best suited for the purpose of the project. The features we added include Haversine Distance, Bearing Distance, 
              	Airport Distances and others. Also, we selected the XGBoost and LGBM models as they showed the best performance 
              	over the other options such as neural networks and SVMs. 
              </p>
              <p>
              	The dataset we were to use had 55 million rows! This meant a lot of computing power or time would be needed to get 
              	the final results. After several attempts on Google Colab we found that loading all the data at once would not be 
              	possible. Thus we researched on several methods such as loading the data in chunks to load our data into the runtime. 
              	However, none of the methods was successful. We also lacked the time to experiment on further data loading methods 
              	since we were balancing this assignment with other modules, projects and our FYPs. Also the project deadline was 
              	the day before the final exam which we all needed to study for. Thus we decided to optimise memory usage by 
              	combining the models in series. We loaded in a random sample of 22.5 million rows to train one model, deleted the 
              	data and loaded the rest of the rows to train another model and then combined the results of the two models using 
              	a weighted average to get the final results.
              </p>
              <p>
              	We placed high on the Kaggle leaderboard and performed well in the overall statistics of the batch.
              </p>
              <p>
              	The final exam was about 17-20 hours after we finished submitting the project. It was extremely hectic to quickly 
              	wrap up the project, report and record the video presentation while revising for the exam. Although the exam was 
              	open-book, we all knew that meant the questions would never be directly from the lecture material. Watching 
              	videos on YouTube to revise the concepts while executing the codes for the project was a normal for us at the 
              	time. After submitting the project, we quickly started going through each chapter, solving the past papers 
              	and discussing the answers.
              </p>
              <p>
              	Eventually, the exam went well and I achieved an A grade for the module.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

