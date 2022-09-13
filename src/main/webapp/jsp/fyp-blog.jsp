<%@include file="blog-header.jspf" %>

  <!--/ Intro Skew Star /-->
  <div class="intro intro-single route bg-image" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <h2 class="intro-title mb-4">Final Year Project</h2>
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
              <img src="img/fyp.png" class="img-fluid" alt="" width="70%">
            </div>
            <div class="article-content">
              <p>
                The Final Year Project or FYP is the most important project in the entire Engineering degree program. 
                Every engineering student has to complete a year - long project and achieve significantly good results in 
                order to achieve a good final grade. The FYP is a project with the highest stakes in the whole four year 
                degree since it can heavily affect the final semester GPA as well as the overall final CGPA.
              </p>
              <p>
              	A good decision I had taken earlier was to overload modules in some of the previous semesters to reduce 
              	the workload in final year. This allowed me to focus more on the project and its deliverables.
              </p>
              <p>
              	After meeting with several professors before and during the FYP selection period, I decided to work under 
              	<a href="https://personal.ntu.edu.sg/asjagath/">Professor Jagath Rajapakse</a>, 
              	whose area of research is computational and systems biology. The project he had in mind for me was 
              	titled "3D Multi-Modality Medical Image Registration". The objective was to build a framework that could 
              	perform unsupervised medical image registration which can then be used for examination, diagnosis, treatment of 
              	diseases. He also mentioned that the project was to be patented and that drafting a Technical Disclosure (TD) 
              	would also be one of my tasks during the project. 
              </p>
              <p>
              	I was lucky to be allocated the project we had talked about, as the projects are allocated randomly among a 
              	list of preferred projects which students have to submit in the system. The project allocation process happens 
              	in the last 2 weeks of the second semester of third year in order to give the students some additional time 
              	during the summer to work on their projects.
              </p>
              <p>
              Once I was allocated the project, the professor gave me a few research papers to read and study the concepts 
              relevant to the project. I was also given access to the GitHub repository with the code I was to work on. I 
              spent the summer before the official start of the project term studying the concepts such as the properties of 
              different kinds of medical scans such as CT and MRI, as well as the definition and kinds of image registration. 
              I also did some research on the current methods and their performance since the project was pending a patent, 
              and also learning some basic PyTorch coding.
              </p>
              <p>
              	This project was started the year before by another FYP student. However, she was unable to complete it to 
              	the required stage, and the framework was not tested enough to patent. So, my contribution to the project was 
              	to perform more experiments with more datasets and improve the performance of the framework. 
              </p>
              <p>
              	The general idea of image registration is that it deals with one pair of medical scans, called the fixed 
              	and moving scans, and performs registration by warping the moving one to align with the fixed one using a 
              	learned deformation field. Thus the principal objective is learning the deformation field to perform the warping.
              </p>
              <p>
              	Our framework aims to perform this task in a completely unsupervised manner, i.e. without any ground truth 
              	registered images. We achieved this by introducing image augmentation using CycleGAN as well as multiple 
              	similarity metrics to gauge the quality of registration.
              </p>
              <p>
              	Once the project officially kicked off on the first day of the academic year, the professor assigned a PhD 
              	student mentor to guide me and help me work on the project. We started work first by examining the existing 
              	code repository. Understanding the files and code which was not well documented was a challenging task for us 
              	and took us a few months to complete. In the process we spotted several errors and our next task was to fix those.
              </p>
              <p>
              	The first major issue we fixed was the noisy images generated by the CycleGAN. After fixing this issue, 
              	we moved on to the second major issue that took up the bulk of the project time. 
              </p>
              <p>
              	A new dataset had been shared with Professor Jagath by a research organisation in France. He had then shared 
              	the dataset with us to conduct experiments with our framework. This dataset posed several challenges to our framework 
              	which we spent the rest of the project duration evaluating and fixing.
              </p>
              <p>
              	We observed extremely poor results from the framework on images from this dataset. After several weeks of research 
              	we found a few helpful solutions such as cropping out only the essential parts of the image for registration and 
              	performing affine alignment on the images before registration. Of the solutions attempted, affine alignment gave 
              	us the best results. Further experimentation was conducted on not only our framework but also other prominently 
              	used methodologies to observe the behaviour of each system with the new dataset.
              </p>
              <p>
              	Once we achieved sufficiently good results, we validated that our method had the 
              	best performance using K-Fold Cross Validation and hyperparameter tuning.
              </p>
              <p>
              	The experiments and coding were performed on the SCSE BioInformatics Laboratory GPU servers. The coding was 
              	all done in Python and the models were built using PyTorch. JupyterLab environment was used to code the 
              	python scripts and Jupyter notebooks where visualisation was needed.
              </p>
              <p>
              	At the end of the project, I had my final presentation to Professor Jagath along with my examiner 
              	<a href="https://personal.ntu.edu.sg/AdamsKong/">Professor Adams Kong</a>. 
              	Both professors were impressed by my work as well as my presentation, which reflected back 
              	as an A+ grade for the FYP.
              </p>
              <p>
              	The whole project experience was extremely rewarding and I learnt many new things about how intensive 
              	research can be as well as how to write a research paper and a TD. My project is also featured on the 
              	<a href="https://www.ntu.edu.sg/scse/news-events/news/technovation-2022#Content_C005_Col02">NTU Technovation 2022</a> 
              	page along with other highly graded projects of the year.
              </p>
              <p>
              	The project also introduced me to the medical applications of Machine Learning and I hope 
              	to get an opportunity to further explore this area.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->

<%@include file="blog-footer.jspf" %>

