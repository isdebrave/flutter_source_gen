# flutter_source_gen

- [source_gen 문서](https://pub.dev/packages/source_gen#generating-files-in-different-directories)

- ⚠️ freezed 3.+로 하면 안됨 -> 2.+로 다운그레이드 해야함

- `lib/model/user.dart`
  - {{dir}}: 파일이 속한 디렉토리 (model)
  - {{file_name}}: 파일명 (user)
  - {{}}: 전체 경로 (model/user)

## 모든 생성 파일을 `lib/generated/`에 넣는 경우
```yaml
targets:
  $default:
    builders:
      source_gen:combining_builder:
        options:
          build_extensions:
            '^lib/{{}}.dart': 'lib/generated/{{}}.g.dart'
      freezed:
        options:
          build_extensions:
            '^lib/{{}}.dart': 'lib/generated/{{}}.freezed.dart'
```

#### 생성되는 파일 구조
```text/plain
lib/
│── generated/
│   │── user.g.dart
│   │── user.freezed.dart
│   │── animal.g.dart
│   │── animal.freezed.dart
│── user/
│   │── user.dart.dart
│── animal/
│   │── animal.dart.dart
```

## 디렉토리 안에 `generated/`를 생성하고 그 안에 생성 파일을 넣는 경우
```yaml
targets:
  $default:
    builders:
      source_gen:combining_builder:
        options:
          build_extensions:
            '^lib/{{dir}}/{{file_name}}.dart': 'lib/{{dir}}/generated/{{file_name}}.g.dart'
      freezed:
        options:
          build_extensions:
            '^lib/{{dir}}/{{file_name}}.dart': 'lib/{{dir}}/generated/{{file_name}}.freezed.dart'
```

#### 생성되는 파일 구조
```text/plain
lib/
│── animal/
│   │── generated/
│   │   │── animal.g.dart
│   │   │── animal.freezed.dart
│   │── animal.dart
│── user/
│   │── generated/
│   │   │── user.g.dart
│   │   │── user.freezed.dart
│   │── user.dart
```