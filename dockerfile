# Use PHP latest version
FROM php:latest

# Copy your PHP application code into the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies using Composer
RUN composer install
