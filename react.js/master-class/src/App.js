import styled from "styled-components";

const Father = styled.div`
  display: flex;
`;

const Box = styled.div`
  background-color: teal;
  width: 100px;
  height: 100px;
`;

const BoxTwo = styled.div`
  background-color: tomato;
  width: 100px;
  height: 100px;
`;

function App() {
  return (
    <>
      <Father>
        <Box></Box>
        <BoxTwo></BoxTwo>
      </Father>
    </>
  );
}

export default App;
