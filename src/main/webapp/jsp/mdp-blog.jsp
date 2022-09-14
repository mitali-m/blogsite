<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Multidisciplinary Design Project</h2>
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
              <img src="img/mdp.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
              	Multidisciplinary Design Project, or MDP for short, is the only course in the whole Computer Engineering 
              	(and Computer Science) degree which is of four credits; all other courses are only of three or 
              	fewer credits. This is proof that it is one of the hardest courses in the degree and it definitely 
              	lives up to its reputation.
              </p>
              <p>
              	Before talking about my experience, let me first elaborate on the premise and objectives of MDP. I'm doing 
              	this first because it will help to understand the incidents I recount in the following text. 
              </p>
              <p>
              	Essentially, MDP is a project-based module done in teams of 10 members consisting of both Computer Engineering 
              	(CE) and Computer Science (CS) students. The whole course kind of follows a <strong>"do-it-yourself" mindset</strong> where 
              	there are no official lectures and the only support students get are some briefing and technical guides.
              </p>
              <p>
              	The final objectives of MDP are to build a robot that can:
              </p>
              <ol>
              	<li>Fully explore a maze of given fixed dimensions</li>
              	<li>Find the fastest path from the start zone to the goal zone of the maze while passing through a waypoint 
              		(a fixed point on the maze, set on the spot during the competition)</li>
              	<li>Correctly recognise images placed in the maze along with their coordinates</li>
              </ol>
              <p>
              	"The maze" is basically the area the robot needs to explore while avoiding obstacles and recognising images.
              </p>
              <p>
              	The above are the three competitive challenges according to which all MDP groups are ranked. A group's 
              	ranking determines a certain percentage of each group member's grade. Each challenge is a leaderboard of 
              	itself in which the groups are placed in order of performance in the challenges.
              </p>
              <p>
              	The components needed to be developed to achieve these tasks are:
              </p>
              <ol>
              	<li>Actual robot assembly and coding functions for motors and sensors (Physical components connected 
              		to an Arduino board which is in turn connected to a RaspberryPi via serial port)</li>
              	<li>Algorithm development for exploration and fastest path (run on a laptop connected 
              		to the RaspberryPi via WiFi)</li>
              	<li>Andriod module to control the robot since we cannot use laptops while the robot is running 
              		(Android tablet connected to the RaspberryPi via bluetooth)</li>
              	<li>Communication channel to coordinate the three components and pass messages (the RaspberryPi itself)</li>
              	<li>Image recognition module (can be either in the RaspberryPi or a second laptop connected to 
              		the RaspberryPi via WiFi, we did the latter)</li>
              </ol>
              <p>
              	Additional deliverables include a project plan document and clearing a functionality checklist before the 
              	competitive challenges. Each group also has to submit a video and write a wiki blog highlighting 
              	their work at the end of the semester.
              </p>
              <p>
              	Now, on to my experience of MDP!
              </p>
              <p>
              	I had first heard about MDP in year 2 sem 1 as this huge threatening mountain of work all third/fourth years 
              	have to do. I didn't know much about it except that I had seen seniors working on a robot all day in labs before 
              	but I had no idea what they were doing. So I was fairly clueless and nervous but also a little optimistic about 
              	what it would be like.
              </p>
              <p>
              	The first day of MDP was on a Friday morning at 8.30 AM in the lab. Before that, each student was assigned to a 
              	group at random and each group was assigned a lab to come work in. The first shock I received when I checked 
              	my grouping assignment was that I was the only CE student and the rest were all from CS; which basically meant I 
              	was the only one who had any experience in hardware and I would have to directly handle the robot. This was a 
              	scare for me because the only extra experience being a CE student gave me was some coding experience on the 
              	Arduino board and nothing on how to actually assemble a robot. But I decided to cross that bridge when I got there. 
              </p>
              <p>
              	The first lab was more of an introductory session for us to get to know our teammates with who we would be working 
              	with for the rest of the semester. We received our kit, nominated a group leader and MDP AY2020/2021 kicked-off!
              </p>
              <p>
              	We started with a meeting to divide the tasks. I thought being <strong>open about my strengths and weaknesses</strong> 
              	would be better than biting off more than I could chew at the start and underdelivering at the end. So 
              	I told everyone that as a CE student, I do not get experience in robot assembly and that I am as new to 
              	this as the other CS students in the group. They appreciated my honesty and assigned extra manpower 
              	help with the robot.
              </p>
              <p>
              	<strong>I worked as part of the Arduino team</strong> with two others who were brilliant students and did a lot of excellent 
              	work despite not having any experience in hardware. We started assembling the robot with the help of a 
              	very short guide (that only tells how to fit the wheels to the main body) and very useful user manuals of 
              	the components which had schematic diagrams. Within a few hours we were able to assemble the wheels 
              	and the Arduino board. 
              </p>
              <p>
              	Below is a picture of the initial stages of development:
              </p>
              
              <img src="img/mdp-initial.png" style="display:block;margin-left:auto;margin-right:auto;width:30%;">
              <br>
              
              <p>
              	I knew how to write basic programs using the serial port on the Arduino board but I had never programmed 
              	wheels using the given peripheral boards (
              	<a href="/bpr?p=up-blog">microprocessor programming </a> 
              	dealt with programming the wheels of a robot, but it used a different approach altogether and so was not 
              	of any help here). So we had to write our own logic to make the robot move as we needed it to.
              </p>
              <p>
              	The main trouble of working with the motors was <strong>designing a PID controller</strong> to maintain straight line and 
              	accurate motion. Various concepts were involved in designing the controller and it involved a lot of 
              	calculations and trial-and-error for parameter tuning. It was during this process that the Arduino 
              	team started spending whole days together in the lab trying to figure out how to make the robot go straight.
              </p>
              <p>
              	It took us about two to three weeks to complete the motor functionality including straight line motion and 
              	accurate rotation (for any degree such as 90 or even 180). We also finished working on the sensors. 
              	However, we noticed a lot of unreliability in the hardware that kept changing the calibration of both 
              	motors and all six sensors. We had to spend a lot of time trying to recalibrate and fix our motion and 
              	sensor readings.
              </p>
              <p>
              	At the same time, the other teams were working on their tasks as well. However, there was a delay on the 
              	algorithm side as they were working on some documentation deliverable towards the beginning. Thus as the 
              	deadline for the first challenge drew near, there was a lot of pressure on them to finish creating the 
              	algorithm for us to integrate with them and test it out. The other teams had completed most of their 
              	tasks as well.
              </p>
              <p>
              	By that time, the robot was completely assembled and ready to go.
              </p>
              
              <img src="img/mdp-finalfront.png" style="display:block;margin-left:auto;margin-right:auto;width:30%;">
              <br>
              
              <p>
              	By the time recess week came, every group was in a state of chaos under the pressure of the upcoming 
              	challenge in one week's time. Additionally, the COVID-19 restrictions were also preventing many group 
              	members from coming to the lab to help out. Our group was also worried by the continuous needs for 
              	recalibration delaying our checklist clearance and the delays caused because we had to revisit the 
              	algorithm more number of times than we wanted to! I guess that's what iterative development is all about.
              </p>
              <p>
              	After clearing the checklist, two of the group members from other teams stepped up to help out with the 
              	algorithm and eventually managed to complete it on time. However, we lacked enough time to test before 
              	the first run. However, we tested as much as we could and adopted a <strong>"add-as-you-go strategy"</strong> for extra 
              	functionality such as corner-calibration, emergency braking and alignment of the robot needed for the 
              	challenges. 
              </p>
              <p>
              	Despite being short of time, we managed to <strong>top the leaderboards for both exploration and image recognition</strong> for the 
              	first week. It was a completely new experience watching out robot explore the maze as we cannot control it in anyway 
              	and can only hope it completes successfully without hitting an obstacle. Despite doing well in the other challenges, 
              	we failed to clear the leaderboard for fastest path.
              </p>
              <p>
              	There was much more work left to do for the next iteration of the challenges as the battery we were using for our 
              	robot seemed to have become damaged with an increasing voltage upper limit and faster draining time. We managed 
              	to make it to the second run but again failed to clear the fastest path leaderboard due to a calibration miss.
              </p>
              <p>
              	After changing the battery for the last run, we again could not clear the fastest path leaderboard 
              	because we failed exploration that week due to the persistent battery problem.
              </p>
              <p>
              	Unfortunately as the maze becomes harder every week, we were eventually not able to clear the fastest path 
              	leaderboard. However, our final ranks were <strong>third in both exploration and image recognition</strong> 
              	which we were all proud of achieving.
              </p>
              <p>
              	I'd also like to mention that the university was kind enough to give us extra lab contact hours after some 
              	MDP student representatives put in a request for it. The evening hours we spent in the lab working on the 
              	robot made me feel like a real university student working hard and I realised that I had become the senior 
              	working on the robot all day everyday. It was a moment that made me realise I had come very far in NTU 
              	from my days in first and second year observing my seniors working on that mysterious robot. One of my 
              	juniors even pointed out to me that he sees me in the lab working on this all the time :-)
              </p>
              <p>
              	Once the leaderboards were done, the pressure lifted by quite a lot as we only had the wiki blogs and video 
              	left to submit. Both of these went smoothly as well and led to the conclusion of MDP with the disassembly of 
              	the robot. We even took a commemorative shot of the components after disassembling it!
              </p>
              
              <img src="img/mdp-done.png" style="display:block;margin-left:auto;margin-right:auto;width:55%;">
              <br>
              
              <p>
              	Most of my year 3 sem 1 went by with me working on MDP in the lab. I spent almost three days every week 
              	from 8.30 in the morning until the lab closed at 5.30 PM working on the robot in the lab. Many breakfasts and 
              	lunches were sacrificed, but many friends were made instead. It was extremely pressurising and stressful 
              	but, it was rewarding to achieve whatever we did and I was proud of the team and myself for finishing 
              	strong without any major conflicts.
              </p>
              <p>
              	Additionally, the other groups assigned to my lab were also very helpful and cooperative. All groups helped and 
              	received help from each other; we also created a queue system to manage the usage of the maze for testing!
              </p>
              <p>
              	MDP is something every CE and CS student at NTU has to go through and though it seems daunting at the start, 
              	working on one task at a time and trusting my teammates is what got me through it. I also realised that 
              	it is important to accept that it is not possible to oversee every aspect and communication and feedback 
              	within the group is essential for success in such a huge project. The continuous effort we put in and the 
              	perseverance we show are the only factors that can affect results we achieve.
              </p>
              <p>
              	MDP made my semester hard but also fruitful and it is an experience I'll never forget even after I graduate from NTU.
              </p>
            </div>
          </div>
        </div>
      	<div class="col-md-4">
      		<div class="widget-sidebar widget-tags">
      			<h5 class="sidebar-title">Keywords</h5>
      			<div class="sidebar-content">
      				<ul class="tag-content">
      					<li>Arduino Programming</li>
      					<li>Robot Building</li>
      					<li>Group Project Experience</li>
      					<li>A Grade</li>
      				</ul>
      			</div>
      		</div>
      		<div class="widget-sidebar">
      			<h5 class="sidebar-title">More Posts</h5>
      			<h6>Courses taken in the same semester or experiences with related concepts</h6>
      			<div class="sidebar-content">
      				<ul class="list-sidebar">
      					<li><a href="/bpr?p=up-blog">Microprocessor Based Systems Design</a></li>
      					<li><a href="/bpr?p=neuralnets-blog">Neural Networks and Deep Learning</a></li>
      					<li><a href="/bpr?p=sensors-blog">Sensors, Interfacing and Control</a></li>
      					<li><a href="/bpr?p=compnetworks-blog">Computer Networks</a></li>
      				</ul>
      			</div>
      		</div>
      	</div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

