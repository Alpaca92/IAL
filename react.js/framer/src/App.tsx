import { AnimatePresence, motion } from "framer-motion";
import styled from "styled-components";
import { useState } from "react";

const Wrapper = styled(motion.div)`
  display: grid;
  grid-template-columns: repeat(20, minmax(100px, 1fr));
  column-gap: 10px;
  overflow-x: ;
`;

const Box = styled.div`
  background-color: #555;
  height: 100px;
`;

const WrapperVariants = {
  initial: { x: 0 },
  move: (page: number) => ({ x: page }),
};

function App() {
  const [page, setPage] = useState(0);

  return (
    <div>
      <Wrapper
        custom={page}
        variants={WrapperVariants}
        initial="initial"
        animate="move"
      >
        {[
          1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        ].map((num) => (
          <Box>{num}</Box>
        ))}
      </Wrapper>
      <button
        onClick={() => {
          setPage((prev) => prev - 110);
        }}
      >
        {"<<<"}
      </button>
      <button
        onClick={() => {
          setPage((prev) => prev + 110);
        }}
      >
        {">>>"}
      </button>
    </div>
  );
}

export default App;
