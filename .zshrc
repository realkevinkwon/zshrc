
	##########################
	#						 #	
	#	ZSHRC				 #
	#						 #	
	#	Author: Kevin Kwon	 #
	#						 #	
	##########################

#	==============
#	COMMAND PROMPT
#	==============

	#	%n		Username of your account.
	#
	#	%m		Name of your device or machine.
	#
	#	%~		Current working directory (home shortened to ~).
	#
	#	%F{}	Set text foreground color by inserting the color (black, red,
	#			green, yellow, blue, magenta, cyan, and white) or xterm color
	#			code (0-255) inside braces (e.g., %F{cyan}). 
	#
	#			Color codes
	#			-----------
	#			4		blue
	#			59		grey37
	#
	#	%f		Reset default text foreground color.
	#
	export PS1=$'%F{4}%n@%m%f %F{59}%~%f\n$ '

#	========
#	LSCOLORS
#	========

	#			order of attributes
	# 			-------------------
	#	1.		directory
	#	2.		symbolic link
	#	3.		socket
	#	4.		pipe
	#	5.		executable
	#	6.		block special
	#	7.		character special
	#	8.		executable with setuid bit set
	#	9.		executable with setgid bit set
	#   10.	 	directory writable to others, with sticky bit
	#   11.	 	directory writable to others, without sticky bit
	#			
	#			color designators
	#			-----------------
	#	a/A		black		/	bold black
	#	b/B		red			/	bold red
	#	c/C		green		/	bold green
	#	d/D		brown		/	bold brown
	#	e/E		blue		/	bold blue
	#	f/F		magenta		/	bold magenta
	#	g/G		cyan		/	bold cyan
	#	h/H		light grey	/	bold light grey
	#	x		default foreground or background
	#
	#				 1 2 3 4 5 6 7 8 9 1011
	export LSCOLORS='cxfxcxdxbxegedabagacad'

#	=======
#	ALIASES
#	=======

	# aliases
	alias aliases='~/scripts/aliases.sh'

	# rm
	# --
	#	Prompt before deleting files.
	#
	alias rm='rm -i'

	# clear
	# -----
	# 	Clear the terminal more quickly.
	#
	alias c='clear'

	# valgrind
	# --------
	#	Always show each individual leak in detail.
	#
	alias valgrind='valgrind --leak-check=full'

	# ls
	# --
	#	-A		Include directory entries beginning with a dot ('.')
	#			except for '.' and '..'.
	#
	#	-F		Display after pathname:
	#
	#			('\')	directory
	#			('*')	executable	
	#			('@')	symbolic link
	#			('=')	socket
	#			('%')	whiteout
	#			('|')	FIFO
	#
	#	-G		Enable colorized output.
	#
	#	-T		When printing in the long format, display complete
	#			time information for the file, including month, day, hour,
	#			minute, second, and year.
	#
	#	-h		When printing in the long format, use unit suffixes: byte (B),
	#			kilobyte (K), megabyte (M), gigabyte (G), terabyte (T), and
	#			petabyte (P) to reduce number of digits to four or fewer
	#			using base 2 for sizes.
	#
	#	-o		List in long format, but omit the group id.
	#
	alias ls='ls -A -F -G -T -h'
	alias ll='ls -o'
	
	# python
	# ------
	# Aliases for python3 and pip3.
	#
	alias py='python3'
	alias python='python3'
	alias pip='pip3'

#	====
#	PATH
#	====

	export PATH=~/qemu/build/bin:$PATH
	export PATH=/usr/local/bin:$PATH
