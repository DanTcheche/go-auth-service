package main

func main() {
    db, err := connectDB()
    if err != nil {
        log.Fatal(err)
    }
    defer db.Close()
}