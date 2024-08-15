# interface vs type alias

```ts
// type alias
type User = {
  id: string;
  name: string;
};

// interface
interface User {
  id: string;
  name: string;
}
```

위와 같이 타입 별칭과 인터페이스는 언뜻 보기에는 동일한 역할을 수행하는 것으로 보인다

이제 어떠한 차이가 있는지 자세히 알아보자

## vscode에서 표기해주는 방식의 차이

타입 별칭의 경우 어떠한 타입과 연결되어 있는지 알려주는 반면, 인터페이스의 경우에는 타입의 구체적인 내용을 알려준다

## 사용할 수 있는 타입의 차이

<!-- TBD: 152(book: 150) -->
