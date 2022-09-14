<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Software Engineering</h2>
        </div>
      </div>
    </div>
  </div>
  <!--/ Intro Skew End /-->

  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt4" id="blog">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/se.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
	             Another one of the major project based courses at NTU, Software Engineering focuses on a 
	             group project aimed at developing either an Android or a web application accompanied with 
	             proper documentation which is actually the main focus of the project. At the end of the 
	             development stage, each group is tasked to present their work to their lab supervisors.
              </p>
              <p>
	             The course did not have much teaching in the sense that the lectures were highly theoretical 
	             and only talked about the procedures to be followed while creating the deliverables (documents only) 
	             and did not teach anything about the actual development to be done. Thus it was a very 
	             "do-it-yourself" type course which made it quite stimulating in terms of time management and 
	             learning new things.
              </p>
              <p>
	             My group and I decided to play to all our strengths and develop a web application. We came up with our 
	             website idea and had it approved by out supervisor. Our final plan was to develop a currency rates 
	             portal where users can see the past and current exchange rates of selected currencies, watchlist 
	             them as well as locate money-changers using the Google Maps API. Our most important feature was 
	             the prediction of future currency exchange rates using machine learning based models. 
	             Additionally, we had administrative features to support any database changes that cannot 
	             be done by a normal user.
              </p>
              <p>
	             The deliverables included various documents such as a project plan, work breakdown structure 
	             document, use-case diagram and use-case description document, overall class diagram and 
	             sequence diagrams for the major features. We also had to create a video to highlight our 
	             work, and of course the source code itself.
              </p>
              <p>
	             The first roadblock hit us during the very initial stages of discussion. I was strongly in favour of using 
	             the SpringBoot framework in Java because it is an upcoming and popular framework used in the industry. 
	             Though I had never used it before, I was confident that we would be able to pick it up given that we were 
	             all comfortable with Java. However, another member wanted to develop it using another framework because 
	             he was comfortable with it and confident at using it. This led to a slight conflict in the group as 
	             both of us were trying to push for our respective ideas.
              </p>
              <p>
	             Fearing this would lead to bad-blood in the group, we decided to present our ideas clearly to the other 
	             members and let them take the final decision. We proceeded with a small whiteboard presentation in front 
	             of the whole group and finally my idea was selected.
              </p>
              <p>
              	The technologies we decided to use are:
              </p>
              <ol>
              	<li>SpringBoot framework backend with MVC design pattern</li>
              	<li>MySQL database</li>
              	<li>JDBCTemplate for database integration</li>
              	<li>Frontend in HTML and JSP</li>
              </ol>
              <p>
              	Once we had our tools in place, we divided the responsibilities and started work. Once we all knew 
              	what needed to be done everyone worked hard on their respective segments. I worked on the watchlist 
              	feature which involved all components of the MVC design pattern as well as using the database backend. 
              	Additionally, I created the video deliverable to explain the essential features and their working.
              </p>
              <p>
              Apart from a few more small conflicts along the way, the project went smoothly. Though the final presentation 
              had room for improvement in terms of explanation, I made the video clear enough to make up for it.
              </p>
              <p>
              	A part of everyone's grades were also determined based on group peer evaluations. However, 
              	since my group was quite friendly and we resolved conflicts quickly, I was not too worried 
              	on that aspect. All of us managed to get a good final grade for the course and we were all 
              	very proud of our work.
              </p>
              <p>
	             I think Software Engineering taught me more about web development and group work than the documentation 
	             which was supposed to be the focus of the course. I learned how to peacefully resolve conflicts without 
	             taking them too far and how a degree of willingness to accept other opinions is very important to work 
	             well in a group.
              </p>
            </div>
          </div>
        </div>
      	<div class="col-md-4">
      		<div class="widget-sidebar widget-tags">
      			<h5 class="sidebar-title">Keywords</h5>
      			<div class="sidebar-content">
      				<ul class="tag-content">
      					<li>Java</li>
      					<li>SpringBoot Framework</li>
      					<li>MVC Design Pattern</li>
      					<li>Web Development</li>
      					<li>UML</li>
      					<li>Group Project Experience</li>
      				</ul>
      			</div>
      		</div>
      		<div class="widget-sidebar">
      			<h5 class="sidebar-title">More Posts</h5>
      			<h6>Courses taken in the same semester or experiences with related concepts</h6>
      			<div class="sidebar-content">
      				<ul class="list-sidebar">
      					<li><a href="/bpr?p=oodp-blog">Object-Oriented Programming</a></li>
      					<li><a href="/bpr?p=y2s2-blog">Year 2 Semester 2</a></li>
      				</ul>
      			</div>
      		</div>
      	</div>
      	</div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>


