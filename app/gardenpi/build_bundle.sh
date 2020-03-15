# flutter clean
echo "Building..."
rm -rf ./build
flutter build bundle --release -t ./lib/main_pi.dart
echo "Done!"

echo "Deploying..."
ssh -i ~/.ssh/gpi-rpi pi@192.168.1.128 "rm -rf /home/pi/app"
scp -i ~/.ssh/gpi-rpi -r ./build/flutter_assets pi@192.168.1.128:/home/pi/app
echo "Done!"