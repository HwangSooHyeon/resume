# 📝 Resume Portfolio App of SooHyeon Hwang

![Flutter Version](https://img.shields.io/badge/flutter-3.29.0+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

<div align="center">
  <img src="https://raw.githubusercontent.com/flutter/website/master/src/_assets/image/flutter-lockup.png" alt="Flutter Logo" width="400"/>
</div>

## 📱 소개 (Introduction)

이 앱은 개발자 황수현의 이력서와 포트폴리오를 웹사이트 형태로 선보이는 인터랙티브 애플리케이션입니다. 개발 기술, 경력, 프로젝트 경험을 효과적으로 보여드리기 위해 제작하였습니다.

_This app is an interactive application that showcases the resume and portfolio of developer Soohyeon Hwang in a website format. It was created to effectively showcase development skills, career experience, and project history._

## ✨ 주요 기능 (Key Features)

- 🔄 **적응형 디자인**: 자유로운 화면 크기 지원  
  _Responsive Design: Support for flexible screen sizes_
- 🌓 **다크/라이트 모드**: 사용자 선호에 맞는 테마 제공  
  _Dark/Light Mode: Theme options based on user preference_
- 🌍 **다국어 지원**: 여러 언어로 콘텐츠 제공  
  _Multilingual Support: Content available in multiple languages_
- 📊 **다양한 애니메이션**: 자연스럽고 고급스러운 경험을 위해 여러 애니메이션을 적용  
  _Various Animations: Multiple animations applied for a natural and premium experience_

## 🏗️ 기술 스택 (Tech Stack)

- **프레임워크**: Flutter Framework (Web)  
  _Framework: Flutter Framework (Web)_
- **상태 관리**: Riverpod  
  _State Management: Riverpod_
- **아키텍처**: MVVM + Clean Architecture  
  _Architecture: MVVM + Clean Architecture_
- **라우팅**: Go Router  
  _Routing: Go Router_
- **애니메이션**: 커스텀 애니메이션 및 Lottie  
  _Animation: Custom animations and Lottie_
- **국제화**: Flutter Localization  
  _Internationalization: Flutter Localization_

## 🧩 아키텍처 구조 (Architecture Structure)

```
lib/
├── app/
├── asset/
├── core/             # 앱 전반에 사용되는 유틸리티 (Core utilities used throughout the app)
│   ├── extensions/   # 확장 메서드 (Extension methods)
│   ├── functions/    # 유틸리티 함수 (Utility functions)
│   ├── utils/        # 유틸리티 클래스 (Utility classes)
│   ├── l10n/         # 국제화 관련 코드 (Internationalization code)
│   ├── observer/     # 옵져버 관련 코드 (Observer-related code)
│   ├── provider/     # 공통 상태 관련 코드 (Common state-related code)
│   ├── router/       # 라우터 (Router)
│   └── theme/        # 앱 테마 정의 (App theme definitions)
├── domain/           # 비즈니스 로직 및 모델 (Business logic and models)
│   ├── entities/     # 도메인 객체 (개선 예정) (Domain objects - to be improved)
│   └── repositories/ # 추상화된 Repository 인터페이스 (현재 미사용) (Abstract repository interfaces - currently unused)
├── data/             # 데이터 액세스 레이어 (현재 미사용) (Data access layer - currently unused)
│   ├── models/       # 데이터 모델 (현재 미사용) (Data models - currently unused)
│   ├── usecases/     # usecase (현재 미사용) (Usecases - currently unused)
│   └── repositories/ # Repository 구현체 (현재 미사용) (Repository implementations - currently unused)
└── presentation/     # UI 레이어 (UI layer)
    ├── core/         # 공통 위젯 (Common widgets)
    ├── home/         # 메인 화면 (Main screen)
    ├── skills/       # 스킬 화면 (Skills screen)
    ├── cv/           # 이력서 화면 (CV screen)
    └── config/       # 설정 화면 (Configuration screen)
```

## 📦 설치 및 실행 (Installation and Execution)

```bash
# 저장소 클론 (Clone repository)
git clone https://github.com/HwangSooHyeon/resume.git

# 디렉토리 이동 (Change directory)
cd flutter_resume

# 의존성 설치 (Install dependencies)
flutter pub get

# 앱 실행 (Run app)
flutter run -d chrome --web-renderer canvaskit
```

## 📐 디자인 패턴 (Design Pattern)

이 프로젝트는 MVVM 패턴을 중심으로 구현되었습니다:

_This project is implemented around the MVVM pattern:_

- **Model**: 데이터 구조 및 비즈니스 로직 정의  
  _Definition of data structures and business logic_
- **View**: 사용자 인터페이스 및 위젯 구성  
  _User interface and widget composition_
- **ViewModel**: UI와 데이터 간의 중재자 역할  
  _Mediator role between UI and data_

## 🔜 개발 예정 기능 (Upcoming Features)

- [ ] 더 다양한 인터랙션 애니메이션  
       _More diverse interaction animations_
- [ ] 다양한 오픈 API 적용 및 설정 화면 오픈  
       _Application of various open APIs and opening of settings screen_
- [ ] 메일링 기능  
       _Mailing functionality_
- [ ] 모바일에도 대응하는 반응형 UI  
       _Responsive UI that also works on mobile_

## 📝 라이센스 (License)

MIT License © 황수현 (SooHyeon Hwang)

---

<div align="center">
  <p>
    Made with ❤️ using <b>Flutter</b>
  </p>
</div>
