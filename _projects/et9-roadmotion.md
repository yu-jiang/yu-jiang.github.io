---
layout: project
title: RoadMotion Technology Demo on NIO ET9
permalink: /projects/roadmotion/
description: ClearMotion's RoadMotion active suspension technology deployed as a demonstration on NIO ET9 vehicle - showcasing productionizable technology for automotive partners.
keywords: RoadMotion, ClearMotion, active suspension, vehicle dynamics, control systems, automotive technology demo, NIO ET9

# Header
hero_image: https://preview.thenewsmarket.com/Previews/ATFR/StillAssets/1920x1080/667660.jpg
subtitle: Demonstration of Productionizable Active Suspension Technology
status_label: Technology Demo
status_class: demo
timeline: 2019 - Present
tags:
  - Active Suspension
  - Vehicle Dynamics
  - Control Theory
  - Demo Vehicle

# Sidebar
info_box:
  title: Project Details
  specs:
    - { label: "Demo Vehicle", value: "NIO ET9 Flagship Sedan" }
    - { label: "Technology", value: "ClearMotion RoadMotion" }
    - { label: "My Role", value: "Senior Technical Specialist — Advanced Research" }
    - { label: "Focus Areas", value: "SLAM, Motion Planning, Control" }
    - { label: "Status", value: "Productionizable Technology Demo" }
    - { label: "Commercialization", value: "Working with automotive partners" }

# Lead + Video
lead: >-
  RoadMotion brings together four core building blocks that also underpin autonomous driving systems: road perception, SLAM, motion planning, and control. The system’s primary focus is the Z‑axis (vertical dynamics) to deliver ride quality and comfort, while also informing XY planning and control for better composure during maneuvers.

video:
  title: RoadMotion Technology in Action
  src: https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:7368613841292800000?compact=1
  height: 399
  width: 504

# Contributions
contributions:
  - title: SLAM for Road Surfaces
    text: Designed SLAM components to map road disturbances and localize the vehicle within that map using available sensors and signals.
  - title: Preview‑Based Motion Planning
    text: Developed planning logic that turns preview information into horizon‑based ride/handling objectives and feasible trajectories.
  - title: Real‑Time Control
    text: Implemented and tuned real‑time active suspension control for corner‑level actuation with low latency.

# Impact
metrics:
  - { number: "Z‑axis focus", label: "Ride quality and comfort prioritized" }
  - { number: "Preview‑aware", label: "Improved composure in XY maneuvers" }
  - { number: "Real‑time", label: "Low‑latency disturbance rejection" }
metrics_description: >-
  Demonstrating RoadMotion on the NIO ET9 shows how autonomy‑grade perception, SLAM, planning, and control can be applied to suspension. The result is a productionizable path to smoother ride and better composure.
---

On the NIO ET9, RoadMotion demonstrates a productionizable active suspension that predicts and counters road disturbances before they reach the cabin, commanding each corner in real time.

### How it works

- Road perception: estimate upcoming road inputs and usable preview
- SLAM: build/update a map of road disturbances and localize within it
- Motion planning: convert preview into ride/handling objectives over a horizon
- Control: compute corner‑level commands at millisecond timescales