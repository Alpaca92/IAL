import styled from "styled-components";
import { useState } from "react";

interface CircleProps {
  bgColor: string;
  borderColor?: string;
}

const Container = styled.div<CircleProps>`
  width: 200px;
  height: 200px;
  background-color: ${(props) => props.bgColor};
  border-radius: 50%;
  border: 1px solid ${(props) => props.borderColor};
`;

function Circle({ bgColor, borderColor }: CircleProps) {
  const [value, setValue] = useState<number | string>(0);

  return <Container bgColor={bgColor} borderColor={borderColor ?? "yellow"} />;
}

export default Circle;
