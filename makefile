# Makefile

# 앱 이름과 엔트리 포인트 파일명
APP_NAME = my_flutter_app
ENTRY_POINT = lib/main.dart

# 플러터 명령
FLUTTER_CMD = flutter

# 다트 명령
DART_CMD = dart

# 다트 pub 명령
#DART_PUB_CMD = $(DART_CMD) pub

# 플러터 pub 명령
FLUTTER_PUB_CMD = $(FLUTTER_CMD) pub

# build runner
BUILD_RUNNER = $(DART_CMD) run build_runner

# 앱 빌드
build:
	$(FLUTTER_CMD) build apk --debug

# 앱 실행
run:
	$(FLUTTER_CMD) run "./lib/main.dart"

# 앱 빌드 및 실행
dev:
	make build
	make run

# 앱 정리 (빌드 결과물 및 캐시 제거)
clean:
	$(FLUTTER_CMD) clean

get:
	$(FLUTTER_PUB_CMD) get

build_runner.watch:
	$(BUILD_RUNNER) watch

build_runner.build:
	$(BUILD_RUNNER) build --delete-conflicting-outputs


build_runner.clean:
	$(BUILD_RUNNER) clean

env.test:
	sort -u -t '=' -k 1,1 .env.common .env.test > .env
env.stage:
	sort -u -t '=' -k 1,1 .env.common .env.stage > .env
env.live:
	sort -u -t '=' -k 1,1 .env.common .env.live > .env

# 기본 타겟 설정 (빌드 및 실행)
.DEFAULT_GOAL := dev