---
title: Setting up Jekyll in Windows
layout: default
category: [notes, jekyll]
---
### To install
1. Download ruby and dev kit from http://rubyinstaller.org/downloads/
2. Install both of them. When install ruby, it is better to check the option to add the path. Install the kit to c:\DevKit
3. Open cmd, and cd to c:\DevKit
4. Run

	```
	> ruby dk.rb init
	> ruby dk.rb install
	> gem install jekyll
	```

5. To turn on jekyll, enter

	```
	> jekyll serve --watch --baseurl ""
	```

### Already installed
1. Open cmd, and cd to c:\DevKit
2. Run

	```
	> ruby dk.rb init
	```

3. Go to the local website folder and run

	```
	> jekyll serve --watch --baseurl ""
	```
