<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Sensors, Control and Interfacing</h2>
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
              <img src="img/sensors.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
              	Sensors control and interfacing was an extension of circuits and signal analysis from second year. It was an interesting 
              	subject in that it was very relevant to things we use in real life. Part one of the course dealt with sensors, for example 
              	RTDs (resistance temperature detector) and operations on the signal in analog domain. The content taught included numerical 
              	examples on solving the different parameters of the sensors and on other operations and properties such as amplification 
              	and signal-to-noise ratios.
              </p>
              <p>
              	Due to the COVID-19 situation, there was no final exam also the content was tested in two quizzes- one for part 1 
              	and another for part 2. The format of the quizzes was made to be similar to the final exam and so practicing from 
              	past papers was a good way to study for them. The questions on the first quiz were very similar to the past final 
              	exam questions so I managed to do very well in it.
              </p>
              <p>
              	Part two of this course dealt with operations on signals in the digital domain. Thus the content covered Laplace 
              	and Z transforms, system stability conditions, and controller design. All the topics were interrelated and quite 
              	mathematical, and involved a lot of algebra to solve for a system transfer function, check for its stability and 
              	find the best controller parameters.
              </p>
              <p>
              	The quiz for the second part was very different from the final exam format and was a surprise for me 
              	since I had prepared only by solving past papers.
              </p>
              <p>
              	Additionally, 50% of the final grade was determined by lab work. It was to be done in pairs and the task was to 
              	design an amplification circuit for the output of a pulse plethysmograph. A good portion of the grade was also 
              	determined by the implementation of an additional feature which each group had to come up with on their own.
              </p>
              <p>
              	I was paired with a friend who I made worked with before and we both had a similar approach to the tasks so we 
              	worked well together. We were given an Arduino board, resistors, capacitors and ICs to work with for the 
              	project. The final results had to be displayed using Matlab. 
              </p>
              <p>
              	We were both weak in circuits so we faced some difficulty in the project. After a lot of perseverance, we 
              	managed to achieve the correct results. After completing the basic task, we had to move on to the additional 
              	feature. We chose to make the additional feature in Matlab instead of modifying the given circuit. 
              </p>
              <p>
              	Our additional feature was twofold-
              </p>
              <ol>
              	<li>Calculate heart rate</li>
              	<li>Play audio alerts in 4 different languages for heart rate high/low/normal</li>
              </ol>
              <p>
              	It was a unique feature that no other group had done and if was fun to make as well! 
              	We recorded the audio alert messages by playing the messages on google translate. 
              	Then we integrated it with the rest of our Matlab program.
              </p>
              <p>
              	We also had to present our understanding of the circuit for an oral assessment. We prepared slides and 
              	rehearsed for the presentation which was in a casual setting with just the professor and us. The professor 
              	asked us questions on the different parts of the circuit for example what would happen on switching or 
              	changing certain components. We were able to answer the questions correctly and did well for the assessment.
              </p>
              <p>I also managed to secure an A- grade for this module.</p>
            </div>
          </div>
        </div>
      	<div class="col-md-4">
      		<div class="widget-sidebar widget-tags">
      			<h5 class="sidebar-title">Keywords</h5>
      			<div class="sidebar-content">
      				<ul class="tag-content">
      					<li>Circuit Elements</li>
      					<li>LaPlace Transformations</li>
      					<li>Z-Transformations</li>
      					<li>Matlab</li>
      					<li>Group Project Experience</li>
      				</ul>
      			</div>
      		</div>
      		<div class="widget-sidebar">
      			<h5 class="sidebar-title">More Posts</h5>
      			<h6>Courses taken in the same semester or experiences with related concepts</h6>
      			<div class="sidebar-content">
      				<ul class="list-sidebar">
      					<li><a href="/bpr?p=dsp-blog">Digital Signal Processing</a></li>
      					<li><a href="/bpr?p=up-blog">Microprocessor Based Systems Design</a></li>
      					<li><a href="/bpr?p=neuralnets-blog">Neural Networks and Deep Learning</a></li>
      					<li><a href="/bpr?p=csa-blog">Circuits and Signal Analysis</a></li>
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

