using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class MusicMgr : BaseManager<MusicMgr>
{
    private List<AudioClip> audioClips = new List<AudioClip>();
    //Ψһ�ı����������
    private AudioSource bkMusic = null;
    //���ִ�С
    private float bkValue = 1;

    //��Ч��������
    public GameObject soundObj = null;
    //��Ч�б�
    private List<AudioSource> soundList = new List<AudioSource>();
    //��Ч��С
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
    /// Ԥ������Ƶ
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
    // ͨ�����ƴ�AudioClip�б�����ȡֵ
    public AudioClip GetAudioClipByName(string clipName)
    {
        return audioClips.Find(clip => clip.name == clipName);
    }
    /// <summary>
    /// ���ű�������
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
   /*     //�첽���ر������� ������ɺ� ����
        ResMgr.Getinstance().LoadAsync<AudioClip>("Music/BK/" + name, (clip) =>
        {
          
        });*/

    }

    /// <summary>
    /// ��ͣ��������
    /// </summary>
    public void PauseBKMusic()
    {
        if (bkMusic == null)
            return;
        bkMusic.Pause();
    }

    /// <summary>
    /// ֹͣ��������
    /// </summary>
    public void StopBKMusic()
    {
        if (bkMusic == null)
            return;
        bkMusic.Stop();
    }

    /// <summary>
    /// �ı䱳������ ������С
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
    /// ������Ч
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
       /* //����Ч��Դ�첽���ؽ����� �����һ����Ч
        ResMgr.Getinstance().LoadAsync<AudioClip>("Music/Sound/" + name, (clip) =>
        {
          
        });*/
    }

    /// <summary>
    /// �ı���Ч������С
    /// </summary>
    /// <param name="value"></param>
    public void ChangeSoundValue(float value)
    {
        soundValue = value;
        for (int i = 0; i < soundList.Count; ++i)
            soundList[i].volume = value;
    }

    /// <summary>
    /// ֹͣ��Ч
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
