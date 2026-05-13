from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from pydantic import BaseModel
from database import Base, Todo, engine, get_db

Base.metadata.create_all(bind=engine)

app = FastAPI(title="Todo API")

class TodoCreate(BaseModel):
    title: str

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/todos")
def get_todos(db: Session = Depends(get_db)):
    return db.query(Todo).all()

@app.post("/todos", status_code=201)
def create_todo(todo: TodoCreate, db: Session = Depends(get_db)):
    db_todo = Todo(title=todo.title)
    db.add(db_todo)
    db.commit()
    db.refresh(db_todo)
    return db_todo

@app.put("/todos/{todo_id}/toggle")
def toggle_todo(todo_id: int, db: Session = Depends(get_db)):
    todo = db.query(Todo).filter(Todo.id == todo_id).first()
    if not todo:
        raise HTTPException(status_code=404, detail="Todo niet gevonden")
    todo.done = not todo.done
    db.commit()
    return todo

@app.delete("/todos/{todo_id}", status_code=204)
def delete_todo(todo_id: int, db: Session = Depends(get_db)):
    todo = db.query(Todo).filter(Todo.id == todo_id).first()
    if not todo:
        raise HTTPException(status_code=404, detail="Todo niet gevonden")
    db.delete(todo)
    db.commit()