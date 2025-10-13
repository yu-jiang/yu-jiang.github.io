---
layout: base
title: Updates
description: Professional updates, research achievements, and career milestones from Dr. Yu Jiang's work in control systems and autonomous vehicles.
keywords: Yu Jiang updates, research news, career milestones, publications, professional achievements
permalink: /updates/
---

<div class="updates-container">
  <header class="updates-header">
    <h1>Professional Updates</h1>
    <p class="updates-intro">Career milestones, research achievements, and professional developments in control systems and autonomous vehicle technology.</p>
  </header>

  <section class="updates-content">
    {% assign all_posts = site.posts %}
    
    <!-- Filter and display posts from news category primarily, plus significant blog posts -->
    {% assign news_posts = site.posts | where: "categories", "news" %}
    {% assign blog_posts = site.posts | where: "categories", "blog" %}
    {% assign update_posts = news_posts | concat: blog_posts %}
    
    {% if update_posts.size > 0 %}
      <div class="updates-grid">
        {% assign date_format = site.date_format | default: "%b %-d, %Y" %}
        
        {% for post in update_posts limit:20 %}
        <article class="update-card">
          <div class="update-header">
            <div class="update-meta">
              <time class="update-date">{{ post.date | date: date_format }}</time>
              <span class="update-category">{{ post.category | capitalize }}</span>
            </div>
            <h2 class="update-title">
              <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
            </h2>
          </div>
          
          {% if post.meta %}
            <p class="update-excerpt">{{ post.meta }}</p>
          {% elsif post.excerpt %}
            <p class="update-excerpt">{{ post.excerpt | strip_html | truncatewords: 25 }}</p>
          {% else %}
            <p class="update-excerpt">{{ post.content | strip_html | truncatewords: 25 }}</p>
          {% endif %}
          
          {% if post.tags and post.tags.size > 0 %}
            <div class="update-tags">
              {% for tag in post.tags limit:3 %}
                <span class="update-tag">{{ tag }}</span>
              {% endfor %}
            </div>
          {% endif %}
          
          <div class="update-footer">
            <a href="{{ post.url | relative_url }}" class="read-more-link">Read Full Update →</a>
          </div>
        </article>
        {% endfor %}
      </div>
      
      <!-- Pagination or Load More could go here -->
      {% if update_posts.size > 20 %}
        <div class="updates-pagination">
          <p class="pagination-info">Showing recent 20 updates. <a href="/blog-archive/">View all updates</a></p>
        </div>
      {% endif %}
      
    {% else %}
      <div class="no-updates">
        <h3>No updates found</h3>
        <p>Professional updates and achievements will be posted here.</p>
      </div>
    {% endif %}
  </section>

  <!-- Categories Section -->
  <aside class="updates-sidebar">
    <div class="sidebar-section">
      <h3>Update Categories</h3>
      <div class="category-links">
        <a href="/blog-categories/" class="category-link">
          <span class="category-name">All Categories</span>
          <span class="category-count">{{ site.posts.size }}</span>
        </a>
        
        {% assign news_posts = site.posts | where_exp: "post", "post.categories contains 'news'" %}
        {% if news_posts.size > 0 %}
        <a href="/blog-categories/#news" class="category-link">
          <span class="category-name">Professional News</span>
          <span class="category-count">{{ news_posts.size }}</span>
        </a>
        {% endif %}
        
        {% assign blog_posts = site.posts | where_exp: "post", "post.categories contains 'blog'" %}
        {% if blog_posts.size > 0 %}
        <a href="/blog-categories/#blog" class="category-link">
          <span class="category-name">Technical Posts</span>
          <span class="category-count">{{ blog_posts.size }}</span>
        </a>
        {% endif %}
        
        {% assign notes_posts = site.posts | where_exp: "post", "post.categories contains 'notes'" %}
        {% if notes_posts.size > 0 %}
        <a href="/blog-categories/#notes" class="category-link">
          <span class="category-name">Research Notes</span>
          <span class="category-count">{{ notes_posts.size }}</span>
        </a>
        {% endif %}
      </div>
    </div>
    
    <div class="sidebar-section">
      <h3>Recent Highlights</h3>
      <div class="recent-highlights">
        {% assign featured_posts = site.posts | where_exp: "post", "post.featured == true" | limit: 3 %}
        {% if featured_posts.size == 0 %}
          {% assign featured_posts = site.posts | limit: 3 %}
        {% endif %}
        
        {% for post in featured_posts %}
        <div class="highlight-item">
          <h4><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h4>
          <p class="highlight-date">{{ post.date | date: date_format }}</p>
        </div>
        {% endfor %}
      </div>
    </div>
  </aside>

</div>