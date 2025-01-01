#!/bin/bash
# Install Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"

# Run Flutter build
flutter doctor
flutter build web
