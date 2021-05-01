#!/bin/bash
(   
    mkdir ~/.composer_installer ||
    cd ~/.composer_installer &&
    rm -rf * &&
    sudo apt-get install -y php-cli unzip &&
    curl -sS https://getcomposer.org/installer -o ./composer-setup.php &&
    COMPOSER_HASH=`curl -sS https://composer.github.io/installer.sig` &&
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '$COMPOSER_HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" | grep -q 'Installer verified' &&
    sudo php ./composer-setup.php --install-dir=/usr/local/bin --filename=composer &&
    echo PATH="$(echo \$PATH):$(echo \$HOME)/.config/composer/vendor/bin" &&
    echo "✅ PHP + COMPOSER INSTALL COMPLETE"
)