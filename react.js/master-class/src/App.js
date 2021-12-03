import styled, { keyframes } from "styled-components";

const Wrapper = styled.div`
  display: flex;
`;

const Emoji = styled.span`
  font-size: 40px;
`;

const lotationAnimation = keyframes`
  0% {
    transform: rotate(0deg);
    border-radius: 0%;
  }
  50% {
    transform: rotate(180deg);
    border-radius: 50%;
  }
  100% {
    transform: rotate(360deg);
    border-radius: 0%;
  }
`;

const Box = styled.div`
  width: 200px;
  height: 200px;
  background-color: tomato;
  animation: ${lotationAnimation} 1s linear infinite;
  display: flex;
  justify-content: center;
  align-items: center;

  ${Emoji} {
    &:hover {
      font-size: 100px;
    }
  }
`;

function App() {
  return (
    <>
      <Wrapper>
        <Box>
          <Emoji as="p">🤔</Emoji>
        </Box>
      </Wrapper>
    </>
  );
}

export default App;
