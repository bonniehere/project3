<h1>👩‍💻 공급사 관점 의료용품 출하 프로세스 구현</h1>


### 🏣 개요 
출하 프로세스에 간단한 수주와 입고 프로세스를 함께 구현하고 카카오맵 API와 라즈베리파이 온도 센서를 활용하여 출하시 배달 기사의 위치와 상품 온도를 확인할 수 있게 구현하였습니다.




### 🔧 개발 환경
- eclipes 
- JAVA
- Spring frame work (MVC)
- MySQL




### 🗓 프로젝트 일정
2024/1/18 ~ 2024/2/11




### 👩‍💻 팀원
정순욱(팀장) 강민채 이동건




### 📋 프로젝트 기획
<details close>
 <summary>ERD</summary> 
  
![최종 erd](https://github.com/bonniehere/project3/assets/152823482/8932a440-29b6-4e7f-8293-926eab384917)




</details>


### 👩‍💻프로젝트 주요 기능
<details close>
  
  <summary>클라이언트 페이지</summary> 
  
#### 클라이언트와 공급사 제휴 맺기

![그림01](https://github.com/bonniehere/project3/assets/152823482/793d0e8b-7e97-4a74-b363-d0e4741a9d71)
##### 계약서에 기재된 고객의 정보를 기반으로 ID발급을 합니다.

![2](https://github.com/bonniehere/project3/assets/152823482/9e4738a0-39aa-4c47-acc5-94f7895dd27f)
##### 이메일 전송 버튼을 누르면 회원 가입 시에 입력한 상단부의 이메일 주소로 아이디와 비밀번호를 전송하도록 설계하였습니다.

</details>

<details close>
  
  <summary>클라이언트 주문 페이지</summary> 
  
#### 클라이언트 주문 페이지

![3](https://github.com/bonniehere/project3/assets/152823482/5e683c60-d14d-4950-9968-93d34b46e303)



#### 장바구니

![그림02](https://github.com/bonniehere/project3/assets/152823482/0997b45a-e777-480f-9aa8-6354ae848ca6)


#### 배송현황 확인 
![6](https://github.com/bonniehere/project3/assets/152823482/4ee993a6-cad3-4e22-958c-ea4b0d2b3cfb)

#### 배송 중일 때 기사 위치 확인

![8](https://github.com/bonniehere/project3/assets/152823482/b811b5cb-b645-48c9-b442-c0bcfcb7e772)


</details>

<details close>
  
  <summary>관리자 페이지</summary> 
  
#### 관리자 주문 페이지

![7](https://github.com/bonniehere/project3/assets/152823482/f98e68f4-3b84-4d4f-9626-e491f962e4af)


#### 주문 상세 페이지

![그림03](https://github.com/bonniehere/project3/assets/152823482/a9cdb5cd-01a4-4dde-875b-2e1935310bb9)

##### 이 페이지에서 현재 물품의 출하기사 배정 및 주문 상태 변경이 가능합니다. 

#### 배송 현황 페이지

![4](https://github.com/bonniehere/project3/assets/152823482/a99064f1-2d23-43e9-920c-0271a4892c15)

##### 배달 기사의 위치를 모두 파악할 수 있는 모든 배송현황 페이지입니다.


#### 배송 기사 상세 페이지

![5](https://github.com/bonniehere/project3/assets/152823482/c9e59f1c-3847-4fc8-9f86-b6d8d1e35246)

##### 기사의 이름을 클릭하면 그 기사의 위치와 현재 배달 중인 정보, 차 안의 온도를 파악할 수 있습니다. 이때 차 안 온도가 23도가 이상이면 출고 직원에게 알림 메일이 전송되어 대응을 할 수 있게 설계 하였습니다.

</details>

<details close>
  
  <summary>출하담당자(기사) 페이지</summary> 
  
#### 출하담당자 페이지

![그림04](https://github.com/bonniehere/project3/assets/152823482/05183875-d557-473f-aa93-7268c68fe595)

##### 배달 기사가 이 페이지에서 배송 시작 및 배송 완료로 현황 업데이트가 가능합니다.

</details>

  
