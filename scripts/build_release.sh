#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: ./scripts/build_release.sh <android|ios> <test|prod> [build-name] [build-number]"
  exit 1
fi

PLATFORM="$1"
APP_ENV="$2"
BUILD_NAME="${3:-}"
BUILD_NUMBER="${4:-}"

if [[ "$PLATFORM" != "android" && "$PLATFORM" != "ios" ]]; then
  echo "Unsupported platform: $PLATFORM"
  echo "Use one of: android, ios"
  exit 1
fi

if [[ "$APP_ENV" != "test" && "$APP_ENV" != "prod" ]]; then
  echo "Unsupported APP_ENV: $APP_ENV"
  echo "Use one of: test, prod"
  exit 1
fi

ARGS=(
  "--release"
  "--dart-define=APP_ENV=$APP_ENV"
)

if [[ -n "${API_BASE_URL:-}" ]]; then
  ARGS+=("--dart-define=API_BASE_URL=$API_BASE_URL")
fi

if [[ -n "${SELLER_WEB_URL:-}" ]]; then
  ARGS+=("--dart-define=SELLER_WEB_URL=$SELLER_WEB_URL")
fi

if [[ -n "${PAYMENT_WEB_URL:-}" ]]; then
  ARGS+=("--dart-define=PAYMENT_WEB_URL=$PAYMENT_WEB_URL")
fi

if [[ -n "${STATIC_FILE_BASE_URL:-}" ]]; then
  ARGS+=("--dart-define=STATIC_FILE_BASE_URL=$STATIC_FILE_BASE_URL")
fi

if [[ -n "$BUILD_NAME" ]]; then
  ARGS+=("--build-name=$BUILD_NAME")
fi

if [[ -n "$BUILD_NUMBER" ]]; then
  ARGS+=("--build-number=$BUILD_NUMBER")
fi

if [[ "$PLATFORM" == "android" ]]; then
  echo "Building Android appbundle for APP_ENV=$APP_ENV"
  flutter build appbundle "${ARGS[@]}"
else
  echo "Building iOS ipa for APP_ENV=$APP_ENV"
  flutter build ipa "${ARGS[@]}"
fi
