use sqlx::{migrate, postgres::PgPoolOptions};
use std::error::Error;


#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    let db_url = "postgres://mutai:kibet@localhost:5432/hebspa";
    let pool = PgPoolOptions::new().connect(db_url).await?;
    migrate!("./migrations").run(&pool).await?;
    Ok(())
}



async fn pg_connect(db_url: &str) -> Result<(), Box<dyn Error>> {
    Ok(())
}
