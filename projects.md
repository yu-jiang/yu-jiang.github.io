---
layout: base
title: Projects
description: Featured industry projects and research applications by Dr. Yu Jiang showcasing real-world impact in autonomous vehicles and control systems.
keywords: Yu Jiang projects, NIO ET9, ISEE autonomous vehicles, RoadMotion, active suspension, control systems applications
permalink: /projects/
---

<div class="projects-container">
  <header class="projects-header">
    <h1>Projects</h1>
    <p class="projects-intro">Curated work across industry, research, and education. Each card links to a short write-up with media and technical context.</p>
  </header>

  <!-- 1) Product-Ready Applications / Solutions -->
  <section>
    <h2 class="category-title">Product-Ready Applications / Solutions</h2>
    <div class="projects-grid-3">
      {% assign items = site.data.projects.product_ready_projects | sort: "order" %}
      {% for project in items %}
      <article class="project-card grid-card">
        {% if project.media and project.media.type == "video" %}
          <div class="project-thumb video">
            {% if project.media.source == "linkedin" or project.media.source == "youtube" %}
              <iframe src="{{ project.media.url }}" title="{{ project.media.title }}" frameborder="0" allowfullscreen></iframe>
            {% endif %}
          </div>
        {% else %}
          <a class="project-thumb" href="/projects/{{ project.slug }}/">
            {% if project.media and project.media.type == "gif" %}
              <img src="{{ project.media.url }}" alt="{{ project.media.alt | default: project.title }}">
            {% else %}
              <img src="{{ project.image }}" alt="{{ project.title }}">
            {% endif %}
          </a>
        {% endif %}
        <div class="project-body">
          <div class="project-header">
            <h3 class="project-title">{{ project.title }}</h3>
            {% if project.status %}<span class="project-status">{{ project.status }}</span>{% endif %}
          </div>
          <p class="project-summary">{{ project.summary }}</p>
          <div class="project-links">
            <a href="/projects/{{ project.slug }}/" class="btn btn-primary">Learn More</a>
            {% for link in project.links %}
              <a href="{{ link.url }}" class="btn btn-outline" target="_blank">{{ link.title }}</a>
            {% endfor %}
          </div>
        </div>
      </article>
      {% endfor %}
    </div>
  </section>

  <!-- 2) Doctoral Research -->
  <section>
    <h2 class="category-title">Doctoral Research</h2>
    {% assign items = site.data.projects.doctoral_thesis | sort: "order" %}
    {% for project in items %}
    <article class="project-card grid-card full-width">
      <a class="project-thumb tall" href="/projects/{{ project.slug }}/">
        <img src="{{ project.image }}" alt="{{ project.title }}">
      </a>
      <div class="project-body">
        <div class="project-header">
          <h3 class="project-title">{{ project.title }}</h3>
          {% if project.status %}<span class="project-status">{{ project.status }}</span>{% endif %}
        </div>
        <p class="project-summary">{{ project.summary }}</p>
        <div class="project-links">
          <a href="/projects/{{ project.slug }}/" class="btn btn-primary">Learn More</a>
        </div>
      </div>
    </article>
    {% endfor %}
  </section>

  <!-- 3) Technical Projects -->
  <section>
    <h2 class="category-title">Technical Projects</h2>
    <div class="projects-grid-3">
      {% assign items = site.data.projects.selected_technical_projects | sort: "order" %}
      {% for project in items %}
      <article class="project-card grid-card">
        <a class="project-thumb" href="/projects/{{ project.slug }}/">
          {% if project.media and project.media.type == "gif" %}
            <img src="{{ project.media.url }}" alt="{{ project.media.alt | default: project.title }}">
          {% else %}
            <img src="{{ project.image }}" alt="{{ project.title }}">
          {% endif %}
        </a>
        <div class="project-body">
          <div class="project-header">
            <h3 class="project-title">{{ project.title }}</h3>
            {% if project.status %}<span class="project-status">{{ project.status }}</span>{% endif %}
          </div>
          <p class="project-summary">{{ project.summary }}</p>
          <div class="project-links">
            <a href="/projects/{{ project.slug }}/" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </article>
      {% endfor %}
    </div>
  </section>

  <!-- 4) Educational Projects -->
  <section>
    <h2 class="category-title">Educational Projects</h2>
    <div class="projects-grid-3">
      {% assign items = site.data.projects.educational_projects | sort: "order" %}
      {% for project in items %}
      <article class="project-card grid-card">
        <a class="project-thumb" href="/projects/{{ project.slug }}/">
          <img src="{{ project.image }}" alt="{{ project.title }}">
        </a>
        <div class="project-body">
          <div class="project-header">
            <h3 class="project-title">{{ project.title }}</h3>
            {% if project.status %}<span class="project-status">{{ project.status }}</span>{% endif %}
          </div>
          <p class="project-summary">{{ project.summary }}</p>
          <div class="project-links">
            <a href="/projects/{{ project.slug }}/" class="btn btn-primary">Learn More</a>
            {% if project.links %}
              {% for link in project.links %}
                <a href="{{ link.url }}" class="btn btn-outline" target="_blank">{{ link.title }}</a>
              {% endfor %}
            {% endif %}
          </div>
        </div>
      </article>
      {% endfor %}
    </div>
  </section>

</div>