#!/bin/bash

# from https://github.com/necolas/dotfiles/blob/master/bin/dotfiles

DOTFILES_DIRECTORY="${HOME}/dotfiles"

link() {
	# Force create/replace the symlink.
	ln -fs "${DOTFILES_DIRECTORY}/${1}" "${HOME}/${2}"
}

mirrorfiles() {
	# Copy `.gitconfig`.
	# Any global git commands in `~/.bash_profile.local` will be written to
	# `.gitconfig`. This prevents them being committed to the repository.
	#rsync -avz --quiet ${DOTFILES_DIRECTORY}/git/gitconfig ${HOME}/.gitconfig

	# Create the necessary symbolic links between the `.dotfiles` and `HOME`
	# directory. The `bash_profile` sources other files directly from the
	# `.dotfiles` repository.
	link "shell/bashrc" ".bashrc"
	link "shell/bash_profile" ".bash_profile"
	#link "shell/curlrc" ".curlrc"
	link "shell/inputrc" ".inputrc"
	link "git/gitattributes" ".gitattributes"
	link "git/gitconfig" ".gitconfig"
	link "git/gitignore" ".gitignore"

	echo "Dotfiles update complete!"
}

mirrorfiles
source ${HOME}/.bash_profile