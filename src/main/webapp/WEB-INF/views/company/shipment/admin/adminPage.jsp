<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }

        #join {
            color: #324028;
            opacity: 0.5;
            font-size: 2rem;
            font-weight: bold;
        }

        .custom-list li {
            list-style-type: none;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 15px;
            text-align: center;
        }

        .custom-list div {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .custom-list div:hover {
            background-color: #0056b3;
        }
		
    </style>
</head>
<body>
    <div class="container-md mt-5 mb-5">
        <div class="row">
            
            <div class="col-md-5 text-center" style="margin-left:auto; margin-right:auto;"><!-- 중앙 정렬 추가 -->
                <h2 class="mt-5 text-start" id="join">　관리자 페이지<br>　</h2>
                <ul class="custom-list">
                    <li><div onclick="location.href='contactResultList.do'">제휴문의 리스트</div></li>
                    <li><div onclick="location.href='adminQnAList.do'">1:1문의 리스트</div></li>
                    <li><div onclick="location.href='/company/CJoin.do'">ID 발급</div></li>
                    <li><div onclick="location.href='adminMbList.do'">회원 리스트</div></li>
                    <li><div onclick="location.href='orderList.do'">주문 리스트</div></li>
                    <li><div onclick="location.href='#'">재고 현황</div></li>
                    <li><div onclick="location.href='adminCoupon.do'">쿠폰발급창</div></li>
                </ul>
            </div>
            
        </div>
    </div>
</body>
</html>
