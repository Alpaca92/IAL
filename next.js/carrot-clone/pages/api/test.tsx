import { NextApiRequest, NextApiResponse } from "next";
import client from "../../libs/client";

export default async function test(req: NextApiRequest, res: NextApiResponse) {
  await client.user.create({
    data: { name: "some name" },
  });

  res.json({ ok: true });
}
