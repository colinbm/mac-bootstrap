#/bin/bash

xcode-select --install;
read -r -p "Hit enter once command line tools are installed. ";

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew doctor;
read -r -p "Hit enter to confirm 'brew doctor' output and continue. ";

brew install watch;
brew install mysql;
brew install shellcheck;

brew install node;
npm install -g coffee-script;
npm install -g csslint;
npm install -g coffeelint;
npm install -g jshint;

brew install mas;
open "/Applications/App Store.app";
read -r -p "Ensure you are signed in to the App Store, then hit enter. ";
mas install 1176895641; # Spark
mas install 443987910;  # 1Password
mas install 402383384;  # Base
mas install 924726344;  # Deliveries
mas install 418138339;  # HTTP Client
mas install 409203825;  # Numbers
mas install 409201541;  # Pages
mas install 407963104;  # Pixelmator
mas install 1058273036; # Polarr Photo Editor
mas install 880001334;  # Reeder 3
mas install 413965349;  # Soulver
mas install 557168941;  # Tweetbot
mas install 414554506;  # Clocks
mas install 421879749;  # Rested
mas install 425424353;  # The Unarchiver
mas install 413857545;  # Divvy
mas install 405772121;  # LittleIpsum
mas install 435003921;  # Fantastical
mas install 448925439;  # Marked
mas install 803453959;  # Slack
# mas install 417896628;  # ColorSchemer Studio (not currently available?)
mas install 969418666;  # ColorSnapper2

brew cask install iterm2;
brew cask install avira-antivirus;
brew cask install skype;
brew cask install bartender;
brew cask install anvil;
brew cask install beamer;
brew cask install dash;
brew cask install dropbox;
brew cask install flux;
brew cask install google-chrome;
brew cask install grandperspective;
brew cask install kaleidoscope;
brew cask install mamp;
brew cask install medis;
brew cask install sequel-pro;
#brew cask install sketch;
brew cask install https://raw.githubusercontent.com/caskroom/homebrew-cask/be3ca82cc2406fc782d1eaf79fbf3a743f85824d/Casks/sketch.rb;
brew cask install sourcetree;
brew cask install sublime-text;
brew cask install transmit;
brew cask install vagrant;
brew cask install virtualbox;
brew cask install virtualbox-extension-pack;
brew cask install vlc;
brew cask install transmission;
brew cask install caffeine;
brew cask install appcleaner;
brew cask install surfeasy-vpn;
brew cask install skyfonts;
open /usr/local/Caskroom/skyfonts/*/SkyFonts.app
brew cask install undercover;

curl -sSL https://get.rvm.io | bash -s stable;

bash --login -c 'rvm install --default 2.4.1';
bash --login -c 'gem install bundler';

bash --login -c 'gem install rubocop';

open "/Applications/Sublime Text.app";
read -r -p "I've just opened Sublime Text. Quit it before hitting enter to continue. ";

curl -o "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package;
cp "files/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings";
cp "files/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings";

ln -s "$HOME/Dropbox/bin" "$HOME/bin";
echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc";

