using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class MusicMgr : BaseManager<MusicMgr>
{
    private List<AudioClip> audioClips = new List<AudioClip>();
    //唯一的背景音乐组件
    private AudioSource bkMusic = null;
    //音乐大小
    private float bkValue = 1;

    //音效依附对象
    public GameObject soundObj = null;
    //音效列表
    private List<AudioSource> soundList = new List<AudioSource>();
    //音效大小
    private float soundValue = 1;

    public MusicMgr()
    {
        MonoMgr.Getinstance().AddUpdateListener(Update);
    }
    public void init(GameObject audio_obj) 
    {
        bkMusic = audio_obj.AddComponent<AudioSource>();
    }
    /// <summary>
    /// 预加载音频
    /// </summary>
    public void PreLoadRes()
    {
        GameDate gameDate = GameDate.Getinstance();
        ResMgr resMgr = ResMgr.Getinstance();
        AudioClip[] _audioClips = resMgr.LoadAll<AudioClip>(gameDate.soundUrl);
        foreach (var item in _audioClips)
        {
            audioClips.Add(item);
        }
    }
    private void Update()
    {
        for (int i = soundList.Count - 1; i >= 0; --i)
        {
            if (!soundList[i].isPlaying)
            {
                GameObject.Destroy(soundList[i]);
                soundList.RemoveAt(i);
            }
        }
    }
    // 通过名称从AudioClip列表中提取值
    public AudioClip GetAudioClipByName(string clipName)
    {
        return audioClips.Find(clip => clip.name == clipName);
    }
    /// <summary>
    /// 播放背景音乐
    /// </summary>
    /// <param name="name"></param>
    public void PlayBkMusic(string name)
    {
        if (bkMusic == null)
        {
            GameObject obj = new GameObject();
            obj.name = "BkMusic";
            bkMusic = obj.AddComponent<AudioSource>();
        }
        AudioClip clip = GetAudioClipByName(name);
        if (!clip) return;
        bkMusic.clip = clip;
        bkMusic.loop = true;
        bkMusic.volume = bkValue;
        bkMusic.Play();
   /*     //异步加载背景音乐 加载完成后 播放
        ResMgr.Getinstance().LoadAsync<AudioClip>("Music/BK/" + name, (clip) =>
        {
          
        });*/

    }

    /// <summary>
    /// 暂停背景音乐
    /// </summary>
    public void PauseBKMusic()
    {
        if (bkMusic == null)
            return;
        bkMusic.Pause();
    }

    /// <summary>
    /// 停止背景音乐
    /// </summary>
    public void StopBKMusic()
    {
        if (bkMusic == null)
            return;
        bkMusic.Stop();
    }

    /// <summary>
    /// 改变背景音乐 音量大小
    /// </summary>
    /// <param name="v"></param>
    public void ChangeBKValue(float v)
    {
        bkValue = v;
        if (bkMusic == null)
            return;
        bkMusic.volume = bkValue;
    }

    /// <summary>
    /// 播放音效
    /// </summary>
    public void PlaySound(string name, bool isLoop,bool rotationSound=false, UnityAction<AudioSource> callBack = null)
    {
        if (soundObj == null)
        {
            soundObj = new GameObject();
            soundObj.name = "Sound";
        }
        AudioClip clip = GetAudioClipByName(name);
        if (!clip) return;
        AudioSource source = soundObj.GetComponent<AudioSource>();
        if (!source) {
             source = soundObj.AddComponent<AudioSource>();
        }
        if (rotationSound && source.isPlaying)
        {
            source.Stop();
        }
        source.clip = clip;
        source.loop = isLoop;
        source.volume = soundValue;
        source.Play();
        soundList.Add(source);
        if (callBack != null)
            callBack(source);
       /* //当音效资源异步加载结束后 再添加一个音效
        ResMgr.Getinstance().LoadAsync<AudioClip>("Music/Sound/" + name, (clip) =>
        {
          
        });*/
    }

    /// <summary>
    /// 改变音效声音大小
    /// </summary>
    /// <param name="value"></param>
    public void ChangeSoundValue(float value)
    {
        soundValue = value;
        for (int i = 0; i < soundList.Count; ++i)
            soundList[i].volume = value;
    }

    /// <summary>
    /// 停止音效
    /// </summary>
    public void StopSound(AudioSource source)
    {
        if (soundList.Contains(source))
        {
            soundList.Remove(source);
            source.Stop();
            GameObject.Destroy(source);
        }
    }
}
