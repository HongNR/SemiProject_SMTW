# SemiProject_SMTW
> 워킹홀리데이에 관한 정보를 원하는 사람들을 위한 홈페이지를 구현했습니다.

![세미메인 JPG](https://user-images.githubusercontent.com/118409545/216219050-dd81803e-9122-40ba-96fd-35091f0299b2.jpg)

## 목차
- [들어가며](#들어가며)
  - [프로젝트 소개](#1-프로젝트-소개)    
  - [프로젝트 기능](#2-프로젝트-기능)    
  - [사용 기술](#3-사용-기술)   
     - [백엔드](#3-1-백엔드)
     - [프론트엔드](#3-2-프론트엔드)
  - [실행 화면](#4-실행-화면)   


- [구조 및 설계](#구조-및-설계)
  - [패키지 구조](#1-패키지-구조)
  - [DB 설계](#2-db-설계)
  - [API 설계](#3-api-설계)

- [개발 내용](#개발-내용)

- [마치며](#마치며)
  - [프로젝트 보완사항](#1-프로젝트-보완사항)
  - [후기](#2-후기)

## 들어가며
### 1. 프로젝트 소개

앞으로의 길을 보여주겠다는 의미의 Show Me The Way (SMTW)라는 뜻을 가진 워킹홀리데이에 관한 정보를 가진 홈페이지입니다.

학원에서 진행 한 첫 세미프로젝트입니다.

### 2. 프로젝트 기능

제가 맡은 프로젝트의 주요 기능은 다음과 같습니다.
- **게시판 -** CRUD기능, 페이징 및 검색 처리
- **사용자 -** 회원가입 및 로그인, 아이디&비밀번호 찾기, 이메일 인증, 회원가입 시 유효성 검사 및 중복 검사
- **댓글 -** 댓글, 답글 기능

### 3. 사용 기술

#### 3-1 백엔드

##### 개발 환경 및 라이브러리
- Java 11
- jQuery 3.6.1
- WAS : Tomcat 9.0

##### Build Tool
- Eclipse IDE 2022-09
- Oracle Sql Developer
- Visual Studio Code

##### DataBase
- Orcale DB


### 4. 실행 화면
  <details>
    <summary>게시글(공지사항/질문하기) 관련</summary>   
       
    
  **1. 공지사항 전체 목록**   
  ![공지사항메인](https://user-images.githubusercontent.com/118409545/216254881-90821e5e-e483-4494-8f65-4a4d3d24ed41.JPG) 
  
  전체 목록을 페이징 처리하여 조회할 수 있다.(질문하기 게시판도 동일)
     
  
  **2. 공지사항 등록**   
  ![공지사항 글](https://user-images.githubusercontent.com/118409545/216254874-b0770302-69dc-44df-8cc4-b3d8ffa84ea8.JPG)
  
  공지사항은 관리자만 새로운 글을 작성할 수 있고, 작성 후 목록 화면으로 redirect한다. 
  
  질문하기는 로그인 한 회원만 글 작성이 가능하다.
     
  
  **3. 공지사항 상세보기**   
  ![공지사항 관리자](https://user-images.githubusercontent.com/118409545/216254870-f9c51195-cae4-4147-a9ce-ee9785f5abf8.JPG)
  
  공지사항은 관리자만 글 수정 및 삭제가 가능하다.
     
  
   **4. 공지사항 수정 화면**   
  ![공지사항 글 수정](https://user-images.githubusercontent.com/118409545/216254871-5fb3531a-5810-4b17-972a-2ed8591776c5.JPG)  
  
  제목과 내용만 수정할 수 있게 하고, Confirm으로 수정 여부를 확인 후 상세보기 화면으로 redirect 한다. 
  
  질문하기는 글을 쓴 작성자만 내용 수정이 가능하다.
  
  
  **5. 공지사항 삭제 화면**   
  ![공지사항 삭제](https://user-images.githubusercontent.com/118409545/216254876-fe55e412-115b-4406-b0f6-f871f0e7a9fd.JPG)   
  
  Confirm으로 삭제할지 확인하고, 삭제 후 전체 목록 리스트 화면으로 redirect 한다.
  
  질문하기는 글을 쓴 작성자와 관리자만 글 삭제가 가능하다.
  
  
  **6. 질문하기 내 Q&A 검색 화면**   
  ![qna질문내용검색](https://user-images.githubusercontent.com/118409545/216254867-cac1c1ef-8c6d-42e8-8d41-9b23898efd79.JPG)   
  
  검색 키워드에 포함된 글을 모두 보여준다.(공지사항도 동일)
  
  
  **6-1. 질문하기 내 Q&A 댓글**  
  ![qna댓글수카운트](https://user-images.githubusercontent.com/118409545/216254865-24031283-6c5d-4700-8922-d75f00b6f5ff.JPG)
  
  Q&A 댓글 수를 볼 수 있도록 Count하였다.
  
  ![qna댓글등록](https://user-images.githubusercontent.com/118409545/216254860-00e2c47c-a50c-4cd0-8bcd-121f21fd62d7.JPG)
  ![답글등록](https://user-images.githubusercontent.com/118409545/216254886-a7cc373a-84eb-4fc2-b1a6-738c99423cc2.JPG)
  
  Q&A 댓글 및 답글은 로그인 한 사용자만 달 수 있다. 
  댓글과 답글에 Level을 설정해 댓글을 쓴 순서대로 출력된다.
     
  
  **6-2. 질문하기 내 FAQ 화면 및 수정**   
  ![faq질문하기](https://user-images.githubusercontent.com/118409545/216254855-1e9c53f7-c3c0-41b7-a65a-126a8b0bd9f5.JPG) 
  ![faq질문수정](https://user-images.githubusercontent.com/118409545/216254849-53d354ad-eca1-4b53-a90e-08536d0ef37c.JPG)
  
  Faq는 3개만 등록 가능하도록 고정되어있고 관리자만 내용 수정이 가능하다.
  
     
  </details>
  <br/>   
  
  <details>
    <summary>회원 관련</summary>   
     
  **1. 회원가입 화면**   
  ![회원가입유효성1](https://user-images.githubusercontent.com/118409545/216260599-59b7045b-40a0-433b-970c-2bbac5ae9131.JPG)
  ![회원가입유효성2](https://user-images.githubusercontent.com/118409545/216260601-0ee75506-670f-4095-9aec-eda0ddf18831.JPG)
  
  회원가입 시 유효성 검사 및 중복확인을 진행한다.
  
  ![회원가입유효성3](https://user-images.githubusercontent.com/118409545/216261584-045d5753-4331-472f-9103-c4cd99f0bcfd.JPG)
  ![회원가입유효성4](https://user-images.githubusercontent.com/118409545/216261593-3f091ccc-2558-42ee-b9e7-1014396160b0.JPG)
  
  이메일 인증을 진행한 후 중복된 이메일이면 focus로 돌아간다.
  
  완료시 회원 정보를 저장하고 로그인 화면으로 이동한다.   
     
  **2. 로그인 화면**   
  ![로그인유효성](https://user-images.githubusercontent.com/118409545/216260604-b661e733-b1db-49e7-b9a6-3d65dbd9b9c4.JPG) 
  
  로그인 실패시 어떤 이유로 실패 했는지 메시지가 나오고, 로그인에 성공하면 메인화면으로 redirect 한다.   
           
  </details>
  <br/>   
  
  <details>
    <summary>댓글 관련</summary>   
       
  **1. 댓글 작성 화면**   
  미로그인 사용자 화면   
  ![image](https://user-images.githubusercontent.com/59757689/156977476-37db357a-ac44-4b24-ad8c-a062d4fe99cf.png)   
  ![image](https://user-images.githubusercontent.com/59757689/156977497-cc7fc2a7-e688-4733-b4c7-8aef4fba93e3.png)   
  댓글은 로그인 한 사용자만 달 수 있으며, 댓글 작성시 현재 페이지를 reload 한다.   
  
  **2. 댓글 수정**   
  ![image](https://user-images.githubusercontent.com/59757689/156977557-8a3dae77-9a8d-4fd3-824e-8ff22606609e.png)   
  다른 사용자는 다른 사람의 댓글을 수정/삭제할 수 없다.   
  ![image](https://user-images.githubusercontent.com/59757689/156977567-fd983777-5b04-4f57-a815-c89a59697377.png)   
  수정은 댓글 작성자만이 할 수 있다. 수정 완료 후 현재 페이지를 reload 한다.   
  
  **3. 댓글 삭제**   
  ![image](https://user-images.githubusercontent.com/59757689/156977655-8125a317-344e-4721-a836-46b36df3a3b5.png)   
  ![image](https://user-images.githubusercontent.com/59757689/156977661-5008733b-2932-4bfc-be01-60a33a093dc9.png)   
  삭제 또한 댓글 작성자만이 할 수 있다. 삭제 후 현재 페이지를 reload 한다.   
           
  </details>
  <br/>   
 
   
## 구조 및 설계   
   
### 1. 패키지 구조
   
<details>
  
<summary>패키지 구조 보기</summary>   
 

```
📦src
 ┣ 📂main
 ┃ ┣ 📂java
 ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┗ 📂coco
 ┃ ┃ ┃ ┃ ┗ 📂board
 ┃ ┃ ┃ ┃ ┃ ┣ 📂application
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dto
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UserDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂security
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂auth
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CustomAuthFailureHandler.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CustomUserDetails.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CustomUserDetailsService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LoginUser.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜LoginUserArgumentResolver.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂oauth
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CustomOAuth2UserService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜OAuthAttributes.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂validator
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AbstractValidator.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜CustomValidators.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UserService.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂domain
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BaseTimeEntity.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Comment.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Posts.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Role.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜User.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂infrastructure
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜SecurityConfig.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜WebConfig.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂persistence
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentRepository.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsRepository.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UserRepository.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂presentation
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentApiController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsApiController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsIndexController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜UserApiController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UserController.java
 ┃ ┃ ┃ ┃ ┃ ┗ 📜BoardApplication.java
 ┃ ┗ 📂resources
 ┃ ┃ ┣ 📂static
 ┃ ┃ ┃ ┣ 📂css
 ┃ ┃ ┃ ┃ ┗ 📜app.css
 ┃ ┃ ┃ ┣ 📂img
 ┃ ┃ ┃ ┃ ┗ 📜naver.ico
 ┃ ┃ ┃ ┗ 📂js
 ┃ ┃ ┃ ┃ ┗ 📜app.js
 ┃ ┃ ┣ 📂templates
 ┃ ┃ ┃ ┣ 📂comment
 ┃ ┃ ┃ ┃ ┣ 📜form.mustache
 ┃ ┃ ┃ ┃ ┗ 📜list.mustache
 ┃ ┃ ┃ ┣ 📂layout
 ┃ ┃ ┃ ┃ ┣ 📜footer.mustache
 ┃ ┃ ┃ ┃ ┗ 📜header.mustache
 ┃ ┃ ┃ ┣ 📂posts
 ┃ ┃ ┃ ┃ ┣ 📜posts-page.mustache
 ┃ ┃ ┃ ┃ ┣ 📜posts-read.mustache
 ┃ ┃ ┃ ┃ ┣ 📜posts-search.mustache
 ┃ ┃ ┃ ┃ ┣ 📜posts-update.mustache
 ┃ ┃ ┃ ┃ ┗ 📜posts-write.mustache
 ┃ ┃ ┃ ┣ 📂user
 ┃ ┃ ┃ ┃ ┣ 📜user-join.mustache
 ┃ ┃ ┃ ┃ ┣ 📜user-login.mustache
 ┃ ┃ ┃ ┃ ┗ 📜user-modify.mustache
 ┃ ┃ ┃ ┗ 📜index.mustache
 ┃ ┃ ┣ 📜application-oauth.properties
 ┃ ┃ ┗ 📜application.properties
 ┗ 📂test
 ┃ ┗ 📂java
 ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┗ 📂coco
 ┃ ┃ ┃ ┃ ┗ 📂board
 ┃ ┃ ┃ ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜PostsApiControllerTest.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂domain
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentRepositoryTest.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PostsRepositoryTest.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UserRepositoryTest.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂infrastructure
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂config
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SecurityConfigTest.java
 ┃ ┃ ┃ ┃ ┃ ┣ 📂service
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜PostsServiceTest.java
 ┃ ┃ ┃ ┃ ┃ ┗ 📜BoardApplicationTests.java
 ```
  
 </details>   
 <br/>    
   
     
 ### 2. DB 설계

![erd 3차 2022-01-03](https://user-images.githubusercontent.com/59757689/148910882-2ac9ec57-c339-4bef-a6d5-13025a8d9ac9.PNG)   
![posts 테이블 db 설계](https://user-images.githubusercontent.com/59757689/148910938-c6a99c8e-fefc-467b-a2af-a68a00e01a11.PNG)   
![user 테이블 db 설계](https://user-images.githubusercontent.com/59757689/149279956-b0a184da-9b19-4bcf-9ce8-6c001ef81f1d.PNG) 
![comment 테이블 db 설계](https://user-images.githubusercontent.com/59757689/148910946-02280553-97ce-4d82-bbda-9c911ea89bd4.PNG)   
created_date와 modified_date는 날짜 포맷을 적용해주기 위해 datetime > varchar로 변경했습니다.   
   
<br/>

### 3. API 설계

![게시글 관련 API 설계](https://user-images.githubusercontent.com/59757689/156749365-5e4cee67-1431-4e3a-9140-7b58b6e1fd53.PNG)    
![회원 관련 API 설계 (2)](https://user-images.githubusercontent.com/59757689/148911411-0cfb65ee-5782-4f04-a7c9-7dcc84abfed8.PNG)   
![댓글 관련 API 설계](https://user-images.githubusercontent.com/59757689/148911410-9a7729af-bb3c-49e3-b180-c52ea12ee75c.PNG)   

## 개발 내용

- <a href="https://dev-coco.tistory.com/111" target="_blank">게시판 프로젝트 명세서 정리</a>
- <a href="https://dev-coco.tistory.com/113" target="_blank">게시판 조회수 기능 추가</a>
- <a href="https://dev-coco.tistory.com/114" target="_blank">게시판 페이징 처리 구현</a>
- <a href="https://dev-coco.tistory.com/115" target="_blank">게시판 검색처리 및 페이징 구현</a>
- <a href="https://dev-coco.tistory.com/117" target="_blank">생성, 수정시간 LocalDateTime format 변경</a>
- <a href="https://dev-coco.tistory.com/120" target="_blank">Security 회원가입 및 로그인 구현</a>
- <a href="https://dev-coco.tistory.com/121" target="_blank">Security Mustache CSRF 적용 및 문제해결</a>
- <a href="https://dev-coco.tistory.com/122" target="_blank">커스텀 어노테이션을 통해 중복코드 개선</a>
- <a href="https://dev-coco.tistory.com/124" target="_blank">회원가입 Validation 유효성 검사</a>
- <a href="https://dev-coco.tistory.com/125" target="_blank">회원가입 Validation 커스터마이징 중복 검사</a>
- <a href="https://dev-coco.tistory.com/126" target="_blank">Security 로그인 실패시 메시지 출력하기</a>
- <a href="https://dev-coco.tistory.com/127" target="_blank">Security 회원정보 수정(ajax)</a>
- <a href="https://dev-coco.tistory.com/128" target="_blank">OAuth 2.0 구글 로그인 구현</a>
- <a href="https://dev-coco.tistory.com/129" target="_blank">OAuth 2.0 네이버 로그인 구현</a>
- <a href="https://dev-coco.tistory.com/130" target="_blank">JPA 연관관계 매핑으로 글 작성자만 수정, 삭제 가능하게 하기</a>
- <a href="https://dev-coco.tistory.com/133" target="_blank">JPA 양방향 순환참조 문제 및 해결</a>
- <a href="https://dev-coco.tistory.com/132" target="_blank">게시판 댓글 작성 및 조회 구현</a>
- <a href="https://dev-coco.tistory.com/134" target="_blank">게시판 댓글 수정 및 삭제 구현</a>
- <a href="https://dev-coco.tistory.com/136" target="_blank">게시판 댓글 작성자만 수정, 삭제 가능하게 하기</a>
- <a href="https://dev-coco.tistory.com/138" target="_blank">[리팩토링]Dto Class를 Inner Class로 한번에 관리하기</a>

## 마치며   
### 1. 프로젝트 보완사항   

초기에 구상한 기능은 기본적인 CRUD 즉, 게시판에 올라오는 게시글을 대상으로 Create, Read, Update, Delete가 가능한 게시판이었습니다.   
템플릿 엔진으로 Mustache를 선택했는데, 그 이유는 Mustache는 단순히 화면에 데이터를 렌더링 하는 엔진이고   
Logic-less 하기 때문에 View의 역할과 서버의 역할이 명확하게 분리되어 OOP의 5원칙 중 하나인 SRP를 지킬 수 있어    
MVC 설계에서 Model, View, Controller의 역할에 대한 구분도 명확하게 할 수 있겠다는 생각이 들었습니다.   
또한, 다른 템플릿에 비해 빠른 로딩 속도를 자랑하며, xss를 기본적으로 이스케이프 할 수 있다는 장점들에 이끌려 Mustache를 사용하게 되었습니다.   
그러나 게시판 CRUD 기능이 완성되어 갈 때 쯤, 아쉬운 부분이 계속해서 생겨 몇몇 기능들을 추가하게 되었습니다.   
mustache는 로직을 넣을 수 없어 그 과정에 데이터를 렌더링 하기 전 서버에서 전처리를 하거나,    
화면에 표시된 후에 자바스크립트로 후처리를 해줬지만 조금 아쉬운 부분이 몇 가지 남아있다고 생각합니다.   
<details>
  <summary>보완사항 보기</summary>
     
  
- 페이징 처리 및 검색 페이징에서 페이지 번호 활성화
- 페이지 번호는 10페이지 단위로 보여주기
- 페이지 처음, 끝으로 이동하는 버튼
- 생성, 수정시간 format 설정 varchar > datetime
- 다른 사용자와 자신의 댓글이 댓글란에 있을때 자신의 댓글만 수정,삭제 버튼 보이기
  
</details>   

추후에 브랜치를 나눠 Mustache에서 Thymeleaf로 조금씩 바꾸며 프로젝트 완성도를 높이고, 고도화 할 계획에 있습니다.   
   
   <details>
  <summary>추가할 기능 </summary>
     
  
- 댓글 페이징 처리
- 쿠키나 세션을 이용해 조회수 중복 카운트 방지
- 파일 업로드 기능 추가
- 좋아요 기능 추가
  
</details>  


### 2. 후기   

혼자 독학하며 처음 만들어본 프로젝트이기 때문에,   
공부한 내용을 사용해보는 설렘만큼이나 부족한 부분에 대한 아쉬움도 많이 남았습니다.   
효율적인 설계를 위해 고민하고 찾아보며 실제로 많이 공부할 수 있었던 부분도 많았습니다.   
책이나 블로그, 강의로 공부한 예제에서 납득했던 부분들은 실제로 코드를 짜면서 다양한 애로 사항을 마주했고   
'이 로직은 이 단계에서 처리하는게 맞는가', '각 레이어간 데이터 전달은 어떤 방식이든 DTO로 하는게 맞는가' 등   
여러 고민에 빠져 헤맨적도 있었지만, 다행히 결과는 대부분 최선을 찾았었던 것 같습니다.   
그리고 내가 만든 코드를 남에게 보여줬을 때, 누군가 코드의 근거를 물어본다면   
과연 자신 있게 나의 생각을 잘 얘기할 수 있을까 라는 생각을 굉장히 많이 하게 되었습니다.   
그래서 하나를 구현할 때 '이렇게 구현 하는 것이 과연 최선인가', '더 나은 Best Practice는 없을까'   
스스로 의심하고 고민하게 되는 습관을 가지게 되었습니다.   

두 번째로 기술적인 부분에서 더 공부하고 싶은 '방향'을 찾을 수 있었습니다.   
이번 프로젝트는 저에게 좋은 경험이 되었고, 저의 부족한 부분을 스스로 알 수 있는 좋은 계기가 되었습니다.   
부족한 부분에 대해 스스로 인지하고 있고, 더 깊게 공부하며 스스로 발전할 수 있는 '방향'을 다시한번 찾을 수 있게 되었습니다.   
이를 통해 더 나은 웹 애플리케이션을 만들 수 있을 것 같다는 자신감도 생겼습니다.   

끝까지 읽어주셔서 감사합니다.
