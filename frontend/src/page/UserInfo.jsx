// import logo from './logo.svg';
import '../App.css';

function App() {
  return (
<body>
    <header>
      <link rel="stylesheet" href="/css/webtoon_test.css" />
      <h1>계정 정보</h1>
      <nav>
        <ul>
          <li><a href="/">홈</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <link rel="stylesheet" href="/css/login&register.css" />
      <div class="userinfo-wrapper">
        <h2>User Information</h2>

        <p>
          <strong>ID:</strong> <span id="user-id"></span><br />
          <strong>Name:</strong> <span id="user-name"></span>
        </p>
        <button id="changePwBtn">비밀번호 변경</button>

        <form
          method="POST"
          action="http://34.145.65.5:46351/api/user_update"
          id="changePw-form"
          style="display: none; margin-top: 20px"
        >
          <input
            type="password"
            name="originalPw"
            placeholder="현재 비밀번호 입력..."
            required
          />
          <input
            type="password"
            name="newPw"
            placeholder="새로운 비밀번호 입력..."
            required
          />
          <input type="submit" value="비밀번호 변경" />
          <script src="/js/change_password.js"></script>
        </form>

        <script src="/js/user_info.js"></script>
      </div>
    </main>
  </body>
  );
}

export default App;