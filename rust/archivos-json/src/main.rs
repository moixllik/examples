use json;
use serde::{Serialize, Deserialize};

#[derive(Serialize, Deserialize, Debug, PartialEq)]
struct Data {
    ok: bool,
    year: i32
}

fn main() {
    let parsed = json::parse(r#"
{"ok": true, "year": 2023}
    "#).unwrap();
    let instantiated = json::object!{
        ok: true,
        year: 2023
    };

    assert_eq!(parsed, instantiated);
    println!("Crate => json");

    let data = Data {
        ok: true, year: 2023
    };
    let serialized = serde_json::to_string(&data).unwrap();
    let deserialized: Data = serde_json::from_str(&serialized).unwrap();
    
    assert_eq!(data, deserialized);
    println!("Crate => serde, serde_json");
}
