// typescript test

// 映射类型
type Record<K extends keyof any, T> = {
  [P in K]: T;
}


// keyof
// in
// Record
