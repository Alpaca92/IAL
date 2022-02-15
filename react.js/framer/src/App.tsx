import styled from "styled-components";
import { AnimatePresence, motion } from "framer-motion";
import { useState } from "react";

const Wrapper = styled.div`
  width: 100vw;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`;

const Box = styled(motion.div)`
  width: 400px;
  height: 200px;
  background-color: rgba(200, 200, 200, 1);
  border-radius: 40px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 24px;
  /* position: absolute; */
  top: 100px;
  box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1), 0 10px 20px rgba(0, 0, 0, 0.06);
`;

const box = {
  entry: (back: boolean) => ({
    x: back ? -500 : 500,
    opacity: 0,
    scale: 0,
  }),
  center: {
    x: 0,
    opacity: 1,
    scale: 1,
    transition: {
      duration: 0.2,
    },
  },
  exit: (back: boolean) => ({
    x: back ? 500 : -500,
    opacity: 0,
    scale: 0,
    transition: {
      duration: 0.3,
    },
  }),
};

function App() {
  const [back, setBack] = useState(false);
  const [visible, setVisible] = useState(1);
  const nextBtn = () => {
    setBack(false);
    setVisible((prev) => (prev === 10 ? 1 : ++prev));
  };
  const prevBtn = () => {
    setBack(true);
    setVisible((prev) => (prev === 1 ? 10 : --prev));
  };

  return (
    <Wrapper>
      <AnimatePresence exitBeforeEnter custom={back}>
        <Box
          custom={back}
          variants={box}
          initial="entry"
          animate="center"
          exit="exit"
          key={visible}
        >
          {visible}
        </Box>
      </AnimatePresence>
      <button onClick={nextBtn}>next</button>
      <button onClick={prevBtn}>prev</button>
    </Wrapper>
  );
}

export default App;
