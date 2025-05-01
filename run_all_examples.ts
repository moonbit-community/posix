import * as fs from 'node:fs';
import cp from "node:child_process";
import { exit } from 'node:process';

let clean_example_env = () => {
  try {
    fs.rmSync("tmp", {
      recursive: true,
      force: true
    })
  } catch {
    // ignore errors
  }
}

let lorem = "Lorem ipsum odor amet, consectetuer adipiscing elit."
let build_example_env = () => {
  try {
    fs.mkdirSync("tmp")
    let fd = fs.openSync("tmp/input.txt", "w")
    fs.writeSync(fd, lorem)
    fs.closeSync(fd)
  } catch {
    // ignore errors
  }
}

let exe_path = (name: string): string => {
  return `./target/native/release/build/examples/${name}/${name}.exe`
}
let main = () => {
  // cp.execSync("moon build --target native")
  let progs = fs.readdirSync("src/examples", {
    withFileTypes: true
  }).filter((x) => x.name !== "35-pause")

  clean_example_env()

  for (let prog of progs) {
    build_example_env()
    try {
      console.log(`running: ${prog.name}`)
      let output = cp.execSync(exe_path(prog.name))
      console.log(output.toString())
    }
    catch {
      console.log("execute error")
      exit(-1)
    }
    clean_example_env()
  }
}
main()