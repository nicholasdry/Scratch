from tkinter import *

master = Tk()

def callback():
	print("Click!")

b = Button(master, text="OK", command=callback)

b.pack()

mainloop()
