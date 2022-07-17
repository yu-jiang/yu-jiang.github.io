---
layout: sitepage
---

[comment]: # (Insert my picture)
{% include profile.html%}

[comment]: # (Insert my resume below)

# About Me
Hello. My name is Yu Jiang, and I am based in the Greater Boston Area. I hold a PhD degree in Electrical Engineering (Control Theory) from New York University. I have been working in industry for almost a decade.

I always consider myself as an applied mathematician, and am always passionate in understanding the fundamental mathematics behind every challenging problem and solving it using elegant mathematical tools, such as equations, algorithms, and/or programs. 

I like to share my knowledge and research in publications. In addition to 30+ papers I co-authored and published in top journals or presented in prestigious conferences, I am the first author of the book "Robust Adaptive Dynamic Programming", published by Wiley, 2017.

# News #
<div>
<ul>
{% for notes in site.posts limit:4%}
<li>
  {{notes.date | date: '%D'}} <a href="{{site.baseurl}}{{ notes.url }}">{{ notes.title }}</a>
</li>
{% endfor %}
</ul>
</div>

# Contact
* Follow me on:
[Linkedin](http://www.linkedin.com/in/yujiang26),
[Google Scholar](http://scholar.google.com/citations?user=QYanTRsAAAAJ),
[Facebook](https://www.facebook.com/yu.jiang.26/),
[MATLAB Central](http://www.mathworks.com/matlabcentral/profile/authors/5012545-yu),
[GitHub](https://github.com/yu-jiang/),
[Zhihu 知乎](https://www.zhihu.com/people/yujiangnyu)
* Email (the best way to reach out to me): yu.jiang@nyu.edu
