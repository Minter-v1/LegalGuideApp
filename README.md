# LegalGuideApp
SW 경진대회 - 외국인 노동자를 위한 법률 조언 가이드 어플리케이션(iOS)

## Commit Convention
`Feat(component, ui) : 버튼 컴포넌트 ui 구현`
### Type 
|**type**|**description**|
|--|--|
| `Feat` | 새로운 화면, 기능, 이미지 등 **추가 작업** |
| `Fix` | 버그, 기능 등 **오류 수정** |
| `Style` | 여백(padding), 색상(Color) 등 **UI 디테일 변경** |
| `Chore` | 설정, 파일정리, 리소스 관리(이미지 삭제, 파일 이름 변경 등) **기능 외 작업** |
| `Docs` | 문서(README) 작성 및 주석 추가/삭제/수정 |
| `Refactor` | 내부 코드 구조 개선(변수명 정리, 코드 분리, 모듈화 등) |
| `Perf` | 성능 최적화(루프 최적화, 중복제거, 연산량 감소 등) |

### Scope 
|**scope**|**description**|
|--|--|
| view | SwiftUI **View 파일**, **화면 중심** 관련 |
| component | 재사용 가능한 컴포넌트 관련 |
| asset | 이미지, 아이콘 추가/수정 관련 |
| preview | preview 수정, StatefulWrapper 추가 등 |
| viewmodel | viewmodel 로직 수정 상태 바인딩 |
| model | 데이터 구조, 엔티티 정의 시 |
| config | 설정 파일 수정 |
| resource | 폰트, 로컬라이징 등 수정 |
