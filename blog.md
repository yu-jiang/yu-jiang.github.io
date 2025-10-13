---
layout: blog
title: Blog - Yu Jiang
description: Blog posts and research updates by Dr. Yu Jiang covering control systems, autonomous vehicles, and applied mathematics.
keywords: Yu Jiang blog, control systems, research updates, autonomous vehicles, applied mathematics
permalink: /blog/
---

<div class="blog-posts">
  <h2 class="section-title">Recent Posts</h2>
  
  <div class="posts-grid">
    {% for post in site.posts limit:10 %}
    <article class="blog-post-card card">
      <div class="post-header">
        <div class="post-meta">
          <time class="post-date">{{ post.date | date: "%B %d, %Y" }}</time>
          {% if post.category %}
          <span class="post-category">{{ post.category }}</span>
          {% endif %}
        </div>
        <h3 class="post-title">
          <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
        </h3>
        {% if post.meta %}
        <p class="post-excerpt">{{ post.meta }}</p>
        {% endif %}
      </div>
      
      <div class="post-content">
        {% if post.excerpt %}
        <p class="post-summary">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
        {% else %}
        <p class="post-summary">{{ post.content | strip_html | truncatewords: 30 }}</p>
        {% endif %}
      </div>
      
      {% if post.thumbnail %}
        <div class="post-thumbnail">
          <img src="{{ post.thumbnail | relative_url }}" alt="Post thumbnail" loading="lazy">
        </div>
      {% endif %}
      
      <div class="post-footer">
        <a href="{{ post.url | relative_url }}" class="read-more-btn">Read More</a>
        {% if post.author %}
        <span class="post-author">by {{ post.author }}</span>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
  
  {% if site.posts.size > 10 %}
  <div class="load-more">
    <a href="{{site.url}}/blog-archive/" class="btn">View All Posts</a>
  </div>
  {% endif %}
</div>