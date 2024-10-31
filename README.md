# snippets

A repo to store some of my code snippets (aka gists) inside a repo, inside of unorganised Gists.

## About this repo

A nice thing about Gists is, that you can also add a description. You can't do that directly here in a repo. Instead, I recommend one of the 2 following options:

* Add a description as a comment at the top of your file. That way the description comes directly with the file.
* Add a description in the "Descriptions"-section underneath. That way a description exists, but it may be overlooked as it is not directly tied to your file.

## Descriptions

At least for files, where it is not suitable to add descriptions directly
to the file

## rstudio-prefs.json

This file holds my default RStudio settings.

Things to modify yourself based on your system:
* default_project_location

**How to apply the preferences programmatically**

I recommend doing so via the `jq` command. Install via:
via:
```bash
# Ubuntu
sudo apt-get install jq
# Mac
brew install jq
```

Now you can merge the preferences provided here with yours using the following 
command:
```bash
echo $(jq '. * input' path_to_snippets/rstudio-prefs.json  ~/.config/rstudio/rstudio-prefs.json) > ~/.config/rstudio/rstudio-prefs.json
```

Note the following when using above command:

* The 2nd path in above command, is the path to your local preferences. 
  The command uses the default path for RStudio-preferences on Linux. Please
  adjust the path as needed.
* The command may produce an error, when the local preferences file does not
  exist or if it is empty. If so, just open the RStudio global options and
  click "OK". This should set some initial settings.
* The file provided 2nd to `jq` takes prevalence, when fields exist in both
  files, but with different values. That way, given the order above, your local
  preferences won't be changed. Instead, preferences you have not set yet, but
  present in the settings in this snippet, will be added. You can of course
  swap files around to flip the behavior.
* If desired, you can check what the command produces before writing it to
  your local preferences. To do so, execute the command within the
  `echo`-brackets.

## rstudio_bindings.json

My RStudio key bindings file. You can manually insert / adjust them in your
local file or use the json-merging feature using `jq` as described for the
`rstudio-prefs.json` file.

See [here](https://support.posit.co/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts) for file locations and more info.

Note: The `executeCode` shortcut is named "Run Current Line or Selection" within the RStudio UI.
