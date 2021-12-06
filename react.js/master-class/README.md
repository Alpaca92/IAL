# Typescript with React.js

## Installation

`typescript`를 `react.js`와 사용하기 위해서는 두 가지 방법이 있다

첫번째는 처음에 template를 `ts`로 해주는 방법이고

```
$ npx create-react-app my-app --template typescript

# or

$ yarn create react-app my-app --template typescript
```

두번째는 기존에 사용중이던 `CRA`에 추가로 설치해주는 방법이다

```
$ npm i -S typescript @types/node @types/react @types/react-dom @types/jest

# or

$ yarn add typescript @types/node @types/react @types/react-dom @types/jest
```

두번째 방법에서는 설치 후 다음과 같이 실행해주면

```
$ npm start
```

알아서 `tsconfig.json`파일이 생성되는 것을 볼 수 있다

<br />
<br />

<hr />

**reference**

[Typescript with CRA](https://create-react-app.dev/docs/adding-typescript/#installation)
<br />
<br />
<br />
<br />
<br />

## Basic Syntax of Typescript

`ts`는 `js`에 `type`이라는 개념을 추가한 언어로 이를 Shape(`obj`의 형태)이라고 부른다

```ts
const plus = (a: number, b: number) => a + b;
```

`React.js`에서 주로 사용할 방식은 `props`의 `type`을 정해주는 것이므로

```ts
interface DummyShape = {
  text: string;
  number: number;
  optionProp?: string;
}

function Dummy ({text, number}: DummyShape) {
  return <h1>{text}, {number ?? 'Number is undefined'}</h1>;
}

function App () {
  return (
    <>
      <Dummy text='글자' number=0 />
    </>
  )
}
```

보통 위와 같은 방식을 사용하게 될 것이다

> 여기서 `?`는 optional이라는 뜻으로 지정된 `type`을 갖거나 `undefined`가 된다

마지막으로 `event`를 다루는 방법인데

```ts
function App() {
  const onClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    const {
      currentTarget: { value },
    } = event;

    console.log(value);
  };

  return (
    <>
      <button onClick={onClick}>click me</button>
    </>
  );
}
```

위와 같은 방식으로 다루게 되는데 해당 방식은 각기 `event`의 종류, `tag`의 종류 등의 따라 달라지니 `documentation`을 참고하도록 하자

<br />
<br />

<hr />

[SyntheticEvent](https://reactjs.org/docs/events.html)

<br />
<br />
<br />
<br />
<br />

## Combination with 'styled-components'

`typescript`의 `declaration file`인 `styled.d.ts`를 만든 후에 그 안에 `shape`을 만들어 `export`해주면 된다

```ts
// import original module declarations (.d mean declaration)
import "styled-components";

// and extend them!
declare module "styled-components" {
  export interface DefaultTheme {
    textColor: string;
    bgColor: string;
    btnColor: string;
  }
}
```

그 후 적당한 파일을 만들어 `import`한 후 원하는 것들을 작성한 후 `export`해준다

```ts
import { DefaultTheme } from "styled-components";

export const lightTheme: DefaultTheme = {
  bgColor: "white",
  textColor: "black",
  btnColor: "tomato",
};

export const darkTheme: DefaultTheme = {
  bgColor: "black",
  textColor: "white",
  btnColor: "teal",
};
```

마지막으로 `index.tsx`파일로 와서 `import`해주고 `theme`으로 넣어주기만 하면 된다

> `theme`은 본인이 작명하는 것이므로 굳이 `theme`일 필요는 없다

```ts
import { ThemeProvider } from "styled-components";
import { darkTheme, lightTheme } from "./theme";

ReactDOM.render(
  <React.StrictMode>
    <ThemeProvider theme={darkTheme}>
      <App />
    </ThemeProvider>
  </React.StrictMode>,
  document.getElementById("root")
);
```

해당 `theme`을 사용할 때에는 `${props => props.theme.bgColor}`와 같이 일반적인 `props`를 다루는 것과 동일하다

<br />
<br />

<hr />

**reference**

[styled components documentation](https://styled-components.com/docs/api#typescript)
