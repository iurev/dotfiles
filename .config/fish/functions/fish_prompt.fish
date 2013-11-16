function fish_prompt
	set_color blue
	echo -n (__fish_git_prompt)' '
	set_color $fish_color_cwd
	echo -n (basename $PWD)
	set_color normal
	echo -n ' )'
end
