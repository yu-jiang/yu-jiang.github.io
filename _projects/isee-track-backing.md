---
title: ISEE Autonomous Trailer Backing
slug: isee-track-backing
category: industry
status: Product Development
status_class: product
timeline: 2019 - 2020
description: Control-based planning and control algorithms for autonomous trailer backing in complex yard environments, developed while leading the controls team at ISEE.
summary: Control-based planning for autonomous trailer backing with trailer dynamics and obstacle avoidance in yard operations.
keywords: ISEE, autonomous vehicles, track backing, trajectory planning, path planning, trailer control, MATLAB Simulink
tech_stack:
  - Path Planning
  - Autonomous Vehicles
  - Trailer Control
  - MATLAB/Simulink
video:
  type: linkedin
  url: "https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:6958900231795077120?compact=1"
  title: "ISEE Autonomous Trailer Backing Solution"
image: "/images/projects/isee-track-backing.jpg"
featured: true
order: 2
permalink: /projects/trailer-backing/
---

<article class="project-detail">
  
  <!-- Project Header -->
  <header class="project-header-detail">
    <div class="project-hero">
      <img src="{{ page.image }}" alt="{{ page.title }}" class="project-hero-image">
      <div class="project-hero-overlay">
        <h1 class="project-title-large">{{ page.title }}</h1>
        <p class="project-subtitle">Advanced Trajectory Planning for Complex Maneuvering</p>
      </div>
    </div>
    
    <div class="project-meta-bar">
      <div class="project-status-large">
        <span class="status-badge {{ page.status_class }}">{{ page.status }}</span>
        <span class="timeline">{{ page.timeline }}</span>
      </div>
      <div class="project-tags-large">
        {% for tech in page.tech_stack %}
        <span class="tag-large">{{ tech }}</span>
        {% endfor %}
      </div>
    </div>
  </header>

  <!-- Project Overview -->
  <section class="project-section">
    <h2>Project Overview</h2>
    <div class="content-grid">
      <div class="content-main">
        <p class="lead-paragraph">
          The ISEE Autonomous Trailer Backing project focused on control‑based planning and control for autonomous vehicles performing complex backing maneuvers in industrial yard environments. The work addressed the challenges of maneuvering trucks with trailers in tight spaces while avoiding obstacles.
        </p>
        
        <p>
          As Controls Team Lead at ISEE (isee.ai), I created the controls team and led several engineers. I developed control‑based planning methods and control algorithms tailored to the unique dynamics of truck–trailer combinations during backing maneuvers.
        </p>
        
        <h3>Technical Challenge</h3>
        <p>
          Backing a truck with a trailer presents unique control challenges due to non‑holonomic constraints and inherent instability. The trailer amplifies steering inputs, making precise control difficult. Our solution used control‑based planning with models of the combination vehicle to generate feasible, safe trajectories aligned with yard constraints.
        </p>
        
        {% if page.video %}
        <div class="video-embed">
          <h4>Autonomous Track Backing in Action</h4>
          <iframe src="{{ page.video.url }}" height="399" width="504" frameborder="0" allowfullscreen="" title="{{ page.video.title }}"></iframe>
        </div>
        {% endif %}
      </div>
      
      <div class="content-sidebar">
        <div class="info-box">
          <h4>Project Details</h4>
          <ul class="project-specs">
            <li><strong>Company:</strong> ISEE (isee.ai)</li>
            <li><strong>Focus:</strong> Autonomous Yard Operations</li>
            <li><strong>My Role:</strong> Controls Team Lead</li>
            <li><strong>Key Challenge:</strong> Trailer Backing Dynamics</li>
            <li><strong>Status:</strong> {{ page.status }}</li>
            <li><strong>Applications:</strong> Industrial yard automation</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Technical Details -->
  <section class="project-section">
    <h2>Technical Contributions</h2>
    
    <div class="tech-contributions">
      <div class="contribution-item">
        <h3>Trajectory Planning Algorithms</h3>
        <p>Developed sophisticated path planning algorithms that account for the complex kinematics and dynamics of truck-trailer systems during backing maneuvers.</p>
      </div>
      
      <div class="contribution-item">
        <h3>Constraint Optimization</h3>
        <p>Implemented advanced optimization techniques to handle non-holonomic constraints, obstacle avoidance, and operational limitations in industrial environments.</p>
      </div>
      
      <div class="contribution-item">
        <h3>Real-Time Control Systems</h3>
        <p>Designed control systems capable of executing complex maneuvers in real-time while maintaining safety and precision requirements.</p>
      </div>
    </div>
  </section>

  <!-- Impact & Results -->
  <section class="project-section">
    <h2>Impact & Results</h2>
    <div class="impact-metrics">
      <div class="metric-card">
        <div class="metric-number">cm‑level</div>
        <div class="metric-label">Lateral accuracy when docking/parking in customer yards</div>
      </div>
    </div>
    <p class="impact-description">
      In customer yard operations, the system achieves centimeter‑level lateral accuracy during docking and parking.
    </p>
  </section>

  <!-- External Links -->
  <section class="project-section">
    <h2>Learn More</h2>
    <div class="external-links">
      <a href="https://www.isee.ai" class="link-card" target="_blank">
        <h4>ISEE Website</h4>
        <p>Learn more about ISEE's autonomous vehicle technology</p>
      </a>
    </div>
  </section>

</article>