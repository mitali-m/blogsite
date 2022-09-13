<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Internship at Panasonic</h2>
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
              <img src="img/panasonic.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
              	NTU requires all students to complete a five month internship as a graduation requirement. The university provides an internship search 
              	portal where they list the openings for students to take a look and decide which places they want to apply to. The application process starts early in the 
              	previous semester to make sure there is ample time for everyone to secure an internship. I started my applications around the same time 
              	as my batchmates; scrolling through the application portal looking for a position that interested me. I think the main criterion I 
              	focused on while searching is the actual work itself and not the company since I thought it would be better to consider the internship 
              	as a learning experience and focus on that.
              </p>
              <p>
              	I applied to Panasonic R&D Center Singapore because I noticed something interesting in their job description. The major requirement was 
              	proficiency in machine learning concepts and programming skills. It made me wonder if that meant that I will be able to 
              	work on a variety of projects rather than one specific area since the requirement was quite vague. I submitted my resume and 
              	transcript to the portal and anxiously waited for the results. The specific position I applied for was 
              	<strong>Machine Learning Intern</strong> with the <strong>Learning and Vision (LV) Team</strong>
              </p>
              <p>
              	Soon after, I was invited for an interview where my to-be supervisor and the LV team manager were present. They asked me 
              	questions about my projects and experiences which I elaborated as confidently as I could and I even 
              	showed them this website! They seemed pretty impressed so I was fairly optimistic about my placement. Sure enough, I was offered 
              	the internship that very day! It was an extremely joyful moment for me since I was looking forward to working in R&D to understand 
              	how it is after my brief corporate experience with <a href="/bpr?p=moveinsync-blog">MoveInSync</a>, just to experience another flavor of internships.
              </p>
              <p>
              	I was supposed to intern for the entire first half of 2021 but I decided to start interning a month before the official 
              	university start date in January because I wanted to spend my December break meaningfully since I was unable to return home 
              	to India due to the COVID-19 situation. So, my internship started on 7th December 2020. I was nervous and anxious about 
              	what was to come but excited for it at the same time.
              </p>
              <p>
              	I worked on four main projects during the six months of the internship. They were as follows:
              </p>
              <ol>
              	<li>People Counting Application</li>
              	<li>Crowd Density Estimation</li>
              	<li>Room Occupancy and Social Distancing Detection Application</li>
              	<li>Loitering Detection Application</li>
           	  </ol>
           	  <p>
           	  	The salient details of the technologies used are as follows:
           	  </p>
           	  <ol>
              	<li>Ubuntu 18.04 Desktop</li>
              	<li>Anaconda Virtual Environment</li>
              	<li>Python 3.8</li>
              	<li>Flask and SocketIO Packages</li>
              	<li>PyTorch</li>
           	  </ol>
              <p>	
              	The generic theme across all the projects I worked on was Computer Vision. I also dealt with some simple image and video data processing. 
              	The following contents will briefly describe the project aim and my contribution to each of the projects.
              </p>
              <p>
              	The first project was for the Singapore Flyer and aimed at estimating the number number of people on each floor 
              	of the Flyer building. I was provided with a pre-trained PyTorch model, some algorithms to refer to and CCTV videos 
              	from the Flyer to test on. Initially, I needed to test the existing algorithm to benchmark its performance and 
              	accuracy. Additionally, my supervisor tasked me to develop a basic web application to stream multiple of these cameras 
              	onto the same web page to show the client. So, I combined these tasks into one and developed the web application in Flask and 
              	used it to benchmark the accuracy. On reporting that there were issues with the existing algorithm such as efficiency 
              	and the quality of the code itself, my supervisor asked me to create my own algorithm. In the process, I developed two 
              	core algorithms:
              </p>
              <ol>
              	<li>Core People Counting Algorithm</li>
              	<li>Object Tracking Algorithm</li>
              </ol>
              <p>
              	The web app served as a template to create a standalone GUI application by another employee who I worked together with 
              	in later stages to integrate my backend application server with the GUI. The integration process was an iterative long one 
              	with many repetitions and many rounds of testing both in the office as well as in the Panasonic Customer Experience Center 
              	where <strong>my application was demonstrated to customers</strong>.
              </p>
              <p>
              	Additionally, I performed data collection as we faced some issues with one of the cameras which led us to believe re-training would 
              	be necessary. However, due to the time limitations of the internship I was unable to perform the training itself.
              </p>
              <p>
              	The second project was focused on room occupancy and social distancing. It was an extension of the People Counting Project 
              	and used the same model and utility methods provided. I had to develop algorithms to check that a room 
              	is occupied upto a threshold and that the occupants are maintaining social distancing. The code also had to raise an alert to the GUI 
              	on violation of the constraints. To do this, the main algorithm I developed was the <strong>Social Distancing Alert Algorithm</strong>. 
              	The algorithm showed good performance in detecting social distancing violations.
              </p>
              <p>
              	For the occupancy component, I also created a dynamic occupancy threshold to be received from the GUI so that the user can decide 
              	how many people are allowed to be in a room at any instant while the program is running.
              </p>
              <p>
              	The third project I worked was a further extension of the first and third projects to detect loitering in a certain area of a room. 
              	I developed a <strong>Loitering Detection Algorithm</strong> integrated into the object tracking module.
              </p>
              <p>
              	All three projects were to be integrated with a standalone GUI application as mentioned above. The GUI app was developed by 
              	another employee with whom I had to work together to integrate the frontend and backend to create a complete application. 
              	We devised a communication model and protocol to pass information between the two components and integrated them together.
              </p>
              <p>
              	The final project I worked on was a short-term exploratory project for something the team was looking into. The aim was 
              	Crowd Density Estimation. Basically, the project aimed at exploring the existing methodologies to perform the task. I 
              	conducted many experiments with existing models and datasets. I also researched on new datasets to conduct more experiments. 
              	Further, I prepared a report with all the results and presented them to the team manager as well.
              </p>
              <p>
              	In addition to the work, I also made new friends and acquaintances through the internship. Having daily lunches with 
              	my fellow interns in office, chatting with full-time employees and trainees added to the overall wholesome experience.
              </p>
              <p>
              	The internship at Panasonic R&D Center Singapore was an excellent experience with many takeaways, especially because through 
              	this experience has boosted my confidence with Python both in Object-Oriented Programming as well as Machine Learning 
              	aspects. I hope to have an opportunity to work with Panasonic R&D Center Singapore again!
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

