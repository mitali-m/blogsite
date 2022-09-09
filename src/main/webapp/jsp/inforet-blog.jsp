<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Information Retrieval</h2>
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
              <img src="img/inforet.png" class="img-fluid" alt="" width="400" height="200">
            </div>
            <div class="article-content">
              <p>
              	Information Retrieval was another technical elective I had taken in the final semester. It was divided into 
              	three assessment components- the first being a quiz, the second was a project and the third one was the final 
              	exam. The quizzes were of low weightage but the project was 35% making it quite a high-weightage important project.
              </p>
              <p>
              	The concepts dealt with were different methods and algorithms used for information retrieval such as the boolean 
              	retrieval, biwords, levenshtein distance, tf-idf algorithm, web search, andv arious methods of evaluating search 
              	accuracy such as precision, mean average precision (MAP) and others.
              </p>
              <p>
              	The course content was quite heavy and theoretical and needed a lot of memorisation especially because the final 
              	exam would ask theory questions and we were expected to answer them directly from the lecture material. The lectures 
              	themselves were very intensive as many concepts were fit into a single two hour lecture. Understanding the topics was 
              	not as hard since the basic idea behind them was quite simple.
              </p>
              <p>
              	The project was a group based and needed us to choose our own groups of 3-6 participants to work on the project. 
              	I had taken the course along with a friend but since we did not know other people, the rest of the group was randomly 
              	allocated. Our group finally had a total of 5 members with 4 final year students and one third year student.
              </p>
              <p>
              	The objective of the project was to develop an information search system based of a self-defined problem statement. 
              	We had to use Apache Solr as the information storage and retrieval system and build a web interface to search for 
              	and display the information. Additionally, we also needed to perform sentiment analysis using machine learning models 
              	on the data that was retrieved. The data itself was to be obtained using a web crawler.
              </p>
              <p>
              	The first group meeting went well with all the group members proactively voicing ideas on the tech-stack and kind of 
              	data we can base our project on. I was beginning to consider myself lucky to have another good random group allocation. 
              	However, by the second meeting it became clear that my friend and I would need to take the lead on the project since the 
              	group members seemed very reluctant to work on the information retrieval system or the web application. Thus we divided 
              	the tasks such that we would work on those two components and the rest of the team would work on the data crawling and 
              	sentiment analysis portions.
              </p>
              <p>
              	As we were also new to Solr, we decided to do some research on it before starting our code. Referring to the Solr 
              	documentation helped us gain some confidence with using the system itself and previous years projects gave us an 
              	idea of the kind of system we needed to build. For the web application we decided to build a simple Flask application 
              	with ReactJS as the frontend. My friend took charge with the frontend and I took the responsibility of the backend and 
              	configuring and setting up Solr. We worked for days together to make the system work while also helping the rest of 
              	the group with their concerns. We also simultaneously worked on the report for submission.
              </p>
              <p>
              	After three weeks of hard work, we had built our information retrieval system and completed the report as well. 
              	After many rounds of final checking we submitted the project 3 minutes before the deadline!
              </p>
              <p>
              	Since the assignment deadline was about two weeks before the exam, we had a few extra days to study for it, 
              	unlike the situation with the Machine Learning assignment. But even so, this was only one of the first 
              	deadlines of the semester. I had to manage the machine learning assignment, studying for three exams 
              	and the FYP load despite having submitted this project. 
              </p>
              <p>
              	In spite of the situation, I managed to do well in the exam, which stayed true to the pattern indicated in the past 
              	papers which gave me a good idea on what to expect. The hard work paid off as a final A grade!
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

