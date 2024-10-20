let x = 10, y = 20, z = null;
const a = true, b = false, c = 123n, d = "Hello", e = `World ${x + y}`;

const sum = (a, b) => a + b;

const obj = {
    get value() { return x; },
    set value(val) { x = val; },
    [a ? 'keyTrue' : 'keyFalse']: 42,
    method() { return this.value; }
};

class MyClass extends SuperClass {
    static staticMethod() {
        return typeof this;
    }
    async method() {
        try {
            await new Promise((resolve, reject) => setTimeout(resolve, 1000));
            return this.value;
        } catch (e) {
            console.error(e);
        } finally {
            console.log("done");
        }
    }
}

if (x < y) {
    switch (x) {
        case 10:
            x++;
            break;
        default:
            x += 2;
    }
}

for (let i = 0; i < 10; i++) {
    if (i % 2 === 0) continue;
    console.log(i);
}

while (x < 20) x += 1;

do {
    x -= 1;
} while (x > 0);

function compute(val = null) {
    return (val ?? 0) * 2;
}

const result = compute(obj?.method?.() ?? 1);

const regex = "/hello|world/gi";
const bitwiseResult = (x & y) | (x ^ z);

try {
    throw new Error("Error occurred");
} catch (err) {
    console.error(err.message);
} finally {
    console.log("Error handling complete");
}

const { value, ...rest } = obj;
const arr = [1, 2, 3];
const newArr = [...arr, 4, 5, 6];

import { something } from 'module';
export const exportedFunc = () => sum(a, b);

