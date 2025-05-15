# ReactJS: Lý thuyết và Thực hành

---

## 1. Giới thiệu ReactJS
### React là gì?
React là thư viện JavaScript được phát triển bởi Facebook để xây dựng giao diện người dùng. Nó tập trung vào việc chia giao diện thành các **component** độc lập, có thể tái sử dụng.

- **Lý thuyết:** React sử dụng khái niệm Virtual DOM (DOM ảo) để cải thiện hiệu năng. Thay vì thao tác trực tiếp trên DOM thật (Document Object Model), React tạo ra một bản sao DOM ảo trong bộ nhớ và chỉ cập nhật những phần cần thay đổi.
- **Ứng dụng thực tế:** React được dùng rộng rãi để xây dựng các ứng dụng web phức tạp như Facebook, Instagram, Netflix.

### SPA là gì?
- **Single Page Application (SPA):** Là ứng dụng web chỉ tải một lần duy nhất file HTML, sau đó nội dung được cập nhật động thông qua JavaScript mà không cần tải lại toàn bộ trang.
- **Ưu điểm:** Hiệu năng cao, trải nghiệm người dùng mượt mà.
- **Nhược điểm:** Không tốt cho SEO (trừ khi sử dụng các giải pháp như Server-Side Rendering).

---

## 2. JSX (JavaScript XML)
### Khái niệm JSX
JSX là cú pháp mở rộng của JavaScript, cho phép kết hợp JavaScript với HTML trong cùng một file.

```jsx
const element = <h1>Hello, world!</h1>; // Đây là JSX
```

### Khác biệt giữa JSX và HTML
- JSX sử dụng JavaScript nên có sự khác biệt:
  - Thuộc tính `class` trong HTML → `className` trong JSX.
  - Sử dụng `{}` để nhúng biểu thức JavaScript vào JSX.

### **Tại sao cần JSX?**
- **Lý thuyết:** JSX không bắt buộc, nhưng nó giúp viết code dễ đọc hơn khi làm việc với UI.
- **So sánh:** Không dùng JSX:
  ```javascript
  React.createElement('h1', null, 'Hello, world!');
  ```

---

## 3. Component & Props
### Component là gì?
- **Component-based Architecture:** React chia giao diện thành các thành phần nhỏ gọi là component. Mỗi component chịu trách nhiệm cho một phần UI và có thể tái sử dụng.

### Functional Component
- **Lý thuyết:** Functional component là hàm JavaScript trả về JSX. Nó nhẹ nhàng hơn so với Class Component truyền thống.
```jsx
function Greeting(props) {
  return <h1>Hello, {props.name}!</h1>;
}
```

### Props là gì?
- **Props (Properties):** Là cách truyền dữ liệu từ component cha sang component con.
- **Ưu điểm:** Giúp component tái sử dụng và linh hoạt hơn.

---

## 4. State & Event Handling
### State là gì?
- **Lý thuyết:** State là dữ liệu nội bộ của component, có thể thay đổi trong suốt vòng đời của component.
- **So sánh:** Props là dữ liệu từ bên ngoài (immutable), trong khi state là dữ liệu nội bộ (mutable).

```jsx
import { useState } from "react";
function Counter() {
  const [count, setCount] = useState(0);

  return (
    <button onClick={() => setCount(count + 1)}>
      Count: {count}
    </button>
  );
}
```

### Xử lý sự kiện
- **Lý thuyết:** React sử dụng các sự kiện tổng hợp (Synthetic Events), không phải sự kiện DOM thật, giúp đảm bảo tính nhất quán trên mọi trình duyệt.

---

## 5. useEffect Hook
### Lifecycle cơ bản
- **Lý thuyết:** Trong React, component có ba giai đoạn chính:
  1. Mounting (Khi component được thêm vào DOM).
  2. Updating (Khi state hoặc props thay đổi).
  3. Unmounting (Khi component bị xóa khỏi DOM).

- **useEffect:** Hook này thay thế các lifecycle method như `componentDidMount`, `componentDidUpdate`, `componentWillUnmount`.

```jsx
useEffect(() => {
  console.log("Mounted!");
  return () => console.log("Unmounted!");
}, []);
```

---

## 6. List & Key
### Duyệt mảng với `.map()`
- **Lý thuyết:** Để hiển thị danh sách, React sử dụng phương thức `.map()`. Mỗi phần tử cần có `key` duy nhất.

```jsx
const items = ["Apple", "Banana"];
items.map((item, index) => <li key={index}>{item}</li>);
```

### Key trong React
- **Key dùng để làm gì?**
  - Giúp React phân biệt các phần tử khi cập nhật DOM.
  - Dùng key sai sẽ khiến hiệu năng giảm.

---

## 7. React Router DOM
### Cách hoạt động
- **Lý thuyết:** React Router giúp xây dựng SPA bằng cách quản lý các route (đường dẫn).
- **Nested Route:** Giúp tổ chức các route con bên trong route cha.

```jsx
<Routes>
  <Route path="/" element={<Home />} />
  <Route path="/dashboard" element={<Dashboard />} />
</Routes>
```

---

## 8. Context API
### Vấn đề cần giải quyết
- Khi truyền **props quá sâu** qua nhiều tầng component (Prop Drilling), code trở nên khó quản lý.

### Context API là gì?
- **Lý thuyết:** Context API cho phép chia sẻ dữ liệu (state, function) giữa các component mà không cần truyền props.

```jsx
const ThemeContext = createContext("light");

<ThemeContext.Provider value="dark">
  <App />
</ThemeContext.Provider>
```

---

## 9. UI Framework
### Tại sao cần UI Framework?
- **Lý thuyết:** UI Framework (như TailwindCSS, Bootstrap) giúp tăng tốc phát triển giao diện và đảm bảo tính nhất quán.

### Sử dụng TailwindCSS
- **Cài đặt:**
  ```bash
  npm install -D tailwindcss
  npx tailwindcss init
  ```

- **Ví dụ:**
  ```jsx
  <div className="text-center text-xl font-bold">Hello, Tailwind!</div>
  ```

---

## 10. Deploy Project
### Cách thức deploy
1. **Build ứng dụng:**
   ```bash
   npm run build
   ```

2. **Triển khai trên Vercel hoặc Netlify:**
   - Đăng nhập vào [Vercel](https://vercel.com) hoặc [Netlify](https://netlify.com).
   - Kết nối với repository Git của bạn.
   - Triển khai chỉ với vài bước.

---

