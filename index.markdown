---
layout: sitepage
---

[comment]: # (Insert my picture)
{% include profile.html%}

[comment]: # (Insert my resume below)

# About Me

[comment]: # (Educational)
My name is Yu Jiang (姜宇). I received the PhD degree in Electrical Engineering (Control Theory) from [New York University](https://www.nyu.edu). My PhD research topic was about bringing together reinforcement learning and nonlinear control theory for various applications (see my  [publications]({{site.url}}/publications/) for many of the related work).

[comment]: # (Industry)
I have been working in industry for almost a decade. Upon graduation, I joined [MathWorks](https://www.mathworks.com), and later became a Software Engineer in the controls toolbox team. I was the Tech Lead of the controls team at the autonomous trucking company [ISEE AI](https://www.isee.ai), an MIT spinout. Currently, I am the Principal Scientist in the CTO-office at [ClearMotion](https://www.clearmotion.com). My area of expertise lies in motion planning and control of intelligent vehicles.


[comment]: # (Acamedia Research)
I am engaged in academic research and actively writing research articles, in addition to serving as a reviewer for various journals and conferences. Notably, I am honored to be a member of the editorial board of the prestigious IFAC journal, Control Engineering Practice (CEP). 

[comment]: # (Consulting)
Last by not least, I started my own consulting firm Findop Solutions LLC in early 2020, and I have been working as a part-time technical consultant / advisor for startup tech compainies.


# News
<div>
<ul>
{% for notes in site.posts limit:5 %}
<li>
  [{{notes.date | date: '%D'}}]: 
  {{ notes.meta }}<a href="{{site.baseurl}}{{ notes.url }}"> [...]</a>
</li>
{% endfor %}
</ul>
</div>