import { useRouter } from "next/router";

export default function Detail() {
  const {
    query: { id, title },
  } = useRouter();

  return <div>{`id: ${id}, title: ${title}`}</div>;
}
