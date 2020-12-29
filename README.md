# Setting up your Spantree Macbook with Strap

## 1. Decide what account type you'll use with the Mac App store 

Bootstrapping your MacBook will involve installing a few applications from the Mac App Store. You can use your personal Apple/Mac account on your Spantree laptop if you prefer or you can use Spantree's account if you prefer to have access to some paid applications like Screenflow for screenrecording. If you want to use the Spantree acount, see someone from the Spantree ops team to get a login for this.

## 2. Fork the Official Spantree Brewfile

Spantree uses Homebrew and the Brewfile format to standardize the command line tools and desktop applications we install on everyone's machine.

Head on over to [https://github.com/Spantree/homebrew-brewfile](https://github.com/Spantree/homebrew-brewfile) and fork this into your own Github account.

## 3. Customize Your Brewfile

Feel free to review the Brewfile and comment out anything you don't plan on using. Apps are installed via three directives: `brew` (for command-line tools), `cask` (for desktop apps installed outside the Mac App Store and `mas` (for apps installed from the App Store).

## 4. Navigate to the Strap Website

Spantree has a special microsite deployed to Heroku that will authenticate with Github and download your Strap file. Go here and click on the link to `strap.sh` : [https://spantree-strap.herokuapp.com/](https://spantree-strap.herokuapp.com/).

This will download a shell script to run Strap on your laptop.

## 5. Change Permissions and Run the Strap File

From your Terminal application, run the following commands:

```bash
cd ~/Downloads
chmod u+x strap.sh
./strap.sh
```

When the script runs, it may prompt you for your system password from time to time. It will also enable full-disk encryption so **make sure to take a picture of your recovery key** (you can eventually store this in 1pass but sometimes it escapes the scroll buffer).

The full Strap process takes a while (an hour or two), but keep an eye on any additional password prompts as the `sudo` command may occassionally time out.

# 6. Install versioned tools via ASDF

We use ASDF ([https://github.com/asdf-vm/asdf](https://github.com/asdf-vm/asdf)) to manage tools like Python and Node where we may want several different versions installed. Inside the cloned `~/.homebrew-brewfile` repository that Strap maintains, you should see a `.tool-versions`. Once your strap install has indicated it's installed the `asdf` tool, you should be able to run the following:

```bash
cd ~/.homebrew-brewfile
cat .tool-versions | cut -d " " -f1 | grep -v "#" | xargs -L 1 asdf plugin-add
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install
```

## 7. Report Any Bugs or Issues

It's possible that some apps may not install cleanly due to versioning and operating system changes. Please let Cedric know if you got any errors or warnings during the process by emailing your logs.
