# Agregar Unit tests a proyectos en Rust

Para tener unit test en Rust, con cargo se vuelve mucho más simple,
se puede tener en un directorio separado o incluido en el mismo modulo.

## Ejecutar unit tests con Cargo

`cargo test` por defecto ejecutará las funciones con el atributo `#[test]`,
tanto en el mismo modulo o en el directorio `tests/`:

```
src
 |-- main.rs
 |-- lib.rs
tests
 |-- my_test.rs
```

## Creando funciones tests

```rust
use unit_tests::*;

#[test]
fn test_sum() {
    assert!( my_sum(1, 1) == 2 );
}

#[test]
fn test_mul() {
    assert!( my_mul(2, 2) == 4 );
}
```

Teniendo en cuenta que el directorio raíz es el nombre del crate, por ejemplo
`unit_tests`, por eso si tenemos que usar funciones en el directorio `src/`,
debemos incluir `use unit_tests::*;`.

De la misma forma todas las funciones deben tener el atributo `#[test]`.

## Enlaces

* [Atributo test en funciones Rust](https://doc.rust-lang.org/reference/attributes/testing.html)
* [Ejemplos unit test en Rust](https://doc.rust-lang.org/rust-by-example/testing.html)
* [Writing Automated Tests](https://doc.rust-lang.org/book/ch11-00-testing.html)
