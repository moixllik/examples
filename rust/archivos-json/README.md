# Usando archivos JSON en Rust

Los archivos JSON (JavaScript Object Notation) como un estándar para el intercambio de información es muy usada en Internet. Por tal motivo, Rust cuenta con varias librerías para su manipulación.

## Librerias

De forma muy especifica tenemos en Crates la librería `cargo add json`.

Una librería muy usada en la serialización es `cargo add serde serde_json -F serde/derive`.

```rust
use serde::{Serialize, Deserialize};

#[derive(Serialize, Deserialize, Debug, PartialEq)]
struct Data {
    ok: bool,
    year: i32
}
let data = Data {
    ok: true, year: 2023
};
let serialized = serde_json::to_string(&data).unwrap();
let deserialized: Data = serde_json::from_str(&serialized).unwrap();
assert_eq!(data, deserialized);
```

## Enlaces

* [ECMA-404 The JSON Data Interchange Standard](https://www.json.org/json-en.html)
* [JSON implementation in Rust](https://crates.io/crates/json)
* [Serde. A generic serialization/deserialization framework](https://crates.io/crates/serde)
