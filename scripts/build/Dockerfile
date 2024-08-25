# Use official PHP Apache image
FROM php:7.3-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy composer.lock and composer.json
COPY composer.lock composer.json /var/www/html/ 
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        git \
        unzip \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        zip \
        nano \
        && docker-php-ext-configure gd \
        && docker-php-ext-install gd mysqli pdo pdo_mysql \
        && a2enmod rewrite

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy application files
COPY . /var/www/html/

# Install Laravel dependencies
RUN composer install && php artisan key:generate
# Set permissions
#RUN chown -R www-data:www-data /var/www/html/storage
RUN chown -R www-data:www-data /var/www/html/public /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 80

EXPOSE 80

# Start Apache
#ENTRYPOINT ["php artisan key:generate"]
CMD ["apache2-foreground"]
