#!/bin/bash
mkdir $HOME/.composer_installer
(   
    cd $HOME/.composer_installer &&
    rm -rf $HOME/.composer_installer/* &&
    sudo apt-get install -y php-cli unzip php-mbstring php-xml &&
    curl -sS https://getcomposer.org/installer -o $HOME/.composer_installer/composer-setup.php &&
    COMPOSER_HASH=`curl -sS https://composer.github.io/installer.sig` &&
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '$COMPOSER_HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" | grep -q 'Installer verified' &&
    sudo php $HOME/.composer_installer/composer-setup.php --install-dir=/usr/local/bin --filename=composer &&
    echo PATH="$(echo \$PATH):$(echo \$HOME)/.config/composer/vendor/bin" >> ~/.bashrc &&
    echo "✅ PHP + COMPOSER INSTALL COMPLETE"
)