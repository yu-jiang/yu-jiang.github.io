---
title: Setting up Jekyll in Windows
category: notes
---

# Download ruby and dev kit from http://rubyinstaller.org/downloads/

# Install both of them. When install ruby, it is better to check the option to add the path. Install the kit to c:\DevKit

# Open cmd, and cd to c:\DevKit

# Run

>> ruby dk.rb init
>> ruby dk.rb install
>> gem install jekyll

# To turn on jekyll, enter

>> jekyll serve --watch --baseurl ""
