use sqlx::postgres::PgPoolOptions;


#[tokio::main]
async fn pg_connect(db_url: &str) -> Result<(), sqlx::Error> {
    let _pool = PgPoolOptions::new().connect(db_url).await?;
    Ok(())
}
