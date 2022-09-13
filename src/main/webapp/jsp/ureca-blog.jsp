<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Undergraduate Research Experience On Campus (URECA)</h2>
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
              <img src="img/ureca.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
             <p>
                Undergraduate Research Experience on Campus (URECA) is an invite-only research program 
                for students at NTU who have shown academic excellence. The program helps students 
                gain research experience at an early stage to encourage more students to take up 
                research careers. The program lasts for one year with various deliverables along 
                the way.
              </p>
              <p>
                I was lucky enough, and of course worked hard enough, to be offered an invitation 
                to participate in this program in my second year at NTU. I was initially confused 
                as to whether I should take part in the program or not because of the increase in 
                workload, given that I was already nervous about a few subjects in the third semester. 
                I asked some people who had already signed up about why they wanted to do it. Most 
                of the replies I got were related to gaining new experiences and building relations 
                with professors. After collating some responses, I thought that building good 
                relations with professors seemed to be a good enough reason to go for it. 
                Additionally, gaining new experiences outside of coursework would also be helpful 
                to build to my skillset and knowledge-base. So I decided to take up the opportunity 
                and trust that I could manage the increased workload.
              </p>
              <p>
                I met with a few professors whose projects interested me, and eventually chose 
                the project titled 
                <strong>"Deep Learning Based Network Classification with Little Training"</strong>
                supervised by <a href="https://homes.cs.aau.dk/~Arijit/">Professor Arijit Khan</a>. 
                It aimed to develop a way to quickly and accurately classify large amounts of graph 
                data without the need for a lot of hand labelled training data.
              </p>
              <p>
                For the first meeting, there was just a basic introduction between my collaborator, 
                my supervising professor and I. Our supervisor explained the basic objective of 
                the project and a couple of terms; we also decided the schedule for our weekly 
                meetings. The wheels were in motion and I was as excited as ever!
              </p>
              <p>
                The first couple of meetings were more discussion based as our supervisor gave 
                us various research papers to read and understand more about what our project 
                was about. We asked many questions and received a lot of knowledge from our 
                professor and research did not seem like such a far off fantasy anymore.
              </p>
              <p>
                Once we were ready with the objectives of the project and had a basic grasp on the tools and models 
                we were going to use, it was time to get coding! But even before that, we had to do tons (and by tons 
                I mean tons) of data preparation. We had to take a dataset and randomly split it into 10 parts, and we 
                had seven datasets! This task itself took us many days as we needed to write code to split the datasets 
                and take enough time to make sure it was done accurately. The next step was to run each part through 
                three different models and get the initial results. All this was the initial work, and we hadn't even 
                started working on the actual development we were supposed to do.
              </p>
              <p>
                I began to realize the iterative and time-consuming nature of research at this stage. The conversion 
                of the data from the form it was in the dataset to the form the models needed was the most tedious, 
                time-consuming and boring job in the entire research project. The initial results also took very long 
                to obtain because the models took very long to run as the datasets were huge. The initial results were 
                basically labels given by SVM, RF and neural network models on testing data after training with 
                different amounts of labelled data.
              </p>
              <p>
                Our objective was to improve the quality of labels given by these models when trained with very little 
                ground truth labelled data by using a lot of data labelled using our method.
              </p>
              <p>
                After we were done with obtaining the initial results, we started coding on the actual method to 
                label the unlabelled data accurately. This portion of the project was even more iterative than the 
                previous one because we had to keep changing the code and looking for new and better ways to label 
                the data based on Snorkel, a labelling model developed by Stanford University researchers. Snorkel 
                was a fixed entity in our project as it had shown good performance in our attempts so far and it 
                had easily accessible documentation and easy to use methods.
              </p>
              <p>
                After a few months of hard work, we were able to come up with our respective methods which 
                unfortunately could not meet our initial expectations, but gave us valuable insights 
                regarding the problem statement.
              </p>
              <p>
                Somewhere along the way, we had to submit a poster of our approach which is available on my 
                <a href="https://www.linkedin.com/in/mitali-mukherjee/">LinkedIn page.</a> 
                Poster making was an interesting experience as it gave us an avenue to be creative in 
                explaining and displaying our methodology. The poster turned out quite well, and we were 
                happy with it. Our supervisor also approved it in one go!
              </p>
              <p>
              	At the end of the academic year, we also submitted a full fledged academic research paper! 
              	Writing the paper was another interesting experience and required me to bring out all the 
              	English grammar I had learnt in school. We had to write individual separate papers even though 
              	we were collaborators and had to obtain approval separately from our supervisor. My paper turned 
              	out well as well and my supervisor was impressed by it! At the end we had a sweet little farewell 
              	email exchange and our supervisor praised our dedication and hard work.              
              </p>
              <p>
                All in all, URECA was a valuable learning experience and an excellent way to hone my 
                collaboration skills. Also, at the end of the day, having research experience is also a shining 
                star on my resume! The knowledge imparted to me by my supervisor, the teamwork with my collaborator 
                as well as the individual work I did, will all be of great help to me in the future.
              </p>
              <p>
                A must try for any NTU student!
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

