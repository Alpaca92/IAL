import styled from "styled-components";

const Father = styled.div`
  display: flex;
`;

const Box = styled.div`
  background-color: ${(props) => props.bgColor};
  width: 100px;
  height: 100px;
`;

const Circle = styled(Box)`
  border-radius: 50%;
`;

const Btn = styled.button`
  background-color: tomato;
  border: 0;
  border-radius: 5px;
`;

const Input = styled.input.attrs({ required: true })`
  background-color: tomato;
`;

function App() {
  return (
    <>
      <Father>
        <Input />
        <Input />
        <Input />
        <Input />
        <Input />
        <Input />
      </Father>
    </>
  );
}

export default App;
