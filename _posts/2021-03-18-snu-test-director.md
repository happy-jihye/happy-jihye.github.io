---
date: 2021-03-18
title: "[원격 시험 감독 프로그램] 감독관용 뷰어"
excerpt: "RTMP와 HLS 프로토콜 방식을 사용하여 만든 프로그램입니다. FFmpeg 라이브러리을 사용하여 스트리밍 영상을 뷰어에 띄웠습니다."

categories: 
  - snu
tags: 
  - FFmpeg
  - HLS
  - RTMP
# 목차
toc: true  
toc_sticky: true 

use_math: true
---

**Snu Remote Test Supervision (Ver.2)**

> #### 원격 시험 감독 - 감독관용 뷰어
>
> (Jihye-Back)

- [이 링크](https://drive.google.com/open?id=162xHLRyLbKLKKhLRr95UWrWoWnFIulFJ&authuser=100jihye%40snu.ac.kr&usp=drive_fs)를 통해 실행파일을 다운받으실 수 있습니다.
- [version 1](https://github.com/happy-jihye/Snu-Remote-Test-Supervision-RTMP-HLS-ver1)
- [IOS mobile client](https://github.com/happy-jihye/snu-ios-rtmp-client) : 실시간 영상을 아이폰으로 송출해주는 어플리케이션을 개발하였습니다. 
- [RestAPI](https://github.com/younghoSNU/restapi) : AWS를 이용하여 구현한 [Rest API](https://www.google.com/search?q=rest+api+%EB%9E%80&oq=rest+ap&aqs=chrome.1.0i433j0i131i433j0i20i263j69i57j0l3j69i60.3320j0j4&sourceid=chrome&ie=UTF-8)입니다.



## ⭐ 주요 과제 및 흐름도

- 원격시험 감독의 흐름도는 다음과 같습니다.

<img src="https://user-images.githubusercontent.com/78718131/107191555-aa69ce00-6a2f-11eb-9b76-7271806affab.png" alt="Untitled" style="zoom:67%;" />

- 원격시험감독 프로그램은

(1) 학생이노트북이나 스마트폰을 이용하여 실시간 영상을 송출하는 **학생 클라이언트** (RTMP protocol)

(2) 시험에 관한 데이터들(학생 및 감독관 정보, 시험 정보 등등)을 데이터 베이스에 저장하고, 클라이언트와의 소통을 돕는 **서버**

(3) 학생이 송출한 영상을 AWS에 저장하는 **클라우드**

(4) 학생의 시험 영상을 볼 수 있는 **감독관용 뷰어**

로 구성됩니다.


## 감독관용 뷰어 

- 감독관 용 뷰어는 크게 다음과 같은 기능을 수행합니다.

**(1) RTMP(Real Time Messaging Protocol) Live Streaming**
**(2) Review Test : HLS(HTTP Live Streaming) Player**
**(3) Login, change password, create account, etc**



## [1. Login](https://github.com/happy-jihye/Snu-Remote-Test-Supervision-RTMP-HLS-ver2/tree/master/FFmeBasicSample/Login)

회원 가입 및 로그인을 하는 부분입니다. 회원가입을 하면 임시 비밀번호가 발급되므로 이를 변경하는 기능 역시 구현해놓았습니다.

### (1) Create Account

- Login page에서 Create Account를 누르면 회원가입을 할 수 있는 창으로 이동합니다.
- 회원가입 창에서는 학번, 이름, 이메일을 입력받습니다. 아래의 curl 명령어를 통해 회원가입 정보를 데이터베이스에 보냈습니다. 
- 이후 승인이 되면 회원가입이 완료됩니다.

  ```cpp
  curl -X POST [http://XXX/sign_up](http://XXX/sign_up) -d ID=2020-54321 -d name=John -d [mail_address=John@snu.ac.kr](mailto:mail_address=John@snu.ac.kr)
  ```


### (2) Login Page

- 회원가입 승인이 나면, 임시 비밀번호가 주어집니다.(임시 비밀번호 : temp_password)
- 임시 비밀번호로 로그인을 한 경우, 바로 비밀번호를 변경하도록 Change password 창이 띄워집니다. 
- 비밀번호를 변경하고 나면, 로그인 페이지로 다시 이동합니다.

> 다음의 curl commend를 입력하였을 때
>
> ```cpp
> curl -X POST [http://XXX/login](http://XXX/login) -d [mail_address=John@snu.ac.kr](mailto:mail_address=John@snu.ac.kr) -d PW=temp_password
> ```
>
> (1) 최초 로그인이라면, "Change Password!"라는 명령어가 반환되고
>
> (2) 입력된 정보가 데이터 베이스에 없다면 "email or password wrong"라는 명령어가 반환되며,
>
> (3) 로그인이 완료된다면 token이 반환됩니다. 이후 이 token을 통해 감독관은 실시간 스트리밍 영상을 보거나 과거 영상을 replay할 수 있습니다.



### (3) Change Password

- 아래의 curl commend를 통해 원하는 비밀번호로 비밀번호를 변경합니다.

  ```cpp
  curl - X POST [http://XXX/change_password](http://XXX/change_password) -d [mail_address=John@snu.ac.kr](mailto:mail_address=John@snu.ac.kr) -d PW=qwerty1234
  ```

  


## [2. Main Page](https://github.com/happy-jihye/Snu-Remote-Test-Supervision-RTMP-HLS-ver2/tree/master/FFmeBasicSample/Main%20page)

- Main Page에서는 시험을 스케줄링을 할 수 있습니다.
- 스케줄링된 시험은 list view를 통하여 볼 수 있으며, 예정된 시험을 삭제할 수도/ 추가할 수도 있습니다.
- 또한, 이 페이지를 통해 live streaming을 볼 수 있는 페이지나 과거 영상을 볼 수 있는 페이지로 넘어갑니다.



### (1) Scheduling Test

- Scheduling test 에서는 시험정보와 학생 정보를 등록할 수 있습니다.

>  (1) 시험 정보 등록
>
> - 강의명, 시험명 ex. midterm, 시험 날짜, 시험 시작 시간/끝나는 시간
>
>   ```cpp
>   curl -X POST [http://XXX/add_exam_data](http://XXX/add_exam_data) -d lec=logicdesign -d test=midterm -d testdate=20210108 -d starttime=1400 -d endtime=1530 -d token=
>   ```
>
> (2) 학생 정보 등록
>
> - 이름, 학번, 감독관 번호
>
>   ```cpp
>   curl -X POST [http://XXX/add_student_data](http://XXX/add_student_data) -d num=2020-12345 -d name=jihye -d supervNum=1 -d lec=logicdesign -d test=midterm -d testdate=20210108 -d starttime=1400
>   ```


- 시험 정보들을 등록하고 나면, main page에 예정된 시험 목록들이 시간순서대로 list up 됩니다.
  <img src="https://user-images.githubusercontent.com/78718131/107193390-26651580-6a32-11eb-9bf6-23957d0fd3f2.png" alt="Untitled 4" style="zoom: 67%;" />

- 시험 list들은 아래의 curl command를 통해 서버에서 받아왔습니다.

  ```cpp
  curl -X POST http://XXXX/superv_endpoint_pre -d token=
  ```



## [(2) Live Streaming](https://github.com/happy-jihye/Snu-Remote-Test-Supervision-RTMP-HLS-ver2/tree/master/FFmeBasicSample/Live%20Viewer)

![SE-1a92a9d3-7c42-4d06-8b6e-35df3c2aff7b](https://user-images.githubusercontent.com/78718131/107308275-b1461e80-6acb-11eb-9b41-6a49d9f88712.png)

- 스케줄링된 시험을 누른 후 감독관 번호를 입력하면, 라이브 스트리밍을 볼 수 있습니다. 

- 학생이 한명씩 입장될 때마다 뷰어에는 사람이 추가됩니다. 

- ver2에서는 모바일에서 송출한 영상과 컴퓨터 웹캠에서 송출한 영상을 동시에 띄웠습니다. *(위의 사진은 ver1의 사진)*



> 또한, Live Streaming은 총 세가지의 CS파일을 통해 구현하였습니다.
> #### 1. Live_player
>
> - Live player는 rtmp 프로토콜을 통해 받아온 주소를 재생하는 player입니다. 
> - 실시간으로 스트리밍 되고 있는 영상을 띄우는 player이므로 play, pause등의 기능은 구현하지 않았고, mute기능만을 추가하였습니다.
> - sound 버튼을 누르면 음소거가 해제되고, 버튼을 다시 누르면 음소거가 됩니다.
> #### 2. Live_viewr
>
> - Viewer는 여러개의 RTMP 주소를 받으면, Live player를 통해 여러개의 영상을 띄우는 부분입니다. 
> - 현재는 모바일과 웹캠이 모두 송출되는 중일 때만, 뷰어에 보이도록 구현하였습니다.
> - 또한, double click을 하면 화면이 확대될 수 있도록 보이지 않는 버튼을 만들었습니다.
> #### 3. Live_tab
>
> - 서버와의 통신 프로토콜을 통해 rtmp 주소를 받아오는 부분입니다. refresh button을 누르면 주소를 받을 수 있습니다.
>
>   ```cpp
>   curl - X POST http://XXX/superv_endpoint -d tablename=logicdesign.midterm_20210108 -d supervNum=1 -d token=
>   ```



>  ### 참고한 라이브러리 📚
>
> RTMP 프로토콜을 통해 라이브 영상을 재생하기 위해 unosquare의 ffmediaelement와 ruslan-B의 FFmpeg.AutoGen의 라이브러리를 참조하였습니다.
>
> - [unosquare/ffmediaelement](https://github.com/unosquare/ffmediaelement)
>
>   *unosquare의 라이브러리는 원격시험감독을 만들기 위해 일부 수정하였습니다. 제가 참조한 라이브러리는 위의 라이브러리와 100% 일치하지는 않습니다.*
>
> - [Ruslan-B/FFmpeg.AutoGen](https://github.com/Ruslan-B/FFmpeg.AutoGen)
>
> - 이외에도 webeye의 RTMP Player, openCV의 일부 코드등을 참고하였지만 직접적으로 참조를 하지는 않았습니다.



## [(3) Review Test](https://github.com/happy-jihye/Snu-Remote-Test-Supervision-RTMP-HLS-ver2/tree/master/FFmeBasicSample/Review%20Viewer) (HLS Protocol)



![SE-9b34cdec-fa16-4668-9c43-ed4ece5d06a1](https://user-images.githubusercontent.com/78718131/107308267-adb29780-6acb-11eb-84c8-049a7f2b7c02.png)



- [HLS (HTTP Live Streaming, HLS)](https://ko.wikipedia.org/wiki/HTTP_%EB%9D%BC%EC%9D%B4%EB%B8%8C_%EC%8A%A4%ED%8A%B8%EB%A6%AC%EB%B0%8D) 프로토콜을 통해 AWS S3 클라우드에 저장되어있는 영상을 로드하여 재생하는 부분을 구현하였습니다.

- Review Test 버튼을 클릭하면 HLS Player 페이지로 넘어옵니다. 이때, combobox에 자동으로 감독관이 담당한 과목들이 나오도록 구현하였습니다. 또한, 과목을 선택하면 그 과목의 시험을 본 학생들을 선택할 수 있습니다.

  최종적으로 학생을 선택하면, 해당 학생의 영상을 볼 수 있는 hls 주소가 반환됩니다.

  ```cpp
      curl -X POST [http://XXX/get_test_pre](http://XXX/get_test_pre) -d token=
      curl -X POST [http://XXX/previousvideo_student_list](http://XXX/previousvideo_student_list) -d lec=logicdesign -d testdate=20210111 -d test=final
      curl -X POST [http://XXX/get_test](http://XXX/get_test) -d num=2020-12345 -d lec=logicdesign =d token=
  ```

- play button을 누르면 재생이 시작됩니다. play, pause, stop은 기본적으로 사용할 수 있습니다.

- Slider를 통해 volume과 영상의 speed를 조절할 수 있습니다. (배속재생 가능)

- time slider를 통해 원하는 부분을 바로 재생할 수 있도록 구현하였습니다.
  *⭐ 이 부분에 대한 설명은 code의 주석처리에 달아놓았습니다.*

- home으로 이동하거나 어플리케이션을 중단하는 경우에는 hls가 종료되었다는 command를 서버에 보내주어야합니다. (감독관 만이 주소를 열고 닫을 수 있어야 영상의 주소가 노출되는 경우에도 다른 사람들이 볼 수 없도록 deactivate됨)

  따라서 hls가 종료되는 경우에 아래의 curl command를 통해 review test가 종료되었음을 알렸습니다.

  ```cpp
  curl -X POST [http://XXX/hlsFinish](http://XXX/hlsFinish) -d httpUrl=https://...m3m8
  ```

  

> #### 참고한 라이브러리 📚
>
> - 아래의 github의 HLSTools.NETframework를 참고하였으나 일부 부분은 수정하였습니다. 
>   (ex. Dispose : TS파일 삭제)
>
>   [tompaana/hls-transcription-sample](https://github.com/tompaana/hls-transcription-sample)
