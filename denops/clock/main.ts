import type { Entrypoint } from "jsr:@denops/std@^7.2.0";

export const main: Entrypoint = (denops) => {
  denops.dispatcher = {
    async kankore02() {
      this.Timer(30 * 60000, '長距離練習航海');
    },
    async Timer(waitMs: number, notify: string) {
      await sleep(waitMs);
      const winId = await denops.call("clock#winOpen", notify);
      console.log(winId)
      denops.cmd("!afplay /Users/higashi/Downloads/finish.wav");
      await sleep(3000);
      await denops.call("clock#winClose", winId);
    },
  };
};

const sleep = (ms: number) => new Promise(res => setTimeout(res, ms));
