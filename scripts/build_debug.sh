#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: ./scripts/build_debug.sh <test|prod> [build-name] [build-number]"
  exit 1
fi

APP_ENV="$1"
BUILD_NAME="${2:-}"
BUILD_NUMBER="${3:-}"

if [[ "$APP_ENV" != "test" && "$APP_ENV" != "prod" ]]; then
  echo "Unsupported APP_ENV: $APP_ENV"
  echo "Use one of: test, prod"
  exit 1
fi

ARGS=(
  "--debug"
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

echo "Building Android debug APK for APP_ENV=$APP_ENV"
flutter build apk "${ARGS[@]}"
