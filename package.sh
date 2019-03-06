#!/usr/bin/env bash

cd ..
rm -rf prestashop1.6-khipu-release prestashop1.6-khipu/dist
mkdir prestashop1.6-khipu-release prestashop1.6-khipu/dist
cp -R prestashop1.6-khipu prestashop1.6-khipu-release
cd prestashop1.6-khipu-release
mv prestashop1.6-khipu khipupayment
rm -rf \
    khipupayment/.git \
    khipupayment/.gitignore \
    khipupayment/.gitmodules \
    khipupayment/.idea \
    khipupayment/.DS_Store \
    khipupayment/package.sh \
    khipupayment/composer.phar
zip -r khipupayment.zip khipupayment
cp khipupayment.zip ../prestashop1.6-khipu/dist
cd ../prestashop1.6-khipu
