using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToDoList.Models;

namespace ToDoList.Services
{
    class FileIOService
    {
        private readonly string _path;

        public FileIOService(string path)
        {
            _path = path;
        }

        public BindingList<ToDoModel> LoadData()
        {
            var fileExist = File.Exists(_path);
            if (!fileExist)
            {
                File.CreateText(_path).Dispose();
                return new BindingList<ToDoModel>();
            }
            using (var reader = File.OpenText(_path))
            {
                var fileText = reader.ReadToEnd();
                return JsonConvert.DeserializeObject<BindingList<ToDoModel>>(fileText);
            }
        }

        public void SaveData(object todoDataList)
        {
            using (StreamWriter writer = File.CreateText(_path))
            {
                string output = JsonConvert.SerializeObject(todoDataList);
                writer.WriteLine(output);
            }
        }
    }
}
