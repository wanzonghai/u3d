using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public interface IResourcesLoadingMode
{
    void ResourcesLoading<T>(T t, string path, bool IsAsync) where T : UnityEngine.Object;
    void ResourcesUnLoading<T>(T t) where T : UnityEngine.Object;
}

public interface IUserData{
    string Username { get; set; }
    int Score { get; set; }

    void SaveUserData();
    void LoadUserData();
}

public interface IComSetData
{
    bool IsAgree { get; set; }
    bool IsOpen { get; set; }
}



