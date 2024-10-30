#!/bin/bash
# 배포된 애플리케이션이 정상적으로 작동하는지 확인
curl -f http://localhost:8080 || exit 1
