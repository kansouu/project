<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>VisitKorea 스타일 데모</title>
  <style>
    /* ---------- 기본 설정 ---------- */
    :root{
      --bg:#ffffff;
      --ink:#0f172a;
      --ink-2:#334155;
      --muted:#64748b;
      --line:#e2e8f0;
      --brand:#2563eb;
      --radius: 16px;
      --max: 1200px;
    }
    *{box-sizing:border-box; margin:0; padding:0}
    body{
  font-family: "Pretendard", "Noto Sans KR", "Apple SD Gothic Neo", "Malgun Gothic", sans-serif;
  font-weight: 500;  /* 기본적으로 굵게 */
  color:var(--ink); 
  background:var(--bg);
  letter-spacing: -0.3px; /* 글자가 더 둥글고 부드럽게 보이도록 */
}
a{color:inherit; text-decoration:none; cursor:pointer}


    .container{max-width:var(--max); margin:0 auto; padding:0 20px}

    .btn{display:inline-flex; align-items:center; justify-content:center; gap:8px;
      padding:6px 14px; border-radius:999px; border:1px solid var(--ink);
      font-weight:600; background:#fff; cursor:pointer; font-size:14px;
    }

    /* ---------- 헤더 ---------- */
    .topbar{border-bottom:1px solid var(--line); background:#fff}
    .topbar .wrap{
      display:flex;
      align-items:center;
      justify-content:space-between;
      padding:12px 0;
      position:relative;
    }

    /* 왼쪽 메뉴 버튼 */
    .menu-btn{
      display:flex; align-items:center; gap:6px; font-size:14px; font-weight:500; cursor:pointer;
    }
    .menu-btn svg{width:18px; height:18px}

    /* 가운데 로고 */
    .logo{
      position:absolute; left:50%; transform:translateX(-50%);
      font-weight:800; font-size:20px; letter-spacing:1px;
    }

    /* 오른쪽 회원가입/로그인 */
    .auth{display:flex; align-items:center; gap:12px; font-size:14px}
    .auth a{font-weight:500; color:var(--ink)}

    /* ---------- 네비게이션 ---------- */
    .nav{
      border-bottom:1px solid var(--line);
      background:#fff;
    }
    .nav .menu{
      display:flex; justify-content:center; gap:40px;
      padding:12px 0;
      font-size:15px; font-weight:500;
    }
   .nav .menu a{
  font-weight: 500;  /* 기본 굵은 글씨 */
  border-radius: 8px; /* 살짝 둥근 느낌 */
  padding: 4px 8px;
  color:#9ca3af;
  position:relative;
  padding-bottom:6px;
  transition:color 0.2s;
}
    .nav .menu a:hover{
      color:var(--ink); /* 호버 시 검은색 */
    }
    .nav .menu a.active{
      color:var(--ink); font-weight:700;
    }
    .nav .menu a.active::after{
      content:"";
      position:absolute; bottom:0; left:0; right:0;
      height:2px; background:var(--ink);
    }

    /* ---------- 푸터 ---------- */
    footer{margin-top:50px; border-top:1px solid var(--line); background:#fff}
.foot-wrap{display:grid; gap:16px; grid-template-columns:1.2fr 1fr; padding:24px 0}
@media (max-width:900px){ .foot-wrap{grid-template-columns:1fr} }
.links{display:flex; flex-wrap:wrap; gap:12px}
.links a{
  color:var(--ink-2);
  transition: color 0.2s;
}
.links a:hover{
  color:#94a3b8; /* 호버 시 연한 회색 */
}
.copy{color:var(--muted); font-size:14px}
  </style>
</head>
<body>

<!-- 상단 헤더 -->
<header class="topbar">
  <div class="container wrap">
    <!-- 왼쪽: 메뉴 버튼 -->
    <div class="menu-btn">
      <svg fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"/>
      </svg>
      <span>메뉴</span>
    </div>

    <!-- 가운데: 로고 -->
    <a class="logo" href="mainHomePage">
      VISITKOREA
    </a>

    <!-- 오른쪽: 회원가입 + 로그인 -->
    <div class="auth">
      <a href="${pageContext.request.contextPath}/RegistrationForm">회원가입</a>
      <a class="btn" href="${pageContext.request.contextPath}/LoginForm">로그인</a>
    </div>
  </div>
</header>

<!-- 네비게이션 메뉴 -->
<nav class="nav">
  <div class="container menu">
       <a href="${pageContext.request.contextPath}/dmpNotice">공지사항</a>
    <a href="${pageContext.request.contextPath}/dmpTravel">여행 관리</a>
    <a href="${pageContext.request.contextPath}/dmpCategory">카테고리 관리</a>
    <a href="${pageContext.request.contextPath}/dmpCustomer" class="active">회원정보 관리</a>
    <a href="${pageContext.request.contextPath}/dmpMember">고객지원</a>
    
  </div>
</nav>

<script>
  // 네비게이션 클릭 시 active 클래스 이동
  document.querySelectorAll(".nav .menu a").forEach(link => {
    link.addEventListener("click", function(e) {
      document.querySelectorAll(".nav .menu a").forEach(a => a.classList.remove("active"));
      this.classList.add("active");
    });
  });
  </script>

<!-- 푸터 -->
<footer>
<div class="container foot-wrap">
  <div>
    <div class="links" aria-label="푸터 링크">
      <a href="#">회사소개</a>
      <a href="#">이용약관</a>
      <a href="#">개인정보처리방침</a>
      <a href="#">고객센터</a>
    </div>
    <p class="copy">© 2025 VisitKorea Demo · 본 페이지는 학습·포트폴리오 용도의 정적 UI 예시입니다.</p>
  </div>
  <div style="justify-self:end; align-self:center">
    <a class="btn" href="#">맨 위로</a>
    <script>
  // "맨 위로" 버튼 클릭 시 스크롤 맨 위로 이동
  document.getElementById("scrollTopBtn").addEventListener("click", function(e){
    e.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: "smooth"  // 부드럽게 올라감
    });
  });
</script>
  </div>
</div>
</footer>


</script>

</body>
</html>
