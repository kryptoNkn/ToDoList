using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDoList.Models
{
    class ToDoModel: INotifyPropertyChanged
    {
        public DateTime creationDate { get; set; } = DateTime.Now;

        private bool isDone;
        private string text;

        public bool IsDone
        {
            get { return isDone; }
            set 
            {
                if(isDone == value)
                    return;
                isDone = value; 
                OnPropertyChanged("IsDone");
            }
        }
        public string Text
        {
            get { return text; }
            set 
            {
                if(text == value) 
                    return;
                text = value; 
                OnPropertyChanged("Text");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
